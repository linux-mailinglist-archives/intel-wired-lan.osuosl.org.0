Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D8B495DDC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jan 2022 11:40:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6281360F93;
	Fri, 21 Jan 2022 10:40:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9nDAaIIuE2VD; Fri, 21 Jan 2022 10:40:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6137860F8F;
	Fri, 21 Jan 2022 10:40:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A8ECA1BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 10:40:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B98560F93
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 10:40:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2hPUIpWVPRkj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jan 2022 10:40:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB08360F8F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 10:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642761649; x=1674297649;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9ZuZvqWBzMCT3IE6+iPh7y7atnrQEZLkzau65kZd9os=;
 b=gJIU6Wi5T+Z5oWV5jm/OHQ30aB6KDM1UGXcKsj0vJxeJnpAAXNVKPAOB
 IW+NnZUuWu+fgIPP2RYKp4iPZxu8q8YdntrpV+HoE5QFhN6LPOj8hEzsv
 T6A8GZsQ4lu51HKpMMQiWydngRTLadseo6BX5CjsyCYJ1uytMptPP5pBx
 U8zKRmWZlQSwZj3MVoK4Dn03EFHhrFHHDjKN65bvrEUXAqsc7o/U6yHAp
 4f2869Sk8A+wI74iQsYr+OAyv4CWxOpJJZVT4bkiUtdwUjoautlKTCFh8
 pzaGVk52ionup1TbEyNhXUuugPg39O0TVpQp29a2WLtry2tdnUGWcX0AU w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="243221769"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="243221769"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 02:40:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="561836874"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 21 Jan 2022 02:40:48 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 21 Jan 2022 02:40:48 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 21 Jan 2022 02:40:47 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 21 Jan 2022 02:40:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VKKkxbIc6KCJ0FAIg8KI7jKZJmQJrxJfyBr3SOQlXVSfo0vgzLZXWvEL0fuyiIwgE1LvkMcBR+6FpDvAfjG7jsy23kvzImKu829dlUD3PuhNH8eJarNZfid5aJzqJpCeMXmHW1e9EKKKcrCD+f/a1fnG8mPOvK1Gb4uhZhvEYHiM0mkuuFi5hAbQMTI8zY/zYjAV8G2N3VIfPN8UStLKsMDLZR0XTJnF8NNw14tqDI1D2x037VgO7CG9cFV5YEStepz2QQXPNstV/Jv/cfTn2sJ5vzmPeP7k52RW6WgVGt7b3epB8RwxLAqOh5WrMJSOt453BDQ5ZNB2ZZcoEXTfEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=11LOYtjtU2TR7TxxHo8wpje6X2swe741G5pOHKPhScI=;
 b=ivhDhKZg6HMoeoEHCs4MA1a4rVQzSRs/Be0R9pkLwWYYq+dWfX9NFGMVrYfn1GLuliYVpS3Nqkkq/FMDYaVBpEjQjWrPK7HqdiGYcJGFZam6HCaepySvOLNhD56/MRWwyWM26W6ZEg8WvmovUyxvYKjQTh4n+KJCZBIWeixloxaSEVuMBBU+bQh5t3UKsg5TeuQWbskvkaf8hAO3I6mnWuo1Pau91DcBZGwwQSKIPyFDq7TdTXI25/BbjHUv2+XztXuTb1pKq4FjOv0JUbVWdXahWy54z2i3DCRvGXqsPmN3ewVm3+HZV+WmCRLBxfZbBAYFf6SX6tUOsJBkWBEOXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BN6PR11MB1235.namprd11.prod.outlook.com (2603:10b6:404:3c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.7; Fri, 21 Jan
 2022 10:40:45 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b%4]) with mapi id 15.20.4909.010; Fri, 21 Jan 2022
 10:40:45 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 4/4] i40e: Fix race
 condition while adding/deleting MAC/VLAN filters
Thread-Index: AQHYCUl/sPwV55OmwESeHyqGxp7diqxtU/JQ
Date: Fri, 21 Jan 2022 10:40:45 +0000
Message-ID: <BYAPR11MB3367A8ADC8B930E59A7A8C5AFC5B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220114131931.346687-1-jedrzej.jagielski@intel.com>
 <20220114131931.346687-5-jedrzej.jagielski@intel.com>
