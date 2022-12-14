Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC48864C394
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 06:44:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DED4040124;
	Wed, 14 Dec 2022 05:44:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DED4040124
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670996675;
	bh=NwapYsZ3xxhVS9otiJpTQCOluCEgFJO8MblbOWkAgUM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8//VCu/WKInBCUm/DMPBKKZPsDMUrXm8U0PD1wzbG2gTcpe8OkAgH9p+P1qqmoDl+
	 jAvvI8kv0G5UwrUnFRZxYIQLzbS4YBbmBfSWG9N1CvTJr25c2Uq4Ec4wRLUd9iGlXc
	 QsIpcIxzkFuZ+ltpAcZUNLxleVCa+asqfgDCEq4roveZVszNyni8kpRzY3T7Ntkqb6
	 kVOA7l2NYr2q7KV4V+5REgeYBR6enlcmUx/0+P1Qo0Ou2Y8WMhYXOiDQVPq8QROwid
	 XtnQ8ZbRSa/QlprkuWPCTdPdt4IlISIlha7S6q7YZAN8xBkYsnhoJ+4rF4KTUZNEUN
	 WCdH/y4jZj0vA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ap3dSrBfLZL9; Wed, 14 Dec 2022 05:44:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2B674017E;
	Wed, 14 Dec 2022 05:44:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2B674017E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 628941BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 05:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3BD8840102
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 05:44:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BD8840102
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SR1VOcNNzoNH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Dec 2022 05:44:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D0101400C8
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D0101400C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 05:44:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="404587467"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="404587467"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 21:44:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="791189761"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="791189761"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 13 Dec 2022 21:44:27 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 21:44:26 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 21:44:25 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 21:44:25 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 21:44:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E3IGXqqH54RqbEMdRk2HXEgVRHPpzhnwRdKqQQEMGR9rIF/4kqeeNbPz4gYE4QN86S1Okaf0hOHUcTTHQ+ywNKgOU6B58F6pd2ag7bBqCAbbXuZDIhjljRgz+SHCLas9r+EU7tJmZ+4XnW3pcFusJHOzeqUjQJBE6XehmeSFG/6+Q9nFYi8QB5tRdGMdbty89nyQLxtHMD5frQSe/rsQ3lPsVVjYb9FWtk7rmfkJRQgoE9/KBdJWfbOAWiDo73j9SWCH9A8cIsVnBmpx3kk9WkjZXIvqbrDDn2Nc1GuE8FZhxgv/HPw+hUIdwoPZ0aMvEwPc64XPM5H02Jk7UCduqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nblq96uhUD3IsDTBHoGsKB52GWsrOX1aIIfNC0GhcoA=;
 b=C+FWu0EVZ3kQ/I/zQ9yRl/cPR+nggiFQyyX2Es1exIRuCYP7AhXzNvTV/kv2pjBiyVig1DjQF/71rrG8itdxD7JlfYwmU5lmv9YnqsdxCiotWNHkozCboxiKKwcTyYrjJ4uEdH1IQ/Givwrk3uc2Aw71LOu+pkojOROrHeaxH8ez7lydmNMHs03Q3vsWQEurfB2fWHYPIzai6IYwMWrwBup6He1jTwHj7526J0HS8iPBfXB/j4LyjnKYnKFXCW+6QlsfxAVYVDLMt7vuurf15vp2UsI1X5FFeT3cJVZNiaveGilkLK4ZTke9SAC7f5tBDYIQfjEyh9eqTKG6FT1Vag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com (2603:10b6:4:52::15)
 by IA1PR11MB6540.namprd11.prod.outlook.com (2603:10b6:208:3a0::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 05:44:19 +0000
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::90f:cf74:29e0:2d34]) by DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::90f:cf74:29e0:2d34%6]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 05:44:18 +0000
Message-ID: <fe3577db-f2a1-1869-9a05-313671b3ab31@intel.com>
Date: Wed, 14 Dec 2022 07:44:10 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Geoff Winkless <geoff@defgeoff.co.uk>, <intel-wired-lan@lists.osuosl.org>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Ruinskiy, Dima"
 <dima.ruinskiy@intel.com>
