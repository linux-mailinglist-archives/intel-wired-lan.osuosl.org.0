Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC37716F6E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 23:12:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AE5C41C0B;
	Tue, 30 May 2023 21:12:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AE5C41C0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685481161;
	bh=b4UukCzS+UW5+BSIm38JPZslHzKvP0aHHTXChFrXTIc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jbjo9D8qKcZ6dEO25NMECAhcP6baalKk5+sQzgdwZyoYzibUniQg5+QUTHiz6FC5I
	 dcPve1FwDqaKmNe5y3sso2ZxUGy6EgUGzNqFv8abxUFkAgBNN8mY8VgF5Z0a5pApxj
	 HvP3n4ssOnl/3e6G2IjgZz8GN0QyHnSt5p8fQemPkR97+VTbbr+jIOnbfFnxERWtz8
	 1UoV0IHCEAx5qp5ReSWDiCtllxOL7gvrmMJCV6EPW0QgOrk8GHM3NMnafwLWyn3e74
	 hUn57yUZ8kBV7t9/8+HZAWbQN8B7X8tXDpCbwx5i5Z+Wy+EU8U4dUEHpYHg7TwSWOd
	 5RSVzpyq0m9RQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lLzfM_tA3LjZ; Tue, 30 May 2023 21:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2231641BDE;
	Tue, 30 May 2023 21:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2231641BDE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4C7F91BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 21:12:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2D17741C0A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 21:12:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D17741C0A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wkL4pJgUtVCL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 21:12:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D401D41BDE
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D401D41BDE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 21:12:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="335398644"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="335398644"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 14:12:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="850945795"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="850945795"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 30 May 2023 14:12:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 14:12:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 14:12:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 14:12:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 14:12:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KVz25H1xFiJ2Q5BCRnpGdlBeJ8RZ1ly4UdbMkWAhg4swTcEesREVbn70kAzOheXPurey0AMHAsUXjoNkFvn/smIAyjkWIlVU3CzER64RRhguScaeKgCemB1HwzgIj/HdECaW0B6Obc/BmmEIWg8++euhraAmDilffVKsf4mpjQeBk8nNQP0EecTKtCHdSNpJY9VAEOkFSpxzTgtvwRHwSa9RCkjaY5InIFcBlrDnoxHGtAK/QNEgebuZJd5lhbEgWnvZOcUA+ovgsK1RcTyVIf2ia3DTe7L6NlUPFL4EA7WYTQldAiaSS7gAzs5TaOr3Blx5efHwixEj7V9QXDYn/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y7Jro+sTo0+b06rYOMKJjwx6+VsKVlxFc3ulVdliBPU=;
 b=LJoQEqExmXIn7cpVlBA0YU70NlSSvSvyP/S97xi6yy/dDwPsi+y86CEFHwUxlmpE1F04tK+DHy8T6HkzbQ3afZSB/sNSAcOT2H4SmgcyEq9yBpl3yeMzCV7VhKSMIx/xsXi3NEIfPso4cfF1NeSuzUeUMBlqofZrfUUsfn9XnuM/mvLRpkBKObsCgrqqGHe9CsG28y++PAyRFTg7F91+qEMIy2USJzaQmTSinlTvi3DjvtSjyis3FfP8Il2cFHQJ/hi+ZFzk44xxFcn+wt91NlDG2Mt5dwmxo/iPp6h2sNxkayLaQQ+NzZV/tUBcc1vyBLH7SZTUp9UPM0OZJitnvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB7168.namprd11.prod.outlook.com (2603:10b6:510:1e9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Tue, 30 May
 2023 21:12:28 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4e5a:e4d6:5676:b0ab]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4e5a:e4d6:5676:b0ab%5]) with mapi id 15.20.6455.020; Tue, 30 May 2023
 21:12:28 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: mschmidt <mschmidt@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: use spin_lock_bh for Tx
 timestamp tracker lock
Thread-Index: AQHZkB+kEQIIdkzn8ECVdDqBTfOQaK9zULGAgAAFyWA=
Date: Tue, 30 May 2023 21:12:28 +0000
Message-ID: <CO1PR11MB50895A92CEEFE033550E6121D64B9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20230526221541.2682533-1-jacob.e.keller@intel.com>
 <CADEbmW3xVryU1aK93oEf7Kx3KgSg8_xfoeSQMU-OYm=AeLWotQ@mail.gmail.com>
