Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 103962ECEC6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jan 2021 12:35:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 524AA204E0;
	Thu,  7 Jan 2021 11:35:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nD-YojsBHIdT; Thu,  7 Jan 2021 11:35:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 98603204E8;
	Thu,  7 Jan 2021 11:35:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F3DB21BF37C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jan 2021 11:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EE6C787364
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jan 2021 11:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SzvbV+GAB-sQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Jan 2021 11:35:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DFA8787359
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jan 2021 11:35:12 +0000 (UTC)
IronPort-SDR: pezZ3NioNxukOEOH5ajMROLJTW4U1BbjmUMlXPb4mShjibnMrbUA7vlhth/6bIuZNokoP/q0Ya
 CE/Lori5bBxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="156598997"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="156598997"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 03:35:11 -0800
IronPort-SDR: qsYVnJq2zQZa6iqjGfMY5GLKGPksfICaCFC8ETWODIa+rTUacsxzD8drczCaShnkqa8UebmT2Q
 yIRrhDDaKw4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="395930468"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 07 Jan 2021 03:35:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Jan 2021 03:35:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 7 Jan 2021 03:35:11 -0800
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.59) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 7 Jan 2021 03:35:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gfu80Zv0kgzJnFAWTdo78V7tBxAEcakuP7eYQXZmNcnbpxsSZva2Nh/zU05zbbiFZ7efGUKvSsKUwpybQ2VkEr3LbxmWTj+gvyxu+Yaxm+w3WYaLqRvR8tq0qp3GKnMM6debWSkG97BSa0v2n5Gy7FLmT4p29xNLTdbsYJDArTTUxGW/POMvg4CstBPER0QTtg7mVosT7SpvrY95JH0SfeiTj2GTiItJCNHe4BAgT3ymg85223wqe2zgHZRHrnlSJo5GMJ4qgoRhVw0RfseC1OLXq770tJX+RiU/CtIhgEwlbBR9VwkWuXh04sKa0oHFgLMd/tUe+nTvbALmMmZusQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7zWt8Ko9jvbthHoz4pzG+HU+gg0OWj74iOEEaOOCXSE=;
 b=DS2IvYyjGAYoJkJ0HcKoxLeuRBl++41iQ+v97ldu+oM+4rn0wsqcED+/tHs9e+zewKfeeoQT8L5fpyWbH8tOX13TJoZ1aBO+7hfAn+WSc7EwVj1TSAWZdTEGt8kFA2oLfFYH8Ffd+lWyjNDtvpAVJH06Xfgbn+YuNebYMx5+dGcVqEnN55KdAWMrO7+inu890CCK0jOy4JS2w6HNkCZ6rVQue8lqUugnrQ7+3TDgNspLnYIuyX6ufvT+wCbKuIMF5s3ujiGFjbTrNpCUDFrUxyEBeQfiNs/BibPKSpzak/jINLH4fmfs72qcEGgGSNUwYdFukyr1ZkPWPP2F3rf+DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7zWt8Ko9jvbthHoz4pzG+HU+gg0OWj74iOEEaOOCXSE=;
 b=o2UYNKsLl6eNzvVa53OQ0qrM/XLuWgpe5wJI7/vMjV4Cm1pFwHBjFcU2GXFNo9lwY8o4/CxBdN41RrktwRDFpJEZxonG89zJunPNWHESKQTirERsC8OMxRZVe5egEmJIAvl+iMnA32Dx7xmst5Ec7puJ+L6Z7pEd+38/Ay1RnQ8=
