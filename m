Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B72B048E1E3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jan 2022 02:04:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB86C84D51;
	Fri, 14 Jan 2022 01:04:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v-3JJllbSJz4; Fri, 14 Jan 2022 01:04:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83CEF84C6B;
	Fri, 14 Jan 2022 01:04:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 303891BF841
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 01:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 26B92415A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 01:04:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wKxLzpkbmf74 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jan 2022 01:04:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DECA4415A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 01:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642122280; x=1673658280;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xCxFpxgc066XGrMjMDj1bF2fSE1qDe1fe1nbVrHyjLs=;
 b=KqL8Fc/PRphnAxvTcfVSRzGfxrHEZWsjrduTmhVh0LtFOEzDrJTvf5ur
 j6lV76t+qugYRy3BiYTDosNN33isHP7vt1wntJJLLYWGuCPazipg43iuB
 V7WKQxVec3Imo4j1gQbfSzIluH3tTqMCxbuUTz0VGWtFCiOsJJ0ArVbmb
 pPxD4IbEoHf39GjNAp3fFShJrCgk0VFPQGtMDqM/da+gxsO9GrdxOVf8Z
 f7sn7f/NG2CZjkqvWzFBgzyqtwZFhfrtehvOBt2LhiUHoPcZN5iSXmqUg
 3FL2Z37hCoCqAjycXe5wWDV0wgIoouYR5km/7EJfqYRmDBnf6HFaiWIvF w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="224136689"
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="224136689"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 17:04:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="559310162"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 13 Jan 2022 17:04:39 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 17:04:39 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 13 Jan 2022 17:04:38 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 13 Jan 2022 17:04:39 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 13 Jan 2022 17:04:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iBfqTCFdoHdOF7pFgH7rGx8j6awX34SpTuCmIxYfL4bXgc350LtGLUEG9vl74lNW/yBHTfWS4P2DoU2fC/EqDYHadYt0tbM1J1aZhrl30q2uOXHQhCbqGi3e3cn2S9zhJBuIE/LioFmMJMhe5tuPmDdrYl3vqreIcrdXgndqzKEcK4WXaUEDJ5XTjxbeSgUBSYeXyCFDa26dyjdasevK8OzCwESMW2Ckb+ELc/V+6cVNApSLMcUccutnW3gbzsfnJFN6C4rhJju7wU/XCALBoZipb8DPpJUroYnnuUmu8Cjt+PbfjTbVTJWZ17aJV6tY2LhGnZCeFpfvuxnWLPUU9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/vIG29TSR7SdJRLd/xneebDEeDeGsYoZY6gepv7koPg=;
 b=FAaNb6nNxK3d3gQga+SmFiYomcpgzc8Xe7uu0jfe03PZe3e5SNn0wYvXy29lD4L30Mxk06be39yWwTkhKLam80grv9dxJjAgHLqcz5cEjmnAYpEad2JdxtwGdnqjeeO4CI8LbIlq/2SeeQvZvczrzuSJpyCkvgf9cEjFLeUGFDG/k6/oRXjgph4CFgF+8hZarI8/wJBcoHnSjIhk4z46cF+Je3CAvY6J7VxPDKn00X76O2WMpX6B42Bw0M7KGfcaBP+0idsNcZ2dX0OkrpuDlYMuYm72yK27JRxZGczHDpM9xkUWhTqi36DxIpx0qwtoEIeDk97MBbZYZlr+nBJSzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3518.namprd11.prod.outlook.com (2603:10b6:805:da::16)
 by CY4PR11MB0054.namprd11.prod.outlook.com (2603:10b6:910:79::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.9; Fri, 14 Jan
 2022 01:04:34 +0000
Received: from SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::4d44:28a1:355b:71de]) by SN6PR11MB3518.namprd11.prod.outlook.com
 ([fe80::4d44:28a1:355b:71de%5]) with mapi id 15.20.4888.011; Fri, 14 Jan 2022
 01:04:34 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] i40e: Disable
 hw-tc-offload feature on driver load.
Thread-Index: AQHX8nj5ECykGf28ekyc2AQaIGWLnaw1j9SAgADyzQCAK1yzwA==
Date: Fri, 14 Jan 2022 01:04:34 +0000
Message-ID: <SN6PR11MB3518E2C2FA32107CAAB9B974EB549@SN6PR11MB3518.namprd11.prod.outlook.com>
References: <20211216123113.2142-1-mateusz.palczewski@intel.com>
 <253c5cfe-5cac-2eb0-e952-32417efae975@intel.com>
 <BL1PR11MB52887B5E0CF12C5E3956607A87789@BL1PR11MB5288.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB52887B5E0CF12C5E3956607A87789@BL1PR11MB5288.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 85a4168b-fb1a-46c7-01e2-08d9d6f9d41e
