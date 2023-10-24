Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A47457D5C13
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 22:03:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29FA284C9F;
	Tue, 24 Oct 2023 20:03:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29FA284C9F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698177788;
	bh=kuMMVOrXOCAJPnL3wmSn+OdZRkG8bZq4KEbEoKkUJJI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FdssphH3/3OC6WXcesizdqBSw1rbqvU+SfRHFUBzKXuIVK0Y042RQGSFWcwoV/j+6
	 wYguzx0dp390TWKkWtrMYkqx0gbUlRpn4yrNDNvKKB0SCP0L6jgNNcKhtTiA7GRIX4
	 iuRQzfRI10Wtrm7juyBDLdsIL3yRVi3HApPW+/c/9+1bewCi91ruS71vz649UR9P/5
	 LVGlcTjUeALgUuD8c1RDBnvfBima/V8JnLWLeaXsOg2kYzkRqYgJbrrZFKxw5GLqm5
	 JtQ0wQhOKD+vdZ/wt7wz/AB2HfyvK/ER1n8UBe12EaqwNfUndgXjBptRweexL8TKRA
	 4ut9PS5sjVd0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9c2Kdz9UtIbe; Tue, 24 Oct 2023 20:03:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C585984CA1;
	Tue, 24 Oct 2023 20:03:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C585984CA1
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DB1F1BF419
 for <intel-wired-lan@osuosl.org>; Tue, 24 Oct 2023 20:03:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 03E6284C9E
 for <intel-wired-lan@osuosl.org>; Tue, 24 Oct 2023 20:03:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03E6284C9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iu5r_X45tpcf for <intel-wired-lan@osuosl.org>;
 Tue, 24 Oct 2023 20:03:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F03C884C9B
 for <intel-wired-lan@osuosl.org>; Tue, 24 Oct 2023 20:03:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F03C884C9B
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="377530361"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="377530361"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 13:02:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="735136944"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="735136944"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 13:02:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 13:02:57 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 13:02:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 13:02:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 13:02:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n2dyVNPf2GhpekZRWXJfC2kH9282ylvYPeDg1HBhaRiiD3u7oKrKy/YJfFMIv5cykEqFR4Xt1Wik938/jL5koauOoY9mF1cfZpSzSkWaBhnSCHAKKVL5VYGumX6p7ENFvEwdHCB+g0MTnoB6b3yr9PcwNiWwl0tjJBk0yrKF7MPp/Vr8FMgoF0oPc0r7x8TNfjtfvkER2rRN15OKQVZeHSPcUtpGNps9t0rVZktv0aYG8WQZue9j7qMNdeTjbzXp9HCJDqg2F23jwnVDhqtd0zXF9QAnYQ7OSF6n1zGVHy9D/NXzZ+a0tDJLzSDrUIRXxCTWY2jDdslH7nwPnZFU4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0/mUk6wANM7HAYHr+Rz4nSUkuls6fzqOoJLTjq/Nj48=;
 b=Q9APNWn0tIo6R8kNHs4uqDyXgkU9MCtDup86LAPDA3qNKNxFjKb+eAsyUIMl+DHMc31g90o1gWcom2SgzcamOaAQd+7LN3fyY+6S1yHeqYkwBkMdG3UrgP5BKZP0VyiycooRHi+0Aq7W+vEEmmYcHythIpF8W7hallo8Q6XIwlSSmJBCD6YBl2hnnDECQRmA7I/4as868BM7PDI4mxWtIpanG8alpEDovG2wslfvjy0WtZSQf+yTiTjCYdBe2ow1Az+664ZG0PuTOkU0dNOoWRS5LTsoXnmsnGcf58er/OgxEKRLw/Lf2dzBgDbgwxsBNDP613TtexOMAQpQ6/jDiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA1PR11MB6146.namprd11.prod.outlook.com (2603:10b6:208:3ee::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Tue, 24 Oct
 2023 20:02:53 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::f216:6b2b:3af0:35c1]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::f216:6b2b:3af0:35c1%4]) with mapi id 15.20.6907.032; Tue, 24 Oct 2023
 20:02:53 +0000