References: <CAEzk6ffEcOFx0N3sXJovy6CbNdeg95bWHmPw1Hy5+v2Dgng7iQ@mail.gmail.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <CAEzk6ffEcOFx0N3sXJovy6CbNdeg95bWHmPw1Hy5+v2Dgng7iQ@mail.gmail.com>
X-ClientProxiedBy: FR3P281CA0139.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:95::13) To DM5PR1101MB2235.namprd11.prod.outlook.com
 (2603:10b6:4:52::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2235:EE_|IA1PR11MB6540:EE_
X-MS-Office365-Filtering-Correlation-Id: 9872e7c8-56e3-4cf9-a6ea-08dadd963d8b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lSiamUxtFJhmDp6nPfrmEsU+3S1HgqL9L9po31sHm8fXEs9cAod2SXPXuu36HMrk5Uqw2BHcgqgGF92752v9RblEk16d65VQjbaLtDoqFoNZsr5wfwG5ikPfVC8qRK7am3uwmJ4l8LKJXjafhIjdVwsNeyGhLVOsAQnuNRD4/xF0K9AoZ/TuKgSylruQu6ui4rr/kKojyosOyOV+RfQPuiFRAYtZ4URz/GZSf840fg82nvM9k3VjNJrsC26qc0XS+8GXAT3dxxpkcDACY13N/6PDnIcTJ0PkQvr84xugjVHhLg9Z7JLiQFCvuonyEKcC0liywr6SdRT4XQP5JFPUQ404jCR0A8KNiowACTsIP4dKkRakW+4mPWY1HpTl4n/XA0Xc0KI2KCPsbsvraNJqkO3kdgs0sh88qbw3ABg8VVadAAFpKqMSWFrVuddbHDmEzqv/k2Xh7dUT6D2D+o1wPY6l0Xfy4bZmbG6FOo71jOjGp1BWzRfG7KDZwpsgt0MoVq0kbYip0uOXfv2Di7h4xwcdxtRViuli/PDdwObe98fGHFmFfRmy58j3Lp5liJrMOJeypSRJqmL3TlnKfrLUmV6GWb5MkxO/abNkrWW6bYFHZj4k4CB+A3gEftkKvLXHCKAzDIthVE/6VUNlJEPURB2WL223LmPDUG6IxJD5COIxishm+qP/v3Uc+u4DtsusDhWzRY64qPCeHGCf+F+f7gEWTCU5Y8w0+3Aur72WbuEMw6ius5xRGSS+7TZtoU+Q8Ex7wDEwByO1KV508XL7nA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(136003)(366004)(396003)(346002)(451199015)(31686004)(36756003)(31696002)(86362001)(186003)(38100700002)(26005)(478600001)(6512007)(53546011)(6506007)(6666004)(6486002)(966005)(110136005)(82960400001)(316002)(6636002)(4326008)(41300700001)(5660300002)(8676002)(8936002)(2906002)(2616005)(83380400001)(54906003)(66556008)(66476007)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWxvY1JJMVZHS0xBRlpXRWhWZGJGbDZDTUZyWmFTY3FVekQzZHRlVmNKTHJZ?=
 =?utf-8?B?M2dtZjkvWm1KcEcwM0ZxaGZxWWUyY2QwMXIybTdaSTNRUHVDOGhwRTdFWmdk?=
 =?utf-8?B?TGNjNldMcGI5V1FabHZMUDh1QWduTlY5Y2hvMlhzUEZTdjNJU1NPN1V0ZDJQ?=
 =?utf-8?B?YVR3RXYzWmRKd24zUCtncE1nNWlMZ2pEaHZyKzMwNk9yTkE4aytmanpoZ0dY?=
 =?utf-8?B?SHFPWldQZ0pQbjVZOXZOejA2K0lyVnhhZmc3NnNyQngwcnQxcyt5TFRlT0Vi?=
 =?utf-8?B?d1hISTdCcGN5K1lKMEV1OWpaMUEySVk0alcwcFdrbEdBWk9FNmNHSEE5dXc5?=
 =?utf-8?B?N2Q3OFFOMTh5d1NMeEg0NkNsVzBSdXp2UjRYaXRFQVY4ZFpHY3cvRnpzc2d2?=
 =?utf-8?B?L0tSOUtISXZJLzdrbjVGWldTM0h5a1NRdTRpVER2aGpDQ0tuc2hWdnhEMzds?=
 =?utf-8?B?WDltMFdRbG14SlBteWlTZ0tac3ZnTFhGaFpVSTl3eko4OVZBWDJwMi93bDFO?=
 =?utf-8?B?NXR5VjhwWTRkeXdCWnhuYlErdFJYMmU3NTlVZGptTTV0aG5XUW1ocHIrVGJk?=
 =?utf-8?B?UHJuYURZY2daNm1PVzlLWjlYb3NNWGFJVXZuNnF5dzJPMklYdjNUMTl5VDNB?=
 =?utf-8?B?MUVScElFVldla3dDeU0wZlVQcVo1OGlyUmRrWHRkb3JyMG8xLzUyRjdjUU4x?=
 =?utf-8?B?UW4vbVNvdlU1VE4yZCs4QTVQTkY0TEk0VUdlRlNKV3lPbEdvNHN4WGxsVnEw?=
 =?utf-8?B?YnlQZUhCOFV2bmNpeE50NmhER3lPenlWS1AxZ2JkMHRFTE54d3d2ekp2NDNF?=
 =?utf-8?B?RkxWQkt2TElkM29zWCttQklvYnFHNVNmUXR1WGxTb0x6MVBFbnM4cjdiUXlT?=
 =?utf-8?B?TDBySEl0dWViWXRqaUJsRmJldVlBOEpoNnB6RWNQQ21WanJMcjdYMWk4UmpD?=
 =?utf-8?B?eENyRFZiYlQ3VTNBZDdLRGNXMEcvRXpMZFBQS25LSGQxZ3NzdGZ2SkFVVE1F?=
 =?utf-8?B?N2x2ZFRMYWswNWphSU5MVzU4d3Rxc1JzK1hPcTBRdWR5WkFjbktDdjVqWXI5?=
 =?utf-8?B?UitPb2ZyNVpqcmI3UEgwcTg4T0Z0UHRVR0hwL3VLV2FtUDFqZEI2YjQzTnJ0?=
 =?utf-8?B?WVQyNEZwMnRiK2JJZ3BXaVpKOEFkSThNdlpsa1lVWk5MdEFFR1RCb0pZdllH?=
 =?utf-8?B?VEYxVERIK2hCMmNNbGNmeWJuR3ZJM05DM3lqN1Y4MlRFVnJWUGY2V0Z4Rmo1?=
 =?utf-8?B?TzVLQ0RramFmaFF6ZjlyUm02cVhmMjBpL3hYSzZHUmRWZUYxUjEvaExHZmVG?=
 =?utf-8?B?QjRyb3ZFVGR2b1o2bThBZ1kvUHIrWURscFNjNkdaZS93SlpYOWFSaW0vMUVQ?=
 =?utf-8?B?KzVmTkpNQ0x5N1RYNE1RZ283dGZBU1VPZkNQUS96L3RtNjZ3dllXSjhpcmJo?=
 =?utf-8?B?UXNrZ2dXWFc5eTlkdXBkemYxYk1XelFZOFVlVy9KMUU3TXRxSCtXUUV0TTBv?=
 =?utf-8?B?ZnY0MkVPbGFLdCtZcXd6MTA3c0xleVlMSWNzWGNSYk5tbVNNREV5TUZidmQy?=
 =?utf-8?B?WDU2WWlzN1NVWWdlOXNPblVWWm9mbnovUGlGZGlCcGtuRTdobERhaTRweVhY?=
 =?utf-8?B?czlKQmdyTlhrOVNveFlwZ05nM3lDRWU5RE1LNmRSWTNqRTNsSldBZTdaY0Fi?=
 =?utf-8?B?VENQR2Fjc011OGljdGxIdENXZGl5ZzVaTmdidzl4MDFEUTdyZ0xqUUJJcEVr?=
 =?utf-8?B?YnVkeGU0clJwbE1Pc3RTeXBlTkRSdUtvTmx3OUJ0L1ZqYWN6T3BMb0hpQ2F0?=
 =?utf-8?B?RW5idllUMG4rcGhOUHhMWmFZRERLeHczWGxjczhGL0VYbTRDcGdXK09wZDRs?=
 =?utf-8?B?dC9MVHhWMTRmS09XTktja1R4c1NJUlRvVmtGdDN2T3hoM2ZjaVphU2ZUaERG?=
 =?utf-8?B?VmZpcGlnSGN2M1NvYTBLcm5qMCs2ODdIcis0T3VCRXgrSis2Z3lZemxZSUNC?=
 =?utf-8?B?WktnQVMzWGJFTDVPUXQ1OFhtVGFQaTdXUGQ5dlpPaml2cW5PY1MwaU1RTUpv?=
 =?utf-8?B?ZWwwejdNdlgvdWk0Y1lFUGRRVHRTeVRoendud0d4dUI0TVZobGtNSndBSXRS?=
 =?utf-8?B?dmxiZFJhNTNmdVN0WVFGV0FOTTBXVDE0QlU3MTdJWXZISjM2SkhXcUNVNU43?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9872e7c8-56e3-4cf9-a6ea-08dadd963d8b
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2022 05:44:18.7647 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gdswIAnj1WaVAEG9KPLQT2O1DgpDFRdg4PBNSBWsg+Aboa3c3YeC7ADupD3YHiqzC/UJFR2gBLMDM17I97TrAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6540
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670996667; x=1702532667;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4CYvatGn7kE76yEYu28sb8xZEv/hR71X4kvIglH7Bc8=;
 b=gk02oa0nesrwnt4KSM0tvKEXXF5Cwyi0YXK15bxL3cI/XMLRZsnIZBH6
 ZzT+Tmo+7YFuTLRVg7xPS70KIiiErnP0sUxJdX7qCUInYMs5oo/S8bD5u
 7Z131BorZh8AJCCZWTnR7OGNvQs8rAAuosxdHvR36ir2AlOHkHoYLsq+I
 ny4ljRSk8dx73QEQIS74B7fWBKdIngxqEF38jTYKl9ad929e4f4TIPGWH
 u1kodnCGl8De7XbGYuRKrEgOXe4OYmv8rpGgbD0sN+QPOqtZkZJ+LVrYX
 Br6uJTFZiDpOUAKGyUx2bmg6gV/JG0KC75NlwKsD9+SuXEtAdtHfZp/4u
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gk02oa0n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] e1000e eeprom_bad_csum_allow option
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
Cc: "Avivi, Amir" <amir.avivi@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/13/2022 16:03, Geoff Winkless wrote:
> Hi
> 
> First off, apologies if this is the wrong place to send this email, in
> which case please do point me in the right direction.
> 
> We recently came across an issue with an embedded system that
> historically ran 2.6.x and which we've (in beta) updated to kernel
> 5.14.5 (since that's the version we're running on our more recent
> devices, and I wanted to standardise): after an unexpected power
> cycle, the e1000e came up with apparently-corrupted MAC, and the unit
> didn't appear on the network.
> 
> e1000e: Intel(R) PRO/1000 Network Driver
> e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> e1000e 0000:01:00.0: Interrupt Throttling Rate (ints/sec) set to
> dynamic conservative mode
> e1000e 0000:01:00.0: Invalid MAC Address: 00:00:00:00:00:00
> e1000e: probe of 0000:01:00.0 failed with error -5
> 
> Now the old e1000 driver accepts this broken MAC, albeit while
> complaining about it, allowing userspace to force a MAC address and
> continue, but the e1000e just drops out and rejects it.
Hello Geoff,
e1000 and e1000e drivers work on absolutely different HW. Not only MAC 
address loaded from NVM. Many HW parameters are required for HW 
initialization and loaded from NVM. Loading a corrupted NVM will put the 
device in an unstable state. More destructive things than wrong MAC 
addresses would happen. We can not allow the initialization of devices 
from corrupted NVM.
I would suggest contacting with board vendor and understanding how your 
NVM corrupted (electrical glitch, board design).
Moreover, new LAN controllers (from TGL) do not allow SW/drivers to fix 
the bad/corrupted NVM.
> 
> Is there any reason why the e1000e couldn't do the same (and also with
> the probably-related NVM checksum failure), as per the attached patch
> based on the e1000 code?
> 
> I took out the dump_eeprom function the e1000 uses because a) I didn't
> need it and b) I don't have the time to gain enough understanding of
> the differences between the e1000 and e1000e drivers to port it
> without (almost certainly) messing it up.
> 
> Oddly enough, booting with 2.6 seemed to fix the problem (it came up
> with its normal MAC and would then subsequently boot fine into 5.14.5)
> which leaves me wondering if there's something else the e1000 driver
> does that we should also consider porting. It could just have been a
> coincidence, though.
> 
> Thanks
> 
> Geoff
> 
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
Thanks,
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