x-ms-traffictypediagnostic: CY4PR11MB0054:EE_
x-microsoft-antispam-prvs: <CY4PR11MB0054BC951E7766CFD6944D8EEB549@CY4PR11MB0054.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Awu80PcG0AH6SDUworZM2P/ByhZ+UpnLaKO75rxrtbMbqzDS7znL6CJo46oCe3fn9mXsv9+9ReLTQQ2PxqZxrdkk7cXcE1Pe9DOojo3ccevdZJLInQR30bmtGOC8xeYpnOqrnyUQegKMh3YnbPmQJXOPQR7fViuASlxi2V3INvs2gab56g1eG6AdjggaN/CCMceMg7KSQh4dDNgYyPmF6Z9t9HDpgKWG9q/ayYjSdC+CsY6gongX4kN5jVJejmGjrQ2QTdRiFwyIkGATpnLkO4a1MzmlUcmAGO0erOn3RiifPf9s3jq5PM5oPL+HnYHszUcb6cnIomieDE9d2FOdE5cMMQxoMBvhB923d0Jb50xsB6Guk14sG6WlGSUVyquUJANCdM7sxuD2BnNM4pKncsMzgZd78DS7SD6muxPbIg5ZJ47jVTyjmU6H+T0gaADt5PqLtLgBWPJ+e//3D5IJP1TidZHjbTea+WIey56E6zJl09SAHT6MFNtdmVO5pkVBKxO1Ul3KItYzcwSFt+eM0bLTDh6RUS26SHFXdT8ofH4ZK+ZlSzRCfVO5Nua8/lgk2rYdMYdgchn6VDA61elm/Bohw1veEPDsNlJZZBF1bBC69hg4dycOIv0siIykZOMbdQlBRfuP6WYwXVGxqan8075Qe12uVRTq+/CMJHhk5GKIZNUKeNX/7UNptuCFLsQayQ4cZ+a9wz+td+wlj4QUxqmeYED2C+5bhUK7Dtm97aDayGftEEpLyfOkfuVGqsg457lZWiPTrN3nx7EsEWUEnPIpsB0tVYbbfEybI6zHa8U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(33656002)(71200400001)(26005)(5660300002)(9686003)(86362001)(8676002)(186003)(2906002)(83380400001)(82960400001)(4326008)(66446008)(64756008)(66556008)(66476007)(55016003)(6506007)(107886003)(38100700002)(122000001)(508600001)(7696005)(76116006)(110136005)(54906003)(316002)(38070700005)(52536014)(8936002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hiXoj/98OqxPpOOTQqPwQqA/KnTpupF84IJ+yUzLtLzRz5Ptk2rc7X/GwdDU?=
 =?us-ascii?Q?3YZw3sXk2eC+SLxEl7M9BzVpHXeCQcqXabXr+VWNBV8OqXqiaciPRSeODND1?=
 =?us-ascii?Q?XhZbrbFE8DDujeUtMFlWQoSVjGUTADT0G5QmDSOcUMXx5P/J8vHg3F3QaurY?=
 =?us-ascii?Q?meqdTpIWtVvyWWCf6W1eeJDjeB4SN5eZVhcLwPLO0AyX+iB/3DjUSjaRsYy5?=
 =?us-ascii?Q?xLaggj876rAb922BLWrh3Y3nmkmtJVtlX+AiF9/7zZ22bp/pCNxt139m3QYq?=
 =?us-ascii?Q?qLyD0BqFjP+Be8aE/qyneaIZ8xNaZKzkM68dtySQRhKFwJpwyUDd9Lnje06N?=
 =?us-ascii?Q?RuDOnHTyjIZ2gx9cqI4OHQg2IPJ8cW4a/wDlbMCnXr7jhK+a0LLCMr6kfSXU?=
 =?us-ascii?Q?HF3z9hdKwYS18UfiRvvXLaxf8Yzk5mPO6N0tTzFSpnByA9b9GMP1rasPA6YS?=
 =?us-ascii?Q?FD1fBHfpS08Xeet1hZ1rYRZtBYpbqStvekcaz1YxfKWqMvjSjQDJrhtHgFE8?=
 =?us-ascii?Q?cgsU7rVCht+yKZRNwVf9E4QXFe9g8rKbzttPfyo2udjL7gV+E/TAIGJm39uO?=
 =?us-ascii?Q?t906N9NMqXFjj2KLzhHjnQAl3D9dvnHPT/QyuOjSsucrLOkBR34IdA3L5mD4?=
 =?us-ascii?Q?CYEPFLAmlPM/7SRiJItPMxVAZysfXCxk4jZ+RFwtNXCNoWdrtFuG8MYkVPEt?=
 =?us-ascii?Q?r5bRBCZioPpCJqMTb2oxy4lnqtkG+givrC32lDQY5p+7VH8CIOEQk4nT98iv?=
 =?us-ascii?Q?mOYEHdP3fLGRy5jmDCLnYEVeAm4aAfd3P1TE985/0OKArQuSuvn8bG6yChc2?=
 =?us-ascii?Q?Q7pYcrFSzzRMjwtoxbYelppqk85YUQFSaV1ZahgenPkcVQms7mW9znZAer2d?=
 =?us-ascii?Q?LR6Ji3M+6B3jLPX7+opUWaRjD3sf+dfrLUBqo1RLWzsv33CIbcB+uvYw2nUj?=
 =?us-ascii?Q?rke5Zaic4TgPy+knZaQKLNC5ND4/f19SGiM/sO9LXhi+qwfa5aX6hBNBNJaW?=
 =?us-ascii?Q?WVO2/LjZNXPe5ak8YDN5Iv0RsIY5rYIh6zgiw+YZS+aRYCQKMpR+nQ6Bz89g?=
 =?us-ascii?Q?Rwd7uhadbX3uqToQVgGS95oIWTmlghdefSSt1NCqIc2+FVZX0swede7+JnTl?=
 =?us-ascii?Q?hHGT7GgQJXkHmulHr3PNWvv5UeIG3NAm2lpeGm1LNIQ0/xvxLKLJpDnuYrFL?=
 =?us-ascii?Q?5RTUa1domlTVol/qNYg3XmkC0CSEPYnwCFia3k4Q3bXSQtxsuvm5tsTybil0?=
 =?us-ascii?Q?kWzQC5GwV8tW2P3OrgSs4CI8iH3RN5xjGInfxa88K6xVnCPBEu1WcpVcxTp8?=
 =?us-ascii?Q?hNIzmNz/aHHTrdvUzkf6saODfROv6xSsZRGRpk8f/woIdhsRg17MoC3f7IZj?=
 =?us-ascii?Q?AQxO2i6564Qbl/omfhtNDkVFIcJ2mPNg0TF2br8OyQxW/10fO4Hf9GkRg5/J?=
 =?us-ascii?Q?2M3/5VnGdsQG42QpLlbC7e6scZK1oBrCKEw0CHewYpZZUOnca0B5Q/B4E7BM?=
 =?us-ascii?Q?DgSzzG00T+z36wPbPW57U+SyEWuqYzQRd9KCS84Mk8WK6mUAiyg+y4U7jiCx?=
 =?us-ascii?Q?EK0ZZ66p3Q+PSJZ4dZyG3UeJLRqKJM/3cwA+4TH1Wxls+bOnzRwaqSjBBycQ?=
 =?us-ascii?Q?fg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85a4168b-fb1a-46c7-01e2-08d9d6f9d41e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2022 01:04:34.2010 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q3QXcZt0DjEnjGKmaU2+OtyO8OiK1uV+IKEj3DpNcdUGmGG196w9/EmDYO3sNNChqDY1F8vbD0ek5CmjQDmEow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB0054
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] i40e: Disable
 hw-tc-offload feature on driver load.
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>, "Zulinski,
 NorbertX" <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Palczewski, Mateusz
