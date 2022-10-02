Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB8D5F235B
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Oct 2022 15:27:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8FDD827A0;
	Sun,  2 Oct 2022 13:27:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8FDD827A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664717260;
	bh=HGzji0f7ulEB1Zxqni+hR3C06XUb8cDfrBq45ROi4gg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LAyHt770t1/Bk5SaSZPYTGpOOVK/0GgiQjamUiLqqc9fE0f9LFeDFn1TMDmmdQZFV
	 HQU4HcQK+PLbbe1Ccm1orNWKgGmuj8/HvTlCRdO2gfj/I5TGSVQylm1oXIIQkHUiof
	 YrLMjqS7IOx/Eu+osH1fyLozRkW+DO6evYopbGBIwmO1VZOjgX8OblyoMc6KW2FSdl
	 mJcsTg3pGw6U+GKYmw2ztatp8gOrXGXfcUlhZAcjZRpm3BtpHWSYF5ugnbLIfaap1h
	 PeKzP4Jz+Nu6TSrAnzbmoefloo4jGOS34Nv4zulKQE5gJqJn2EBe2HFlTZLWM/rkVp
	 TsbimVGQ43y9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gEQmxQN0DOQG; Sun,  2 Oct 2022 13:27:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C013823E2;
	Sun,  2 Oct 2022 13:27:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C013823E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B144B1BF344
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 13:27:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8F2EB823E2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 13:27:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F2EB823E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZdQlIR_VBbyS for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Oct 2022 13:27:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BA28823E0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BA28823E0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Oct 2022 13:27:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="289637813"
X-IronPort-AV: E=Sophos;i="5.93,363,1654585200"; d="scan'208";a="289637813"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2022 06:27:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="574362403"
X-IronPort-AV: E=Sophos;i="5.93,363,1654585200"; d="scan'208";a="574362403"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 02 Oct 2022 06:27:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 2 Oct 2022 06:27:31 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 2 Oct 2022 06:27:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 2 Oct 2022 06:27:31 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 2 Oct 2022 06:27:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BuRbTjw1jfwwbxCIUeJpnKiWHn27I8q/5/qvc1F+3XEbBmrLef+2kVwOaxFNa1YS31HspPno9rvuE5OHNI0EugPqcrrc81t6EQKy3FGm5ntGduluemsefW2JvE+HnYcskcOn0DPm3P2u1h5PKS4/QaVvwgT0LYOuchlA+hycUKR34pPVTnXMVQhwZe5H6l5KzThjmGbCSGgZ9eO97nvkzVxkPjcW4NlsazFS0JqiEySNHRx8wZQJ6yDjLGQ5vOMuYffaOWxCLtJJdS0TieKM+B+R5R9/TGVgKcsri43FLhKDOtbwAhmROW/tpjmB93WRJ+LggmB2HoU6l4AbVOdGaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vDnc73SQaDGAsVftrZrGn6XIj+DkOZtrtfrNl6zM4ds=;
 b=lWNyhcm4Xyf1V0DHCJeii2joFgVcJ/t+ti7tugWoYcDGj1/Ab8mQ/BAi22KoBQ9fu6IlivpiCI3ArzSTrAANpulKEkP1fVStebwPXEAXNKQPc1YLoAefDACy0v22zFuTXkPEknC4tzCRweH3H8ZHeoxDHbMlaxErT2hYDVqLOIR91In2It851ONW3HiSGnvNsancSCgfsxOLXnCeirCMkTgrWp03FbKOTgHcmpwTXYXdgyXOZZbS7ZuOZekvpu+NEfwHOJO5QVnbOu8kexyXGwY7CYR9JSQRt3fcJ0nsQ6R9hMaoVUTIP9g+I42z3NHMArvnMvg1H3o42dLYRqVDmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com (2603:10b6:4:52::15)
 by CO6PR11MB5666.namprd11.prod.outlook.com (2603:10b6:303:13a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Sun, 2 Oct
 2022 13:27:29 +0000
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::2914:9926:3b20:aead]) by DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::2914:9926:3b20:aead%7]) with mapi id 15.20.5676.028; Sun, 2 Oct 2022
 13:27:29 +0000
Message-ID: <c633b4f7-68a1-29fb-cf20-4eec8b57513c@intel.com>
Date: Sun, 2 Oct 2022 16:27:23 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Amir
 Avivi" <amir.avivi@intel.com>, Dima Ruinskiy <dima.ruinskiy@intel.com>,
 Devora Fuxbrumer <devora.fuxbrumer@intel.com>
