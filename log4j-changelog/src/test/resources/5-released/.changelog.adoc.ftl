<#--
  Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements. See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to You under the Apache License, Version 2.0
  (the "License"); you may not use this file except in compliance with
  the License. You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->
<#if entriesByType?size gt 0>== Changes
<#list entriesByType as entryType, entries>

=== ${entryType?capitalize}

<#list entries as entry>
* ${entry.description.text?replace("\\s+", " ", "r")}<#if entry.issues?has_content> [<#list entry.issues as issue>${issue.link}[${issue.id}]<#if issue?has_next>, </#if></#list>]</#if><#if entry.authors?has_content> (<#list entry.authors as author><#if author.id?has_content>@${author.id}<#else>${author.name}</#if><#if author?has_next>, </#if></#list>)</#if>
</#list>
</#list>
</#if>