>Sent: Friday, December 17, 2021 2:50 AM
>To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; intel-wired-
>lan@lists.osuosl.org
>Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>;
>Zulinski, NorbertX <norbertx.zulinski@intel.com>
>Subject: Re: [Intel-wired-lan] [PATCH net-next v3] i40e: Disable hw-tc-offload
>feature on driver load.
>
>>On 12/16/2021 4:31 AM, Mateusz Palczewski wrote:
>>> After loading driver hw-tc-offload is enabled by default.
>>> Change the behaviour of driver to disable hw-tc-offload by default as
>>> this is the expected state. Additionaly since this impacts ntuple
>>> feature state change the way of checking NETIF_F_HW_TC flag.
>>
>>Again, why are you doing this? What's wrong with having it enabled by
>>default? Does a user have to turn it on before programming rules after
>>your change? In order for the maintainers to be interested to apply
>>your patch, you have to explain why it benefits them/kernel/community.
>>
>>> Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
>>> Signed-off-by: Przemyslaw Patynowski
>>> <przemyslawx.patynowski@intel.com>
>>> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
>>
>>Why are there three sign-offs? Did three people work on this patch? If
>>so, did they co-develop it? Three sign-offs in a row would be what's
>>done if you're just handling the patch from one user to another. And in
>>that case, then usually the first person listed would be also credited
>>with the patch upstream by being the From: and set as git author.
>>
>>
>This patch was made as squash of two different ones as requested here:
>https://patchwork.ozlabs.org/project/intel-wired-
>lan/cover/20211213121248.4137-1-mateusz.palczewski@intel.com/
>Since both of the authors of the patches agreed to it in internal review I
>believe that three signed-offs are correct here.
>>> ---
>>>   v3: Removed internal tags and fixed commit message
>>>   v2: Squashed two commits into one
>>> ---
>>>   drivers/net/ethernet/intel/i40e/i40e_main.c | 5 ++++-
>>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>>
Tested-by: Dave Switzer <david.switzer@intel.com>
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