Message-ID: <9bc52235-0693-4273-a2d5-9f48157a1b39@intel.com>
Date: Tue, 24 Oct 2023 13:02:51 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231023162928.245583-1-ivecera@redhat.com>
 <20231023162928.245583-3-ivecera@redhat.com>
 <2aba9a2d-9dfd-49f2-bfec-1ff563a5f017@intel.com>
 <d71f2fa2-e5b7-4221-bbd0-86285b6c1c33@redhat.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <d71f2fa2-e5b7-4221-bbd0-86285b6c1c33@redhat.com>
X-ClientProxiedBy: MW4P221CA0021.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::26) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA1PR11MB6146:EE_
X-MS-Office365-Filtering-Correlation-Id: dba312d0-c27c-493c-4317-08dbd4cc351d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EYUh9rkPUXChS5kHhaz/HA38yklVYtcg2m75NTYYrQubQh4egNSaMlZRmxC3sPDvO6ADxB9WxH0LjdZdtS0FbXnk2jIfrVIV8x6ByhgzL03ZL2ZWPuCqx7Pe16Mmt2rYHsRICpSikr2HSXMHbKnPbxi7I8GZuU8bqxx8F8z63pjZqFdRpZZ/Sb11i6CBIi+699zy6DYjIXa0yyZTUi+oO34YAmmkcWcjOR8XsBHQIbZ42a/hxMbPG1Xph4K8RUFHwWcFCbYeGZgFYvDL60atxudeVcq65GyjjPZbP/7mthLEox44SC4MHwip+Y5Sni2TGk0e5erp8P7sqA2okywhlMm//WTm8vDHu8DjdlOBTSz4jyMN0UROzTbTO8z3YlcvUElBS3F6vyT2yVnWUx6d4me8JLs0tOIvAs4NtGiFK+JCkDM6mM6pbCXxnQv5kQDsMazsQtg0LlfJzHeQwQLWoev7PBa5HJOfa6oAyiYE6DqtbcQNt4NY7ha80q9jPaNMGPl92tYd6/ggtdiQLgBhILFiZNFRXQog5s5RmF8W/GpaaWxit39PXBaVHRVwPViqg34kV9jrBnaRyxhZROILzyTQ50KNzQ6n+VWF+SZNaffo8tT/CrT/pI85sxapOoklKTNZhxbUvGECBraukw+kpg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(39860400002)(136003)(396003)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(36756003)(478600001)(6512007)(86362001)(31696002)(6486002)(53546011)(5660300002)(31686004)(6506007)(2906002)(38100700002)(83380400001)(2616005)(6916009)(41300700001)(316002)(66946007)(66556008)(66476007)(82960400001)(8936002)(8676002)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bDh5TTJwRGplOWordTZ3c3hyeTIvZFcvb0hNT1lFOFp3SFppYzNqdmM1MUZO?=
 =?utf-8?B?U3cxNDVCSVJFNy9uZktzSmNPTTYrcU45L2JGZGFNb092UklRQTN5bVg2N3hm?=
 =?utf-8?B?TlZyTVZBeE1YWTBldktTSFNTWnpxdmVaM1dQOUN3NXA3MGNhTzVkMTBXempY?=
 =?utf-8?B?Nnlsa1prVkZvR1YwYjlhdHl1cTRKV1V3aWovTm5xUHYrTStwUnpVYkhjUUNO?=
 =?utf-8?B?YTI0Zk96NUpZUnI4dXJFdXlvdTNuTFpFc0ZKbHNGMlhHVm80UlZyRnN3UzJM?=
 =?utf-8?B?WlJ2VUNVWUVobU9EVGp6SmYvK2p3VEt4ZE5BTXFRM2djT1FPZzl1TzR5U3pL?=
 =?utf-8?B?akhMZ0lsM1hCMHVCRlRqRzJCcDZrNDFCYjFnWmJVbFdjQVZWZHpCMm9SWmFI?=
 =?utf-8?B?ZXhwV2U4d2RsbmRvaHd5SVNJZGVXaFNxL09EbjJlN2tNY2Y4S0QrS0V6VkJ6?=
 =?utf-8?B?ZVBUZ2s5WTZ3TzhXQ2NBNzB4ZHVzVkpwSDJwNi9HOFVGK1RzZTZONkFmWTdv?=
 =?utf-8?B?dTR3YnFqT2tYYVB3V3N6TXBld3cvaWJJTDhaVndTaGIvQm10bWVVRDlNZWNI?=
 =?utf-8?B?UmI5T3gza0lGVVRDSXhJNll6T05ENm5CL2Via3RXOElNS1B2RmQ5M1dnd0w1?=
 =?utf-8?B?Y3FjVHpzbkREVWFMazdWTHpZNUZ3SytPeWFZemY1dTBDaFpjbnNsVFh4Z1VR?=
 =?utf-8?B?S1E2R2NiWklwREtqUTdmelhxMEdyUUlmUUUrSDd0TEV0V0JoSmhJb0ZSajZu?=
 =?utf-8?B?eXdHZXBManVqcWhWQU5Odm1WZGRNb01sZzJMWWFlU1NvM2VtRUhFTnV3NCtN?=
 =?utf-8?B?cmxQSCtjY2s5WGF2dnRLUytKZ09IZHRjUWxHUm80K1BEWXA2TFF6RDl1ZUpk?=
 =?utf-8?B?SjFpV0xpRmxsdGxlMkt2UEdGd21pZEhLWi9rNzFmMkVIOGQ2YW1vZU9LdHY0?=
 =?utf-8?B?K2NkeENBd0VYbGVHUHNuRjA3MEViZSt6Yk94KzB1dzFHK0hoQ3FUUkZ5ZmVo?=
 =?utf-8?B?SGQzWkhzalNxK0V6aWdpVUFnSjVldkdrTU1tQlFQb3RwVGV4eEcxZC9Qek9p?=
 =?utf-8?B?YTJBNDNXbjdpUHdrdmRqZDlaWmRQWlBUK1NRYTZVWWJHSjdjMnMxZzdzSmhq?=
 =?utf-8?B?UGlwY0F0NGdlUHpOWXlXeEZldHdEQ0xxTFFONncrZW44NUFmQXNmTk1RcDRV?=
 =?utf-8?B?UU5qcFRoV2w0YjIvZEdmZm9wMklEMERGVXAxaW1OdkE3Z3dRSWdCRHMrNUY3?=
 =?utf-8?B?WXpKZnpuQVpKTmNzK0dIdnoxbVZxMGRCRjlsM0lGZVUwMDlqRyttdkFENHEv?=
 =?utf-8?B?NENQOVQ5cExSb2NEK1l6WnhMRkZsN1l5c3JjREQzMWtocnVBdW9JT2k1MjZG?=
 =?utf-8?B?YW5Ec3p2UGU3aS9BSEFoS3R6QjdZQU9xWlc3c3g0bU10R0RjQTNGNFB0OFlU?=
 =?utf-8?B?ZTM1eXovNHJTM1duejlyZUUzMXlEY21Zb21jNlVkcFlSZWk3ZzV2OFRwdlkz?=
 =?utf-8?B?T0w1K3ZyT01LV3A0TVY4My9seldUV004Q0V0c1FVcnBmWUtYblJJcm1SOExN?=
 =?utf-8?B?ektSVnhIcW1BK1NBZ1NKc0M3QU55aWlhK0VSMHlLTGdWUk9CSEdKQlFGZ3BZ?=
 =?utf-8?B?R0xRekRvUGMreDV5cjQwa1pWK1B1NHMreXVacHFqK1hwMnNrRE1pK1ZsZ25G?=
 =?utf-8?B?TnBIMkNGYm1jaXZQRnh0dDRFdkpmQWpFamZGYkoyZjREajJNRzFIVnFhc1Ji?=
 =?utf-8?B?MDdOWnJrU21VcUdDbWhnYXc0cXU0NzdrdUNlS0UxSFJPOGV0ZWdvQkh5OVl4?=
 =?utf-8?B?QzJnWThQMGZOK0lwa2VnNDJIc3NkWlNQNFpmMkkvbWd2Qi9sZk1jWm9UT2Fi?=
 =?utf-8?B?VU9RejN2VjBHdGQyQU5zeS9MdWR2Z0tmRHdqTFJDWWlvc2ZHWEF4aVdXY01N?=
 =?utf-8?B?bEF1QXREQzJUSnl2bURJS1VMYXJtaGRsVVVuV0dLSEhTTy9PNVhBOHZ6Nkto?=
 =?utf-8?B?YmNPVjMzU1AvNUtXUFBDMXkzRUtxQUFlMmErNnFFbk4yTStuQXgvbkFCWDBu?=
 =?utf-8?B?eEVDeUtQcndPZG5PUWttM0t3RVBxNUFVWW5VTDBueXpEa2d2OXUzczdGZ3BQ?=
 =?utf-8?B?UUVOS3ZhSVVGRmd6QWJpd0FxZkYvaS9aTDZMcTN0bFFOWUt5ZWE2SEJxdkVy?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dba312d0-c27c-493c-4317-08dbd4cc351d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2023 20:02:53.4170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iVq++EvfyHpnm+JX2WbczJgRe+tx4GZHSyYSZAdLz9WCadTEXFZWy7dZoMniUoShSvpA4Hk4EpYZyeeFkfM2OKQbfq2THVfLWUm2Bw0UaC4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6146
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698177780; x=1729713780;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=67dQjTvSUWL+5ybM1r9MTrWzYIASl8ixlhJ6KsEkRyg=;
 b=MMDNfsxR7UicQw0/SYHP9ii8GxhcHfRjbSOz5OpAIu75nURyJit3Ozb2
 VbvWJt12kwUDmVr5BH44CxQ8r78x615lRzeTJbm8N9LBoRD6tZMZPvbg3
 80Vk0SLX8JUeMqIBUgWIryh2HBKrqhOpbVByickPjUzSo8XpP1Eh3pTI/
 4XIDuepCNyAqEv7/ZwyUo+0ouMseuk434rNmsp2xyczlBTW8WALIP/uF5
 jlkabADmYmROeT93WgrIPbWaXENWMm1gRN7w7WIbEqdCVRGh4xlMs4fg6
 K+uDLIOQoP6tSvQKl5I66YjLUZbo6yYCJfc2W3uJeGNKepgRdn6IzGIj8
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MMDNfsxR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/3] i40e: Add other helpers
 to check version of running firmware and AQ API
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/24/2023 6:01 AM, Ivan Vecera wrote:
> 
> 
> On 24. 10. 23 12:24, Wojciech Drewek wrote:
>> On 23.10.2023 18:29, Ivan Vecera wrote:
>>> Add another helper functions that will be used by subsequent
>>> patch to refactor existing open-coded checks whether the version
>>> of running firmware and AdminQ API is recent enough to provide
>>> certain capabilities.
>>>
>>> Signed-off-by: Ivan Vecera<ivecera@redhat.com>
>>> ---
>>>   drivers/net/ethernet/intel/i40e/i40e_type.h | 54 +++++++++++++++++++++
>>>   1 file changed, 54 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
>>> index 050d479aeed3..bb62c14aa3d4 100644
>>> --- a/drivers/net/ethernet/intel/i40e/i40e_type.h
>>> +++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
>>> @@ -608,6 +608,60 @@ static inline bool i40e_is_aq_api_ver_ge(struct i40e_hw *hw, u16 maj, u16 min)
>>>   		(hw->aq.api_maj_ver == maj && hw->aq.api_min_ver >= min));
>>>   }
>>>   
>>> +/**
>>> + * i40e_is_aq_api_ver_lt
>>> + * @hw: pointer to i40e_hw structure
>>> + * @maj: API major value to compare
>>> + * @min: API minor value to compare
>>> + *
>>> + * Assert whether current HW API version is less than provided.
>>> + **/
>>> +static inline bool i40e_is_aq_api_ver_lt(struct i40e_hw *hw, u16 maj, u16 min)
>>> +{
>>> +	return !i40e_is_aq_api_ver_ge(hw, maj, min);
>>> +}
>> It feels a bit off to have those helpers in i40e_type.h.
>> We don't have i40e_common.h though so I'd move them to i40e_prototype.h or i40e.h.
>> Same comment regarding 1st patch (I know I gave it my tag but I spotted the issue
>> while reading the 2nd patch).
> 
> I'm sorry I already submitted v2 and helpers are present i40e_type.h.
> I would submit v3 but there is also i40e_is_vf() inline function already 
> present in i40e_type. Would you be OK with a follow-up that would move 
> all these inlines into i40e_prototype.h?
> 
> Btw i40e.h is not a good idea as this would bring a dependency on i40e.h 
> into i40e_adminq.c, i40e_common.c and i40e_dcb.c.
> 

i40e_prototype.h seems reasonable to me. And yes, please don't use
i40e.h, as the driver design tries to separate the code related to
ice_hw from the rest of the driver at least to some extent. I don't
think that should be changed without care.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