In-Reply-To: <CADEbmW3xVryU1aK93oEf7Kx3KgSg8_xfoeSQMU-OYm=AeLWotQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH0PR11MB7168:EE_
x-ms-office365-filtering-correlation-id: 0ab741a9-631b-4512-52ea-08db6152933c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m/3Mi8KPYyHKUtGJYWMJcSZryfvM53tqpOoPMAnIWbwcGz0xjW+ZcDy3C2r+8tb6ws3Qy5wgpsLCqy52MQat9OCDI1IHCKRhg9LjLpWSzNRWDyuB9KS1uB4xJ+r7XvYqQqBhU5Cw7UvEWP1tK/jzUxajOj5qtUbqwLjKF/4mEB970iFmsStl7tiEWonC92U1QfJhzo3CcLzNe+B319RaMZ0abUaxbCYEUBS9cUyvOiqwP4qJen4DeI7TlKhrA+0SH1w+MX6TdsJB0e4XBA4SPKFDs9HeXrUaDtEKlT9j57t2pMN0A4fWAjhKxtTk7HvZfzOUDQ1TCYz0uWP7hcYjmLflYRUGyttZSPHs1okqyDBU2RYQrZAEuDzXbQu0kuUFXgkby0m2/oh4HfPyNFMIJ9vzi/ErDt67oWEoKLgIsUGCX+zvfXoqhiADbMeHRb9CuKs42pn6Vr5UDRryYaO18vOsq0G3RgCl9s5zpZWymO/XrrdkcMZExN0/C1EDEmrjTw/bkH0cGYYNn1qSyfFB2jC6otNhDF5TeOpOz+T104Lagf1tJfxw8ckyZQuEHepsJhOaCE9HB7wqvD/GsNGxYGsYviLfDp8LYtiYJlEZIk/BzhQiExvRlLrDdpDA11Ku
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(396003)(366004)(376002)(136003)(451199021)(7696005)(41300700001)(86362001)(6916009)(316002)(4326008)(71200400001)(33656002)(38070700005)(55016003)(66446008)(76116006)(66556008)(66476007)(66946007)(2906002)(64756008)(186003)(52536014)(5660300002)(82960400001)(54906003)(122000001)(8936002)(83380400001)(6506007)(8676002)(53546011)(26005)(107886003)(9686003)(478600001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MkFhaytzS0hnSmFnYVlBYTFBUG44cmdML3hvc25ib1hpWFFmYjRNekwzaUJH?=
 =?utf-8?B?bVRRYzlrL1VOeDNXSEZWLzBrNjBHR0ovNGpTVUFnVVB6M0g0N3BKTHZWRm1R?=
 =?utf-8?B?a2dWbEs5WG01WDc0TG5BaVpmeW9MK2RtamlWUE4wTy9Rajl2VVVhMGE5MkFu?=
 =?utf-8?B?MkQ3dzlWL0I1OXU1eVRIaGtiRkZDYVdBbFVzU0M4T1diTjVPMGQyR2lodThr?=
 =?utf-8?B?ak42Q1FqTnJGQ3pGUFlLbFdXUDQ0djUyK1hvRWJ3QkpUN0tmTUlsMjlWQnRU?=
 =?utf-8?B?ZkxZU2ZaVlVHWFhUVFlxOGtUTXpmcmQ3N0c2TWJneDBmaU94cVJ6Wnc4alR2?=
 =?utf-8?B?Y1l4VElURUxpeTdnWU52bUVLcHVzQjdVOXFrRXNPNHROeWJsZ1BERDAvV09k?=
 =?utf-8?B?SDcwNExWWUxqOCtOd1RCNnVSSU96Q3o2MXA0YVhvVlluL0xXZmxmeUFzMGF0?=
 =?utf-8?B?ZXd2SUNrSmNRUmMrRUlSQWxtU1FnUXNKWlN6S2draFhLSm1lSEExN3kxSVFz?=
 =?utf-8?B?Y0k1VUFPQzRCT3dsU1k4NXQ5VVV6ZUdLUFZ5UnZTZ0lsaTlBb3AxanlSQUtO?=
 =?utf-8?B?Vmo5YXg3cTVNMk5xaTlxOTh3dG1BbzBTaWFjS2ovQytDbHNNbzZ6bU1EUkRi?=
 =?utf-8?B?dVNsWEQvdmVEMGlnNHc2cWxWMDY1QUJ3YUUxc05CY1hPOE5ZNE1tcStRRlg3?=
 =?utf-8?B?UDBYb010dlJrZGo2Zmxlcm5oczlNSVNtZE9qcGE4TWozcmZKanpFWWRvZGNv?=
 =?utf-8?B?RXI1OHhlVTdvZGhNODlKUlBkRkFyUUNRR1lVMjdJdVRPUFBPRE1ja2RVL2Rs?=
 =?utf-8?B?N3pwY2FCUXBxVmswcHUwTHQxZ1paSUcwMEw3SXRZMWxnb3lKbVlvc1dUTWlP?=
 =?utf-8?B?QlRaamFiWkx1WHM0VFpYL2h4eFJXSlFPYWw4SG9meFl4VW51eFZOK2FkNjg4?=
 =?utf-8?B?U09BZUgyUm5xbVBjSDZ6RURqRWsvbGtwWTZWYzRQYzQwSExXRnlHL0JwRWl0?=
 =?utf-8?B?WTVVOUVycDFDR0Jad3F0RzhwSXQwMG9lNkZmVnBtcytTNDJWK3ZPUE1PaTQ1?=
 =?utf-8?B?YnloV0JMSEZaeUthMkxYRGpmNUJoVHF0VUY1OGRxc2JrNUVuNldFdk15SUZx?=
 =?utf-8?B?TDBrVm9VWFptWWVvVndtNWJyQ3lFSkFCVGhCQzVLSUgxNldMSmNCU1VJckVI?=
 =?utf-8?B?QlAxSTI1QVlHSXdjTSs4TzNhek1vUGN3NHZRK1Y4eUZDV0NPcTl4aDcvZk5Y?=
 =?utf-8?B?VkIvQWNCUm80bDlqYXFEUTMxY2dJM0NFUEhzNjRxaHVWV01HdGhoa3BwVjNs?=
 =?utf-8?B?YnptK254WTg3UmN3Q2FDaUtldWFPYzJmbmlsM0RvRnd6SXZPSXl4dys4RnRT?=
 =?utf-8?B?TWRYVEhUQ1pBNkRRWVN4dGd2L0t3RTRlSkhRejgrTlREUDZkanYwSE8zL0x6?=
 =?utf-8?B?cktNNC8xWndUTlBCczc0Rlc3UXJROFhlQ0dWVnVDbEpnK09Za1Bta0pBbGN1?=
 =?utf-8?B?eEVZamJNMTZmVFFjNlVyWnNrMnNDdU1RZXd6L0ZIVjkyVmNOcVJIVHZLTnJH?=
 =?utf-8?B?S1IvKy9VOGo5TklYcVlGRzVDZlpEOXV1enVHMC9YUUZKWWJSaVduVFk2VUk3?=
 =?utf-8?B?dUtaMWM4Z3d4VmExbnVINDBjemN4enpxMk5WR0tKMVRXNXBvWGVlOEprblc1?=
 =?utf-8?B?YS80a3ZxTG5PVkhuQ1J5Rk5pTis3WmdCUHNnYUdwdnYzRXZDVDl5QWJ2NXNL?=
 =?utf-8?B?TlB1V0FPcDhoYkVvTi9selU0YXBqNjlFOUtkTnl5aWo0NVZPS0JxelZWL2JC?=
 =?utf-8?B?RnphRHVDSFUreEVqQ0RWSGoybmxReXFBeFVNcTdjSXFkbGdDN1FqRnFTS1dX?=
 =?utf-8?B?VlhHZ2JPM05hNTdmZ0R2TGN1WHZvVXlRdUgrWUNackNrRUx0T0RZRERwOWZI?=
 =?utf-8?B?cFlqNGNPOU96WlhkZDNoTzlsc2s1cy9iL25ZZTJTa2hmMWF0Q2QwM3ExeFRI?=
 =?utf-8?B?M0FiMHpTb0RsOEJ5ZkFack41WHBST0ZCS3dMWUVIbE5NK2JHTHN6aU9uU01L?=
 =?utf-8?B?Y1RtQWJyOGNIai9leUR4bCtHa0ErNCtqeDhmRk5EK3kzK2V5SWhwTUUvS3U0?=
 =?utf-8?Q?I/bZKdmiaSp+dd4x7nd+11kfb?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ab741a9-631b-4512-52ea-08db6152933c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 21:12:28.8233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ujAYVapjZiLFQLNmVbqXJZAlnpcQRGBrMXphzTLwbDE1R6UzL/rwSElU2hnba1uh67vIpzms5DvImigWJKXbUv/GR3d3d111nOaUlFwUiOg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7168
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685481152; x=1717017152;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y7Jro+sTo0+b06rYOMKJjwx6+VsKVlxFc3ulVdliBPU=;
 b=l17DvUsoz8RLxwAxcECJUQcnK9eB/FR050avHe2UARjRcTEPIvHfPUuc
 Xhy57jsEhsuqLoBHWbYMcsCrOgXd3eB8e8ll+x762qWm5/n+PUxRj1qY9
 UhXnBH6DGVSaUSOGRBXt3ta76M2pQy8DZ8KzoO1/VaeOA4usyeLIuXVxF
 1onrNwQhEQ8QTxhKjKmm7Up7vKXUt2JTVhWkAGKN/JdQUklDs4Gxyc1go
 VlnBnTAokAABSHSMCzOubPDAmdcnvIsGDuJI/7keEkajsnV+ntJ/C0D9s
 EW6h8vgzn20OTsBGHDTyBT/D3jokMdspzaAysRTeCtalnyI2/tfY2lKYC
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l17DvUso
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: use spin_lock_bh for Tx
 timestamp tracker lock
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWljaGFsIFNjaG1pZHQg
PG1zY2htaWR0QHJlZGhhdC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE1heSAzMCwgMjAyMyAxOjUx
IFBNDQo+IFRvOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4g
Q2M6IEludGVsIFdpcmVkIExBTiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBO
Z3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBCcmFuZGVi
dXJnLCBKZXNzZQ0KPiA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJl
OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldF0gaWNlOiB1c2Ugc3Bpbl9sb2NrX2Jo
IGZvciBUeA0KPiB0aW1lc3RhbXAgdHJhY2tlciBsb2NrDQo+IA0KPiBPbiBTYXQsIE1heSAyNywg
MjAyMyBhdCAxMjoxNuKAr0FNIEphY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29t
PiB3cm90ZToNCj4gPiBUaGUgVHggdGltZXN0YW1wIHRyYWNrZXIgbG9jayBpcyBhY3F1aXJlZCBk
dXJpbmcgaWNlX3B0cF90eF90c3RhbXANCj4gPiB3aGljaCBpcyBub3cgY2FsbGVkIGZyb20gdGhl
IGljZV9taXNjX2ludHJfdGhyZWFkX2ZuKCkuIEFzIGZhciBhcyBJIGNhbg0KPiA+IHVuZGVyc3Rh
bmQsIHRoaXMgdGhyZWFkIGZ1bmN0aW9uIGlzIHJ1biBpbiBzb2Z0aXJxIGNvbnRleHQsIHNvIGl0
IGlzDQo+ID4gcG9zc2libGUgZm9yIHRoZSB0aHJlYWQgdG8gaW50ZXJydXB0IGFub3RoZXIgdGhy
ZWFkIHRoYXQgaXMgY3VycmVudGx5IGluDQo+ID4gdGhlIGNyaXRpY2FsIHNlY3Rpb24gb2YgdGhp
cyBsb2NrIHdoZW4gdXNpbmcgb25seSBzcGluX2xvY2suIFRoaXMgd291bGQNCj4gPiByZXN1bHQg
aW4gYSBkZWFkbG9jay4NCj4gDQo+IE5vLCB0aGUgdGhyZWFkX2ZuIG9mIGEgdGhyZWFkZWQgSVJR
IGRvZXMgbm90IHJ1biBpbiBzb2Z0aXJxIGNvbnRleHQuDQo+IEl0IHJ1bnMgaW4gYSBrZXJuZWwg
dGhyZWFkIHRoYXQgaGFzIGl0cyBvd24gUElEIGFuZCBldmVyeXRoaW5nLiBZb3UNCj4gY2FuIHNl
ZSBJUlEgdGhyZWFkcyBpbiAicHMgYXgiIGFzICJbaXJxLzxudW1iZXI+LTxuYW1lPl0iLCB5b3Ug
Y2FuDQo+IG1vZGlmeSB0aGVpciBzY2hlZHVsaW5nIHByaW9yaXR5LCBldGMuDQo+IA0KPiBNaWNo
YWwNCj4gDQoNCkFoLi4gSG0uIEkgbXVzdCBoYXZlIG1pc3VuZGVyc3Rvb2Qgc29tZSBvZiB0aGUg
ZG9jIEkgd2FzIHJlYWRpbmcgYWJvdXQgaW4gdGhlIHJlcXVlc3RfdGhyZWFkZWRfaXJxLiBPay4g
V2UgY2FuIGRpc3JlZ2FyZCB0aGlzIHBhdGNoIHRoZW4uDQoNClRoYW5rcywNCkpha2UNCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