In-Reply-To: <20220114131931.346687-5-jedrzej.jagielski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ca0a819-14b8-45c5-3068-08d9dcca7b24
x-ms-traffictypediagnostic: BN6PR11MB1235:EE_
x-microsoft-antispam-prvs: <BN6PR11MB1235E6B8FE1E24E394FD1169FC5B9@BN6PR11MB1235.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e1YBrDBrnrGq+BpSTnoqdDbp2WCiruyIPjYOeingGWr90ZlnX2fiactFZcM2uxYZ0AxWoWKzp44InH/jqnnnHzX7LxLYQ9YjnXyrBrnUtu2nDm6mawGRx7JWfqtkC8bfOn+l4al8YGdAFypGH5GvXYeZv/lkdBhNTZ8ff0WU1UJ4F+opfgzUIfH7bjVfuvEi053paQWF+sxK6fTYpYICNJSSdtFH+a8Z67xGhtxJMdZRwx6PTewZrvuxQFJFnZybK0a4HRy6IqT/AqSme1U92QHzjEYA5ULrJjqX5lUfbez+2+yG06naf2XKD59cqeairGO64SY3RzFFWlsfCenrHHJvPwBR0VRELOJikH/2K5i6W1BtwFWCRsI0IDqymATamT5ckUwl1L95i7Asau6fqtKW6TFLbrr/LH5tRdQyHj80Tb6GiQwIa4nEZ+CNNja1zsaYOqKA++JjS18ogifpQ16cdWLKL4S2i50oY+yCB9rCET+Bb180ltQxg3r4ZQ1rCsaaR+DU/9rA0qMx8S+3l1bugoQGAWs3i+fZY0Vh4MlCM6gDBE3JVCdmG10BoC9VgoKD07xun8zhXvNMBsAR3zXUhA+xsTIw5BM0KPpR0BARQbsyq0Rn49MG5mAGFurxOkwm/8piqJq2Y/i2Bris8wV++XGraUZqL8I/O54PFd2WCVIxooNY/HuLQWZvlhr+o2dRU1Om+zUNsCGshIBuwA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(9686003)(54906003)(26005)(316002)(8936002)(110136005)(186003)(4326008)(82960400001)(8676002)(5660300002)(38070700005)(71200400001)(2906002)(52536014)(64756008)(66556008)(66476007)(66446008)(38100700002)(6506007)(55016003)(33656002)(53546011)(86362001)(508600001)(83380400001)(7696005)(76116006)(107886003)(66946007)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f88pVqh0wYo1EOB2Nf59va3mfNGUzmlPBFux6xSN3i0MTJYpliFE8vRavzog?=
 =?us-ascii?Q?G0hzXtjng8zxg+j1KZuwpBrrw/XquINf5IA5fWbyyrUjkSKQTlAhXk2PNkpb?=
 =?us-ascii?Q?yp37e5VIh/13eS0HY4sPO2rB8ljpbAKhFYnv56JuX6xSCbYNi/EyIJOfaiPM?=
 =?us-ascii?Q?Tu8soH620LscV4YxyoI7WAbjiL0C9NjbHWp+I2muItcNer3VPIo0b92/TUn5?=
 =?us-ascii?Q?yJ/4hvoTwfpxmWt0H+qfqWTwTTlG2BPkW5cA9geq71H806DP3D2Hv1xgNN3j?=
 =?us-ascii?Q?xy1aIC0qqT2hdUk+5T6f0t2gQW5f61gH4FELVL4AoYToFsPhHiZvfpHcWt+M?=
 =?us-ascii?Q?ZRcZVX9NX2KQ9IWtNzvRLd2X9Klg4NESHURAc93mhsyC55Jls1ESe0fw9otc?=
 =?us-ascii?Q?xqYchBWPKegwGIjUB08MNFA9QMm9tb93d6Z6B89JYnEZtZveWnIeF1H15IAA?=
 =?us-ascii?Q?/VvzsuBRVfplNZeqZmewJEnEl1nUuTac1rGwqU0NSrseXFZqDQCX8dbRNPSp?=
 =?us-ascii?Q?dsnnBNRlMuX7D2BvNXJAmoYKUcx7pVFjliqAHfLrxd1iNB9RDpQZ9h+9yyEH?=
 =?us-ascii?Q?EjTUxcjKn1G1nHbvdqA0n5kdj9XtJuXT1a0o7gxLIKTaGh5sgdtk95V8kc/I?=
 =?us-ascii?Q?22Q8roODbt0toNHh5S6fjjXPPpEfaIiyaJ2kF1Y3L931aXI7SLz/pg5ju2Uc?=
 =?us-ascii?Q?3Vp6C/Ij6O6WuS6bEdghMrt4k/i/LN0XXQTxRfiqIBIgq3/LWr/jxl0JGn3x?=
 =?us-ascii?Q?wWhLPvjOVrw527YmtEv81a7QXAAToF1pdSgoUwRsQVygSrXncSShkpAWN/2G?=
 =?us-ascii?Q?WK1UU1Kew66LwcV3BamNZ5aaJFJzgpCFJKXj4RsBgc156LPFPG5bg4ojT1cF?=
 =?us-ascii?Q?H5Bc8wK1TjrZAe2cNYClRKoZnLHUHTTEkuDl3yzhZaVg32yyg0X545vVjPfb?=
 =?us-ascii?Q?h3pquoznG2G7WiRBHphsdV79/8Rl96zCeyxVzDHOfxJHfiVGssiFFomPlgxS?=
 =?us-ascii?Q?CekU7uatMtJShPZELSBqv9ZKXBHeJmlFJCI+9753TPZi3ZtscHKjlELSTTQ+?=
 =?us-ascii?Q?6r5vfBxpVXuiIqEH8bps+uHB9VrNA/Jzi/x9luzAMBBUJL0dSK7SmVME33sO?=
 =?us-ascii?Q?UjbFq7r053mn5BseTmY8WXv1HDO03/gzhKJQqcfpjrhrfvHWN2vnK6lioAzL?=
 =?us-ascii?Q?FQbCJy+ZsZUZJykNRWGSEBLYVTLAN5R3fjKkNOGtzZWyN13L4cS+IJKqowYt?=
 =?us-ascii?Q?JdJ/1fykNRDqtheCkchYuw/SKko/yjOd7Nns/hEpdOP8c1+w42ZVLiJpLyKX?=
 =?us-ascii?Q?poyJ9/25+kwWJG6n1woLYkiOdq73JQPt/gFQT2lKc3WZuclUR632SaKSHsr2?=
 =?us-ascii?Q?gj0v9Wfa8gvoweBslL4axe3BOhK+5SisWIHdDsRHE7q8QjUScoYM/puMkW1I?=
 =?us-ascii?Q?QshnEdk5XgCY/ZeeulCAT9T1u2G1OB9rBJ/KkyUGsq/bCDIStXxTf2WEEZex?=
 =?us-ascii?Q?G1kyrMc5ZB+mCYPldq22v2udrfPXse+1avO0uVYsi8j1RHCK9zUmReSdApNA?=
 =?us-ascii?Q?fA6uTXP087H2bPqNnsTlgZZOHNySKmypAEvQ1b6CM9fnzZinyPAEb0sQhM3L?=
 =?us-ascii?Q?RFfF+4+yXxOZ3eeQANIrtnc=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ca0a819-14b8-45c5-3068-08d9dcca7b24
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2022 10:40:45.5859 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XR0/1h696/BHVcgE5O3vF54OUkLwzlwCRsBmL3y1fQShI628u0NuiX/XYo5BCHJKmp5jW8TcbDpuPhBDPSZ9qA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1235
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/4] i40e: Fix race
 condition while adding/deleting MAC/VLAN filters
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jagielski, Jedrzej
> Sent: Friday, January 14, 2022 6:50 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>; Jagielski,
> Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 4/4] i40e: Fix race condition
> while adding/deleting MAC/VLAN filters
> 
> From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> 
> There was a race condition in access to hw->aq.asq_last_status while adding
> and deleting  MAC/VLAN filters causing incorrect error status to be printed as
> ERROR OK instead of the correct error.
> 
> Change calls to i40e_aq_add_macvlan in i40e_aqc_add_filters and
> i40e_aq_remove_macvlan in i40e_aqc_del_filters to  _v2 versions that
> return Admin Queue status on the stack to avoid race conditions in access to
> hw->aq.asq_last_status.
> 
> Fixes: 0093631966aa ("i40e: remove duplicate add/delete adminq command
> code for filters")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 24 +++++++++++----------
>  1 file changed, 13 insertions(+), 11 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