Received: from MN2PR11MB4616.namprd11.prod.outlook.com (2603:10b6:208:26f::21)
 by MN2PR11MB4760.namprd11.prod.outlook.com (2603:10b6:208:266::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Thu, 7 Jan
 2021 11:35:08 +0000
Received: from MN2PR11MB4616.namprd11.prod.outlook.com
 ([fe80::996d:87e7:a33d:5917]) by MN2PR11MB4616.namprd11.prod.outlook.com
 ([fe80::996d:87e7:a33d:5917%6]) with mapi id 15.20.3700.026; Thu, 7 Jan 2021
 11:35:08 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Richard Cochran <richardcochran@gmail.com>
Thread-Topic: [PATCH v8] i40e: add support for PTP external synchronization
 clock
Thread-Index: AQHWzUjc2qylRfrc6E+NUY0gRQ92g6ntIqCAgC8T+BA=
Date: Thu, 7 Jan 2021 11:35:07 +0000
Message-ID: <MN2PR11MB4616EBBFA9D3C2A98BB6FACAF3AF0@MN2PR11MB4616.namprd11.prod.outlook.com>
References: <3dcb78c0-b4cf-8686-20d6-3cd766e7fb1a@molgen.mpg.de>
 <20201208154119.106511-1-piotr.kwapulinski@intel.com>
 <20201208123523.GA17489@hoboy.vegasvil.org>
In-Reply-To: <20201208123523.GA17489@hoboy.vegasvil.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [89.64.111.39]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f553143e-255c-49a1-2286-08d8b300492c
x-ms-traffictypediagnostic: MN2PR11MB4760:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB47603B67AED5622CB62DF4CDF3AF0@MN2PR11MB4760.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HTh9JbS7HzXwKubn0qLtMNHKSTpHOaIHPz3KAHXW2ILaLCMuQTaAWNtqBqMS1gn7F9DKG8+7hEeGHdhVGnusAE/PEv3hCxgK3VLUp6T796SWK/w2+oReNn7gr5DgeEOd+w510i/2qteiuwWu2sAsYPXj8aerl6Oq4Tt1nhyqxcmpRyzOVYvS4W5PmdofDMXBJP3/Tq/iLgPp9IH93+TBaj7uvyW85riWV/ltnd2inHbNwdqYK5fh1Scz4N84Zc1rPmSk592UwimLqdQxCWVjPWmlb5sCbFnw5oD5DDNodOy4zGFiq6D8S2lbkQk4aeuWx046wf63ocrYMOe+MgoIqausH8I4k+LmzUfXl3ESVnr3Z9i3+1lQalQWP5UrHAP5krEgUoUuCCwSI0BjI46JCQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4616.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(376002)(136003)(396003)(366004)(8936002)(66946007)(76116006)(54906003)(107886003)(71200400001)(2906002)(66476007)(64756008)(66446008)(66556008)(7696005)(6916009)(9686003)(55016002)(316002)(83380400001)(6506007)(8676002)(86362001)(478600001)(52536014)(4326008)(5660300002)(33656002)(186003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?XK+obbNY1gTrmP9yeoTJDOzt7nPxdlm3uHKLhF7jw6vLyBrrNvLOioYXqIbv?=
 =?us-ascii?Q?L5vZLUyYykou68raMQQSdEA4auluvfpsWPo3UHI5y/Js3FTpwIUznWc5JSvi?=
 =?us-ascii?Q?AF+ZyyKXkPWXo7Cxu+9ttsLSbwKUS0Y00uBO6yhy+tQxqNHdmOQxNdlL3XCV?=
 =?us-ascii?Q?KwGXw+3wrC/Eo78a8rBX6VExYvsrnOQCBOHlb6yzZVBVx0K90beLwUO3eK/u?=
 =?us-ascii?Q?ifW4EH3f/9aRvitJn90DAbEjRAOFbdIYon+M2SppDmRTaHSJ2mjhJ5G+gCmF?=
 =?us-ascii?Q?hR3sfuq/CMJuCPWTrl6gUKFeEQW2h8kz3fwKOFP9kIBI5c9XBLOm8A0NmnHS?=
 =?us-ascii?Q?rjcqfmwBn9tM5M4WcouNVDvexQMyTAaiKdvcOfs1Ar63CQkvs8jHFxXZa4XG?=
 =?us-ascii?Q?zYJUw/vTKyP2TQFX493Y2ucWWGwW8ldM9/hmUk9q40bqLdcTt5bY1Ma4vcPE?=
 =?us-ascii?Q?BbX/TzIeSP3X7vJawJZTTnE9lby3fArg7MiKuFtKbLHyns66nK6kF4ioaGcu?=
 =?us-ascii?Q?hwMWbdhsIt2vbtkYfh4eFJV2IasAynN8q/RLpyYeBxCs8brnwNGivrX0YnRd?=
 =?us-ascii?Q?HPYhKry2HJ8mRSWta3Q+XNkjb2w8UIAvcEMOJ6VRxlll8DKubv/QdzrcxXMJ?=
 =?us-ascii?Q?p15JAOUeKqVJqraeop3MyCe8qe8t46GkOq2ULe3JYrxRs8iXjhc8yLN0AVmt?=
 =?us-ascii?Q?tTJ9UQjqbUFVkMaTSZbQ/WwZ33VM/VyDha7xRTCwTT2KFYetanNCL4NXOhPQ?=
 =?us-ascii?Q?aO3wZN/gzb/5m+AorRBJ8mFIZn9BZLUxONFeiR5WVeJsNmH7C7xZvOupz5ZX?=
 =?us-ascii?Q?V9kEsGKaUg2DghWISp8+vSL8I9hHlkWeWkA2AgktRx+I2+8sAKI44lUuu/CP?=
 =?us-ascii?Q?GYLoBrxCQUYzGSDbKIZBD+OXHpFB7e+O9KIqWK8GQHDug744GF4I5md52uN4?=
 =?us-ascii?Q?YhZnURt2xMTTBVJiCXOa2dgEPX03uFAWqedo+UZGeso=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4616.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f553143e-255c-49a1-2286-08d8b300492c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2021 11:35:08.0363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aKqzCcTjR8rxCARlYWdzZV2dy99VY52y+jzGS6bC4z1PiqPO0gMpEgX73ZKIihPw/eEtrO/BMUzRcxknak0Bilaj1oOQFsy40KT7q3lC5Zo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4760
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v8] i40e: add support for PTP external
 synchronization clock
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Kwapulinski,
 Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>> @@ -145,14 +398,35 @@ static int i40e_ptp_adjfreq(struct 
>> ptp_clock_info *ptp, s32 ppb)  static int i40e_ptp_adjtime(struct 
>> ptp_clock_info *ptp, s64 delta)  {
>>  	struct i40e_pf *pf = container_of(ptp, struct i40e_pf, ptp_caps);
>> -	struct timespec64 now, then;
>> +	struct i40e_hw *hw = &pf->hw;
>>  
>> -	then = ns_to_timespec64(delta);
>>  	mutex_lock(&pf->tmreg_lock);
>>  
>> -	i40e_ptp_read(pf, &now, NULL);
>> -	now = timespec64_add(now, then);
>> -	i40e_ptp_write(pf, (const struct timespec64 *)&now);
>> +	if (delta > -999999900LL && delta < 999999900LL) {
>> +		int neg_adj = 0;
>> +		u32 timadj;
>> +		u64 tohw;
>> +
>> +		if (delta < 0) {
>> +			neg_adj = 1;
>> +			tohw = -delta;
>> +		} else {
>> +			tohw = delta;
>> +		}
>> +
>> +		timadj = tohw & 0x3FFFFFFF;
>> +		if (neg_adj)
>> +			timadj |= I40E_ISGN;
>> +		wr32(hw, I40E_PRTTSYN_ADJ, timadj);
>> +	} else {
>> +		struct timespec64 then, now;
>> +
>> +		then = ns_to_timespec64(delta);
>> +		i40e_ptp_read(pf, &now, NULL);
>> +		now = timespec64_add(now, then);
>> +		i40e_ptp_write(pf, (const struct timespec64 *)&now);
>> +		i40e_ptp_set_1pps_signal_hw(pf);
>
>This enables a 1-PPS hardware output unconditionally?
>
>> +	}
>>  
>>  	mutex_unlock(&pf->tmreg_lock);
>>  
>
>> @@ -839,6 +1492,8 @@ void i40e_ptp_init(struct i40e_pf *pf)
>>  		/* Restore the clock time based on last known value */
>>  		i40e_ptp_restore_hw_time(pf);
>>  	}
>> +
>> +	i40e_ptp_set_1pps_signal_hw(pf);
>>  }
>
>Here again the 1-PPS is enabled unconditionally.
>
>Instead, why not allow the user to enable/disable this?
>
>There is a new ioctl variant designed for periodic outputs like a PPS.
>
>Bits of the ptp_perout_request.flags field can contain:
>
> PTP_PEROUT_DUTY_CYCLE
> PTP_PEROUT_PHASE
>
>You can enable the PPS when they are present in the request.

Thank you for review Richard.
I've uploaded the version 9 of the patch that also includes support for all possible HW PIN configurations.
I plan to implement your suggestions.
Do you think that for now your suggestions prevent this patch to be merged.
I understand that they are more functional suggestions rather than bugs.

Best Regards
Piotr
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