References: <53c37a6f-c8cd-63d6-696f-6b50b70f78ea@molgen.mpg.de>
 <d287a371-2a26-04f7-9adc-c7d8a19bfc14@intel.com>
 <3f675a1c-0a24-85b5-acad-eaad3fe7e38f@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <3f675a1c-0a24-85b5-acad-eaad3fe7e38f@molgen.mpg.de>
X-ClientProxiedBy: LO4P123CA0146.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:188::7) To DM5PR1101MB2235.namprd11.prod.outlook.com
 (2603:10b6:4:52::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2235:EE_|CO6PR11MB5666:EE_
X-MS-Office365-Filtering-Correlation-Id: b93b262b-298d-4d0a-60e1-08daa479da68
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4T6zYqnYqiKpxDtOmokpc2GkvhHwnEpx5fk1C1RXmBuyXAWGGfhXX37OKDPQtoUjxyNVToWQzCoYNguNKS1ffhibFY7slyE1UCAjg8z4DXKmxyW3e2Eqi2FXRTls5Hmw//B40Ak09AK5Z+6ZrameTVrvDuw8qZVIaMNxgbi0X+hXaBFtH+HAwhShLB5wQnO6Jhso+mugll8kmHTSebTw6fgGEBMFqV52BlFW2Pc6jgSs8UPwgDIrCF8tzHcr6Jk+lFa3e6uVaD1uoDuTJCuRlhaDNHpHJUl3TvXcLNaZdl7NuV6qQRGtuCJ6xyifa7RHRSE/pbvsdfwjVH3jtM58TfAGfhSfsvpM+O5hf3XQqWi6zGby2q7zMJx7e6R1882ANYUNrFwaAl3R31KJPZ62GyXmi+uxUW/z+iQVxnnKKf+7NYG+6n2xOiPO0nOpKeH+DITHK4UxBdPEMmmxPDUfBgrzxCToLhLWIx4zUhGFzgIKVq6eNbjVOc7x1EJTbmt7JifqqK8XN11q2wzMUyetFBp3NX8PwktsE5e+DKXnZpkR2JCkwDva9waCNF/qHCOzxunw9/G11t+x77pynArGpxVdnzjDZqRh21kSzxly3SUx+Vtuhwp9SgeEYpZoPcUA93V0sxZzmWWsUq6MBzLhMr8CAiBuJn1xK1sOdV4pNfm/o9en8OMnb99DRtwni6yjm1oLI7Y0V9ovdtaQpACC0ujegymScZj2sQ7BFFAvXEaMsqlcJlcm82dLDzJ1vLbw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(136003)(376002)(346002)(366004)(451199015)(31686004)(110136005)(6636002)(54906003)(316002)(66946007)(66476007)(4326008)(66556008)(6486002)(8676002)(478600001)(966005)(6512007)(26005)(31696002)(5660300002)(86362001)(6666004)(6506007)(8936002)(41300700001)(53546011)(2616005)(2906002)(83380400001)(82960400001)(38100700002)(36756003)(186003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WTJQbE5zeURNa2xyT0xlTFNMZTQ2SSt5YUJWRGV3WkdEc3JnTGhZbUtjeDZL?=
 =?utf-8?B?NXlsbVNsVHRoNnBCQmg0c2t1QXlNL3JxNmF0VzVGa21vMndzYVVqbnJvL200?=
 =?utf-8?B?NlVvY0hFakF0QWkrbEZ0bDZ4bXJOWjlXTUtEclA3WFNmenFoTGt6ODZRaE41?=
 =?utf-8?B?VEtFOW1zQUhqU1E1dEF4YzE1TUFSZUljQkxvdkl5c1hBSEFUZlk1VzVCMlhN?=
 =?utf-8?B?amR5aFVuT1poVk4waGVGcGRoeFNUVGNXU2JXUVlPaTBEUUxZL2lGOGtyVldG?=
 =?utf-8?B?VzBLamNYalhwcXlvcEhtNlVpcnZIamJ2N0RQRm9QUXFTb1RhdVpXZW9kcG4y?=
 =?utf-8?B?ZWRnZnBnclNCSWlUZWRhNDFuNEJWNFRZWk41QUs0VElsSnZpd2dkc1hEa0ha?=
 =?utf-8?B?TlZVK0QzcWhVNHQvN0J2YnZQcFpOdU51N0FzcERVVlFyUnpIMDRrSVhRajlP?=
 =?utf-8?B?SVFtaGtUSW1uekFZVjhZSm1TZnZPTEVySTBoRmRFUm8wT01lYzUzTytwak5w?=
 =?utf-8?B?L21EcmdGc3pIaitNQkpZSGVCd1QzdjAyYUdZb3ZuN1dUQ0VJOUZuZUpDTHRj?=
 =?utf-8?B?N2MvYk40RUlOWDBrL0NiQlkrM2RvYkk5dVI0Nm9kR0RjSHo5ZkIvY1AvYnpG?=
 =?utf-8?B?VFg4SzJaTmNGQ3RoYlZ1Y2xhUWM3b0Y1a05oaXJHWHpTdXZjQkd5TmtFQ2ox?=
 =?utf-8?B?NHA3YW13eXRvQWtrbTkxN0JKbXo2bC9OVWRDdElVSkVjbXN3bXNNR2dINlhM?=
 =?utf-8?B?eGdaeEd1czBIdC9UeUY5TmtlNkdWMXkwTlFTQlV3RnBLbjFsbTA4QTVLd3Rs?=
 =?utf-8?B?NTFPbUF3YytJM2JpVnBuNDNKSGJ4bDViT2RzdjF1Uk84ejQ4cmZWWURVVTdk?=
 =?utf-8?B?b0lINWNiSThQZGJYZTJPZUhtZEtQRm03UlRkbEJvd3RQOW1WMkRKckpaUVZ3?=
 =?utf-8?B?eEVxRi9oWElsbVhEMUVRWUFwazRqS0dQT2h0Q0dHdkRTSHNVMTlRcFpLUU5E?=
 =?utf-8?B?OXJUSUFyemlya0hxQkkxUU9FUUM5NVBVTmZHbE8rV1FJYnVqUzdhNkxqdUFG?=
 =?utf-8?B?dnZnV245R3piTDFqUG56aWVxK1JDYldLVVVvdk1ybStKc3hDTUhvRlc4SHEv?=
 =?utf-8?B?bXpZbDR4S1JWQU1WT0JuanBjYm9LY0tlUmZCUmpvR1FmZEJCV0h2bkdsNUhl?=
 =?utf-8?B?aU5TWk9CWGdVM2lRSXdUUHZzUzJjaG9xNFFvc2EvSCtxK1dMcGhxV3lPR3ZC?=
 =?utf-8?B?dHJCKzdBeEV3RDB4VW9sb1BNUnI0aTZIZUp3UWFEdUdiQXhWejdHVDQ0Y3FT?=
 =?utf-8?B?S1QxS3FLUXovMjMrQk5MdHZtK3hHTnBtOUhKTjlyT0kxTlZkdDYzczIxclJ5?=
 =?utf-8?B?RFFjZ0NjYUs5a3BsK1o0dHRtQ21jazlvTlhqZ3J6Z3BzZ05zMk93MlNadnBJ?=
 =?utf-8?B?alFKM0FUN2ZlVFRiN0VQb3lVWExaTTRad0lDeThENERpNW10MFpGZlhJUTZn?=
 =?utf-8?B?ODFaQ2NLL3p0THF3cmRwekttNTUvckg3RnBvY0tXRWR5ZmMrSGlhbU9BTm1h?=
 =?utf-8?B?ZDhhdldOMWFGWExTd0lwWDdJT2lXQ0xRZ2phcXBmU3JxNVVnUEdrZmUwMVR0?=
 =?utf-8?B?V3NGNnh2cnJUOVhQQ0NVWnpNNFBYSkdwNmdVUkNNeUcvNVRSRWJscHdLRDZU?=
 =?utf-8?B?NlNicVlsbHUrRjFIRnc5R0prR0czeEh0Nnp1OTFWZ1JrY0RBa2dPejNqbEVP?=
 =?utf-8?B?OEdtLzRhOTZub2ZhUjJCYmU5SmFvZVpLM2pQU0lHT0dmSHZuQTNpTDRNQUpw?=
 =?utf-8?B?U0tSVjlZUTRtZkhOQkEyZ3Q1Uit4d0xqMkRSY2NROEs0MHVCVjNoRHdKQmt3?=
 =?utf-8?B?cnhXMmJ0WHJVdUpYQWEyZ3lPRUdSd1hPNHZJdzFHQitEUjAxMmpUNkliaVpt?=
 =?utf-8?B?Yk1uR052TnpDcGJTQnJDajlNZXozYzNrcVlEUVEzZ0NDS0RycnYwQVpwaVhH?=
 =?utf-8?B?YlFVc2c3djZTak9ra2NxRXhLQy9GSUF1VFV5cTFJQXU4amZad0xiTGZOaGNn?=
 =?utf-8?B?ZWsvbFZLeXNnaDdpbDFSK0hic3R0dUdHUmxNeEsvV09OZ3lDWUdVZjk2MlJX?=
 =?utf-8?B?TkErd09CZXU1SEZsV0s2VUF3UllacnVVNUFjNlJzSWkzMFFkTHVsdEZmWVhH?=
 =?utf-8?B?d1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b93b262b-298d-4d0a-60e1-08daa479da68
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2022 13:27:29.1118 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9GMpYSHNawVlYIMhJFLZACmmtmLFDZETjSf+etq6CQ/vWlqO10gDaLuVU8Z5aPTILbMIveydQ2MyQ+aOHNCOoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5666
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664717253; x=1696253253;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S+ht0bUvUw1Sku2Qd9+hnp1DllyfdgtWorOVjtiNr+8=;
 b=UCIo0eXQn1YozDWCIwePHueaVVjApzy5g8ibj2DtdXw1726sUtL8ClAk
 HfI1zdPYCGPUlHkrjKQpw0g/x7KKfYv8OK3UIrXmbNYEsUpniwqmD3n31
 v3lXsAEzo/T37yPzrBAcGza0XpTggb5Hn0heGBVTVmL8GfS7mObkdIizp
 vmO50PvnUbCCKzDmegMKbL4EswxP2RUGpnjsygv1X7gqajdDhrWDn6KD2
 YEt6CP+J7x78sujOV+nBdagW2vJcLR8fyTtBz6Rkn6Jn7dS94ibCGwfqa
 cs+qf+GPqIfT7vPFD+J8H6aT2fkg3mg6tSrtEJTIJEshVSRz/bYKuVuhN
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UCIo0eXQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Link does not come up after resuming from
 ACPI S3
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvMi8yMDIyIDEwOjUyLCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIFNhc2hhLAo+IAo+
IAo+IFRoYW5rIHlvdSBmb3IgeW91ciByZXBseS4KPiAKPiBBbSAwMi4xMC4yMiB1bSAwODo1NyBz
Y2hyaWViIE5lZnRpbiwgU2FzaGE6Cj4+IE9uIDkvMzAvMjAyMiAxODo1NiwgUGF1bCBNZW56ZWwg
d3JvdGU6Cj4gCj4+PiBPbiBhIERlbGwgTGF0aXR1ZGUgRTcyNTAgd2l0aCBEZWJpYW4gc2lkL3Vu
c3RhYmxlLCByZXN1bWluZyBMaW51eCAKPj4+IDUuMTkuNiBhbmQgY29ubmVjdGluZyBhbiBFdGhl
cm5ldCBjYWJsZSwgdGhlIGxpbmsgZGlkIG5vdCBjb21lIHVwLgo+IAo+PiBXaGF0IGlzIHRoZSBk
ZXZpY2UgSUQgeW91IHRyaWVkIHRvIG9wZXJhdGUgb24geW91ciBib2FyZD8gQ291bGQgeW91IAo+
PiBwcm92aWRlIHdob2xlIGxzcGNpIG91dHB1dCBhbmQgcGFydGljdWxhciBmb3I6Cj4+IGxzcGNp
IC1zIDAwMDA6MDA6MTkuMCAtdnZ2IGFuZCBsc3BjaSAtcyAwMDAwOjAwOjFmLjYgLXZ2dj8KPiAK
PiBQbGVhc2UgZmluZCBpdCBhdHRhY2hlZCBmcm9tIGEgYm9vdCB3aGVyZSB0aGUgcHJvYmxlbSBk
aWQgbm90IGhhcHBlbiwgYXMgCj4gSSBhbSB1bmFibGUgdG8gcmVwcm9kdWNlIHRoZSBpc3N1ZS4g
RGV2aWNlIDA6MWYuNiBkb2VzIG5vdCBleGlzdC4KT2suCkkgd291bGQgc3VnZ2VzdCBjb250YWN0
IHRvIG91ciBQQUUvRGVsbCB2ZW5kb3JzIHdpdGggdGhlIHJlcHJvZHVjdGlvbiBzdGVwcy4KPiAK
Pj4gSSd2ZSBhZGRlZCB0aGUgUEFFIGV4cGVydCAoQW1pcikuCj4gCj4gQXdlc29tZS4KPiAKPiAK
PiBUaGFuayB5b3UgYW5kIGtpbmQgcmVnYXJkcywKPiAKPiBQYXVsCj4+PiDCoMKgwqDCoCAkIGxz
cGNpIC1zIDAyOjAwLjAgLW5uCj4+PiDCoMKgwqDCoCAwMjowMC4wIE5ldHdvcmsgY29udHJvbGxl
ciBbMDI4MF06IEludGVsIENvcnBvcmF0aW9uIFdpcmVsZXNzIAo+Pj4gNzI2NSBbODA4NjowOTVh
XSAocmV2IDU5KQo+IAo+IFNvcnJ5IGZvciBwb3N0aW5nIHRoZSB3cm9uZyBkZXZpY2U6Cj4gCj4g
IMKgwqDCoCAwMDoxOS4wIEV0aGVybmV0IGNvbnRyb2xsZXIgWzAyMDBdOiBJbnRlbCBDb3Jwb3Jh
dGlvbiBFdGhlcm5ldCAKPiBDb25uZWN0aW9uICgzKSBJMjE4LUxNIFs4MDg2OjE1YTJdIChyZXYg
MDMpCj4gCj4gCj4gS2luZCBybmVnYXJkcywKPiAKPiBQYXVsCj4gCj4gCj4+PiBgYGAKPj4+IFvi
gKZdCj4+PiBbMjYzMjMyLjA2MDkxMl0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiBOSUMgTGlu
ayBpcyBEb3duCj4+PiBbMjYzMjM3LjE2MDkzN10gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiBO
SUMgTGluayBpcyBVcCAxMDAwIE1icHMgCj4+PiBGdWxsIER1cGxleCwgRmxvdyBDb250cm9sOiBS
eC9UeAo+Pj4gWzI2MzIzOC4xNDIyNTNdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogTklDIExp
bmsgaXMgRG93bgo+Pj4gWzI2MzI0NS42ODcyMDhdIGl3bHdpZmkgMDAwMDowMjowMC4wOiBSRl9L
SUxMIGJpdCB0b2dnbGVkIHRvIGRpc2FibGUgCj4+PiByYWRpby4KPj4+IFsyNjMyNDUuNjg3MjEy
XSBpd2x3aWZpIDAwMDA6MDI6MDAuMDogcmVwb3J0aW5nIFJGX0tJTEwgKHJhZGlvIGRpc2FibGVk
KQo+Pj4gWzI2MzI0NS42OTkyNjNdIGl3bHdpZmkgMDAwMDowMjowMC4wOiBEaXNhYmxlZCBJTlRB
IGJpdHMgMHgxMDAwMDAwMCAKPj4+IHdlcmUgcGVuZGluZwo+Pj4gWzI2MzI0Ni43OTY5OTRdIGUx
MDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogTklDIExpbmsgaXMgVXAgMTAwMCBNYnBzIAo+Pj4gRnVs
bCBEdXBsZXgsIEZsb3cgQ29udHJvbDogUngvVHgKPj4+IFsyNjMyNDcuNzc4MTkyXSBlMTAwMGUg
MDAwMDowMDoxOS4wIGVubzE6IE5JQyBMaW5rIGlzIERvd24KPj4+IFsyNjMyNTIuNzcwNjY3XSBl
MTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IE5JQyBMaW5rIGlzIFVwIDEwMDAgTWJwcyAKPj4+IEZ1
bGwgRHVwbGV4LCBGbG93IENvbnRyb2w6IFJ4L1R4Cj4+PiBbMjYzMjUzLjc1MTk0OF0gZTEwMDBl
IDAwMDA6MDA6MTkuMCBlbm8xOiBOSUMgTGluayBpcyBEb3duCj4+PiBb4oCmXQo+Pj4gYGBgCj4+
Pgo+Pj4gRW5hYmxpbmcgdGhlIGRlYnVnIG1lc3NhZ2Ugd2l0aAo+Pj4KPj4+IMKgwqDCoMKgIGVj
aG8gIm1vZHVsZSBlMTAwMGUgK3AiIHwgc3VkbyB0ZWUgCj4+PiAvc3lzL2tlcm5lbC9kZWJ1Zy9k
eW5hbWljX2RlYnVnL2NvbnRyb2wKPj4+Cj4+PiB0aGVyZSBpcwo+Pj4KPj4+IGBgYAo+Pj4gWzI2
MzQ2My44NDU5NDRdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogTklDIExpbmsgaXMgVXAgMTAw
MCBNYnBzIAo+Pj4gRnVsbCBEdXBsZXgsIEZsb3cgQ29udHJvbDogUngvVHgKPj4+IFsyNjM0NjQu
ODM5MzM5XSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IE5JQyBMaW5rIGlzIERvd24KPj4+IFsy
NjM0NjkuNjU4NTU2XSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IHJlYWRpbmcgUEhZIHBhZ2Ug
MCAob3IgMHgwIAo+Pj4gc2hpZnRlZCkgcmVnIDB4MQo+Pj4gWzI2MzQ2OS42NTg2MTZdIGUxMDAw
ZSAwMDAwOjAwOjE5LjAgZW5vMTogcmVhZGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4+PiBzaGlm
dGVkKSByZWcgMHgxCj4+PiBbMjYzNDcxLjU0MjQwM10gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8x
OiByZWFkaW5nIFBIWSBwYWdlIDAgKG9yIDB4MCAKPj4+IHNoaWZ0ZWQpIHJlZyAweDEKPj4+IFsy
NjM0NzEuNTQyNDgwXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IHJlYWRpbmcgUEhZIHBhZ2Ug
MCAob3IgMHgwIAo+Pj4gc2hpZnRlZCkgcmVnIDB4MQo+Pj4gWzI2MzQ3My40NTQxMzFdIGUxMDAw
ZSAwMDAwOjAwOjE5LjAgZW5vMTogcmVhZGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4+PiBzaGlm
dGVkKSByZWcgMHgxCj4+PiBbMjYzNDczLjQ1NDIxMl0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8x
OiByZWFkaW5nIFBIWSBwYWdlIDAgKG9yIDB4MCAKPj4+IHNoaWZ0ZWQpIHJlZyAweDEKPj4+IFsy
NjM0NzMuNDU0MjgwXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IDEwMDAgTWJwcywgRnVsbCBE
dXBsZXgKPj4+IFsyNjM0NzMuNDU0Mjk4XSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IFNldHRp
bmcgcGFnZSAweDAKPj4+IFsyNjM0NzMuNDU0MzYwXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6
IHdyaXRpbmcgUEhZIHBhZ2UgMCAob3IgMHgwIAo+Pj4gc2hpZnRlZCkgcmVnIDB4MTAKPj4+IFsy
NjM0NzMuNDU0NDIwXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IFNldHRpbmcgcGFnZSAweDAK
Pj4+IFsyNjM0NzMuNDU0NDc5XSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IHdyaXRpbmcgUEhZ
IHBhZ2UgMCAob3IgMHgwIAo+Pj4gc2hpZnRlZCkgcmVnIDB4MTEKPj4+IFsyNjM0NzMuNDU0NTM4
XSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IFNldHRpbmcgcGFnZSAweDYwODAKPj4+IFsyNjM0
NzMuNDU0NTk2XSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IHJlYWRpbmcgUEhZIHBhZ2UgNzcy
IChvciAKPj4+IDB4NjA4MCBzaGlmdGVkKSByZWcgMHgxYwo+Pj4gWzI2MzQ3My40NTQ2NTZdIGUx
MDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogU2V0dGluZyBwYWdlIDB4NjA4MAo+Pj4gWzI2MzQ3My40
NTQ3MTRdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogd3JpdGluZyBQSFkgcGFnZSA3NzIgKG9y
IAo+Pj4gMHg2MDgwIHNoaWZ0ZWQpIHJlZyAweDFjCj4+PiBbMjYzNDczLjQ1NDc3M10gZTEwMDBl
IDAwMDA6MDA6MTkuMCBlbm8xOiBTZXR0aW5nIHBhZ2UgMHg2MDQwCj4+PiBbMjYzNDczLjQ1NDgz
MV0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiByZWFkaW5nIFBIWSBwYWdlIDc3MCAob3IgIAo+
Pj4gMHg2MDQwIHNoaWZ0ZWQpIHJlZyAweDExCj4+PiBbMjYzNDczLjQ1NDg5MF0gZTEwMDBlIDAw
MDA6MDA6MTkuMCBlbm8xOiBTZXR0aW5nIHBhZ2UgMHg2MDQwCj4+PiBbMjYzNDczLjQ1NDk0OF0g
ZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiB3cml0aW5nIFBIWSBwYWdlIDc3MCAob3IgCj4+PiAw
eDYwNDAgc2hpZnRlZCkgcmVnIDB4MTEKPj4+IFsyNjM0NzMuNDU1MDU5XSBlMTAwMGUgMDAwMDow
MDoxOS4wIGVubzE6IDEwMDAgTWJwcywgRnVsbCBEdXBsZXgKPj4+IFsyNjM0NzMuNDU1MDczXSBl
MTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IFNldHRpbmcgcGFnZSAweDYwODAKPj4+IFsyNjM0NzMu
NDU1MTMxXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IHJlYWRpbmcgUEhZIHBhZ2UgNzcyIChv
ciAKPj4+IDB4NjA4MCBzaGlmdGVkKSByZWcgMHgxNAo+Pj4gWzI2MzQ3My40NTUxOTBdIGUxMDAw
ZSAwMDAwOjAwOjE5LjAgZW5vMTogU2V0dGluZyBwYWdlIDB4MAo+Pj4gWzI2MzQ3My40NTUyNDhd
IGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogd3JpdGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4+
PiBzaGlmdGVkKSByZWcgMHgxMAo+Pj4gWzI2MzQ3My40NTUzMDddIGUxMDAwZSAwMDAwOjAwOjE5
LjAgZW5vMTogU2V0dGluZyBwYWdlIDB4MAo+Pj4gWzI2MzQ3My40NTUzNjVdIGUxMDAwZSAwMDAw
OjAwOjE5LjAgZW5vMTogcmVhZGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4+PiBzaGlmdGVkKSBy
ZWcgMHgxMQo+Pj4gWzI2MzQ3My40NTU0MjRdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogU2V0
dGluZyBwYWdlIDB4MAo+Pj4gWzI2MzQ3My40NTU0ODJdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5v
MTogd3JpdGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4+PiBzaGlmdGVkKSByZWcgMHgxMAo+Pj4g
WzI2MzQ3My40NTU1NDFdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogU2V0dGluZyBwYWdlIDB4
MAo+Pj4gWzI2MzQ3My40NTU1OTldIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogcmVhZGluZyBQ
SFkgcGFnZSAwIChvciAweDAgCj4+PiBzaGlmdGVkKSByZWcgMHgxMQo+Pj4gWzI2MzQ3My40NTU2
NThdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTogcmVhZGluZyBQSFkgcGFnZSAwIChvciAweDAg
Cj4+PiBzaGlmdGVkKSByZWcgMHg1Cj4+PiBbMjYzNDczLjQ1NTcxNl0gZTEwMDBlIDAwMDA6MDA6
MTkuMCBlbm8xOiBTZXR0aW5nIHBhZ2UgMHgwCj4+PiBbMjYzNDczLjQ1NTc3NF0gZTEwMDBlIDAw
MDA6MDA6MTkuMCBlbm8xOiB3cml0aW5nIFBIWSBwYWdlIDAgKG9yIDB4MCAKPj4+IHNoaWZ0ZWQp
IHJlZyAweDEwCj4+PiBbMjYzNDczLjQ1NTgzM10gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiBT
ZXR0aW5nIHBhZ2UgMHgwCj4+PiBbMjYzNDczLjQ1NTg5MV0gZTEwMDBlIDAwMDA6MDA6MTkuMCBl
bm8xOiByZWFkaW5nIFBIWSBwYWdlIDAgKG9yIDB4MCAKPj4+IHNoaWZ0ZWQpIHJlZyAweDExCj4+
PiBbMjYzNDczLjQ1NTk1MF0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiBTZXR0aW5nIHBhZ2Ug
MHg2MDgwCj4+PiBbMjYzNDczLjQ1NjAwOF0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiB3cml0
aW5nIFBIWSBwYWdlIDc3MiAob3IgCj4+PiAweDYwODAgc2hpZnRlZCkgcmVnIDB4MTQKPj4+IFsy
NjM0NzMuNDU2MDcxXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IGh3LT5mYy5jdXJyZW50X21v
ZGUgPSAzCj4+PiBbMjYzNDczLjQ1NjA3OF0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiByZWFk
aW5nIFBIWSBwYWdlIDAgKG9yIDB4MCAKPj4+IHNoaWZ0ZWQpIHJlZyAweDEKPj4+IFsyNjM0NzMu
NDU2MTQwXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IHJlYWRpbmcgUEhZIHBhZ2UgMCAob3Ig
MHgwIAo+Pj4gc2hpZnRlZCkgcmVnIDB4MQo+Pj4gWzI2MzQ3My40NTYyMDFdIGUxMDAwZSAwMDAw
OjAwOjE5LjAgZW5vMTogcmVhZGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4+PiBzaGlmdGVkKSBy
ZWcgMHg0Cj4+PiBbMjYzNDczLjQ1NjI2Ml0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiByZWFk
aW5nIFBIWSBwYWdlIDAgKG9yIDB4MCAKPj4+IHNoaWZ0ZWQpIHJlZyAweDUKPj4+IFsyNjM0NzMu
NDU2MzIyXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IEZsb3cgQ29udHJvbCA9IEZVTEwuCj4+
PiBbMjYzNDczLjQ1NjMyNl0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiAxMDAwIE1icHMsIEZ1
bGwgRHVwbGV4Cj4+PiBbMjYzNDczLjQ1NjMzMF0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiBo
dy0+ZmMuY3VycmVudF9tb2RlID0gMwo+Pj4gWzI2MzQ3My40NTYzNDBdIGUxMDAwZSAwMDAwOjAw
OjE5LjAgZW5vMTogcmVhZGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4+PiBzaGlmdGVkKSByZWcg
MHgwCj4+PiBbMjYzNDczLjQ1NjQwMV0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiByZWFkaW5n
IFBIWSBwYWdlIDAgKG9yIDB4MCAKPj4+IHNoaWZ0ZWQpIHJlZyAweDEKPj4+IFsyNjM0NzMuNDU2
NDYzXSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IHJlYWRpbmcgUEhZIHBhZ2UgMCAob3IgMHgw
IAo+Pj4gc2hpZnRlZCkgcmVnIDB4NAo+Pj4gWzI2MzQ3My40NTY1MjRdIGUxMDAwZSAwMDAwOjAw
OjE5LjAgZW5vMTogcmVhZGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4+PiBzaGlmdGVkKSByZWcg
MHg1Cj4+PiBbMjYzNDczLjQ1NjU4NV0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiByZWFkaW5n
IFBIWSBwYWdlIDAgKG9yIDB4MCAKPj4+IHNoaWZ0ZWQpIHJlZyAweDYKPj4+IFsyNjM0NzMuNDU2
NjQ2XSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IHJlYWRpbmcgUEhZIHBhZ2UgMCAob3IgMHgw
IAo+Pj4gc2hpZnRlZCkgcmVnIDB4OQo+Pj4gWzI2MzQ3My40NTY3MDhdIGUxMDAwZSAwMDAwOjAw
OjE5LjAgZW5vMTogcmVhZGluZyBQSFkgcGFnZSAwIChvciAweDAgCj4+PiBzaGlmdGVkKSByZWcg
MHhhCj4+PiBbMjYzNDczLjQ1Njc2OV0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiByZWFkaW5n
IFBIWSBwYWdlIDAgKG9yIDB4MCAKPj4+IHNoaWZ0ZWQpIHJlZyAweGYKPj4+IFsyNjM0NzMuNDU2
ODI5XSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IDEwMDAgTWJwcywgRnVsbCBEdXBsZXgKPj4+
IFsyNjM0NzMuNDU2ODM2XSBlMTAwMGUgMDAwMDowMDoxOS4wIGVubzE6IE5JQyBMaW5rIGlzIFVw
IDEwMDAgTWJwcyAKPj4+IEZ1bGwgRHVwbGV4LCBGbG93IENvbnRyb2w6IFJ4L1R4Cj4+PiBbMjYz
NDc0LjQ1ODEwMF0gZTEwMDBlIDAwMDA6MDA6MTkuMCBlbm8xOiByZWFkaW5nIFBIWSBwYWdlIDAg
KG9yIDB4MCAKPj4+IHNoaWZ0ZWQpIHJlZyAweDEKPj4+IFsyNjM0NzQuNDU4MTY5XSBlMTAwMGUg
MDAwMDowMDoxOS4wIGVubzE6IHJlYWRpbmcgUEhZIHBhZ2UgMCAob3IgMHgwIAo+Pj4gc2hpZnRl
ZCkgcmVnIDB4MQo+Pj4gWzI2MzQ3NC40NTgyMzNdIGUxMDAwZSAwMDAwOjAwOjE5LjAgZW5vMTog
TklDIExpbmsgaXMgRG93bgo+Pj4gYGBgCj4+Pgo+Pj4gUmVtb3ZpbmcgYW5kIGxvYWRpbmcgdGhl
IG1vZHVsZSAqZTEwMDBlKiBkaWQgbm90IGhlbHAuIFN1c3BlbmRpbmcgYW5kIAo+Pj4gcmVzdW1l
IGRpZCBub3QgZWl0aGVyLiBPbmx5IHBvd2VyaW5nIG9mZiB0aGUgc3lzdGVtIChtYXliZSByZXN0
YXJ0IAo+Pj4gd291bGQgaGF2ZSB3b3JrZWQgdG9vKS4KPj4+Cj4+PiBUaGUgOCBNQiBvdXRwdXQg
b2YgYGRtZXNnYCAoc3RpbGwgbWlzc2luZyB0aGUgZWFybHkgbWVzc2FnZXMpIFsxXSAKPj4+IGNv
bnRhaW5zIG1vcmUgbGluZXMgZnJvbSB0aGUgc3Vic2VxdWVudCB0cmllcy4KPj4+Cj4+PiBJdCBv
bmx5IGhhcHBlbmVkIG9uY2UsIGFuZCBJIGFtIHVuYWJsZSB0byByZXByb2R1Y2UgaXQuCj4+Pgo+
Pj4KPj4+IEtpbmQgcmVnYXJkcywKPj4+Cj4+PiBQYXVsCj4+Pgo+Pj4KPj4+IFsxXTogaHR0cHM6
Ly9vd3d3Lm1vbGdlbi5tcGcuZGUvfnBtZW56ZWwvbGludXgtNS4xOS42LS1tZXNzYWdlcy50eHQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
