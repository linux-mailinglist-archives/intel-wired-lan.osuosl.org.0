Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCF6453282
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Nov 2021 13:57:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AAF0B40421;
	Tue, 16 Nov 2021 12:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dxmb-PTbLhtN; Tue, 16 Nov 2021 12:57:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C970401B1;
	Tue, 16 Nov 2021 12:57:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D44C71BF31B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 12:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC55880F05
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 12:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VEIocRMpTO2u for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Nov 2021 12:57:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A609380EF6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Nov 2021 12:57:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="233521461"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; 
 d="scan'208,217";a="233521461"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 04:57:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; 
 d="scan'208,217";a="504589590"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 16 Nov 2021 04:57:09 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 16 Nov 2021 04:57:09 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 16 Nov 2021 04:57:08 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 16 Nov 2021 04:57:07 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 16 Nov 2021 04:57:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ddKpvzB6gIpL6K6p8bbZ1ibuWf1mUgm8/OjO1Hw+lsEkdG09lmCXfDK3rledICEyI4KRT62wHf/c9B/234BY73hBnqHtOQji80n9gmSonL2ih8+hr2e71rl6ukiAwOzPGLDJUCTIhx8cNXeSk6OfpyJnj7qciiGLQ8Y4uIaAkIoFu+NRRW3z44u/l62vAGuK4GcU+fPO+4h/YV5Hf3o7aFXGw1VpVJ5sxkM0K/D0O7eccjJEwtT2bqWJ/cC7vg86sfy8I3fJtmp7zVTAiwhVGAAX+5MwoReAKbKBg0E9Go9507hHDKmsitmbNgpEx5tRuyshkAvJBOkRmMBE3c+aUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6bj6C/mCyM8dozGZPvMINkPGWXFTvEKYro3fUhV5w4Q=;
 b=ioaQmDJvXi1pEysK0OWcE2eeiCCZZrUka5fMNA769poVeR7U0EYsJGPwmSYStK250HMJbi0ObH37X7BfvigOitsT7qhoaC+CgsP07hVXFCp7omV+4iq6ZilERw/kpbWps3lqp2mIeEUpElpiv4cYxxJocIxkyzB0W3Fq/4jmwvU0ecZrZhKBsZIGhZyF9xu7Flt2PSCDfjHYhyamgPU+B+eAavaRASVPX60y8gbZ/+CUhmzb4ckNbyRUMkJdwB21yfeJGjkol2Dd3Efs+bAB4UlyhZTraBTN2xs2XRfkvfMGg2snk4FxXeyM+jV+ZHH6ru51/28UyIlJs/MPBVEqng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6bj6C/mCyM8dozGZPvMINkPGWXFTvEKYro3fUhV5w4Q=;
 b=mihiN/uSjWP7F+zU2P3H0Spv9cUfo4Y5G70qUGXmxaPuI26bvTuCU44bbhU2iXYj/iMdWVMWurpCBy/Q07+qDjFfpwo9J+dty3fWywpxq/OZ5/Z4J/N1deezBpBHKlLizyIUW7UlWKngCTgBPcOS/3hcGlCjRaMUCrPUXej9uNU=
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 DM5PR1101MB2171.namprd11.prod.outlook.com (2603:10b6:4:4d::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.27; Tue, 16 Nov 2021 12:57:05 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::d88c:4232:e735:3017]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::d88c:4232:e735:3017%5]) with mapi id 15.20.4690.027; Tue, 16 Nov 2021
 12:57:05 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "csander@purestorage.com" <csander@purestorage.com>
Thread-Topic: Re: [PATCH] i40e: avoid spin loop in i40e_asq_send_command()
Thread-Index: Adfa6R2clGVVoniVQOqJqmWDHxidNw==
Date: Tue, 16 Nov 2021 12:57:05 +0000
Message-ID: <DM6PR11MB2731840AD08E22F73CE850B1F0999@DM6PR11MB2731.namprd11.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eea9d192-5c80-4c00-f6e0-08d9a9009792
x-ms-traffictypediagnostic: DM5PR1101MB2171:
x-microsoft-antispam-prvs: <DM5PR1101MB2171AF6627C29E82F064B286F0999@DM5PR1101MB2171.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UE1jHK5X2bF6RNXuVPlrfLMYsKASpMMg5QO3zM6iMBvwl74Un6IO29lgBA4h5eluGuZ1n05ocYMKBiu4E42yhql8k4Fjoquyz1HPcOhg3C4TtLi+4iS80FXzso6Z7Qfita8ByAEJOsRq4buP5c8wHVdPYj9I5D17hSwmSBwp5lVdHaWHmPrZAp0OwpG4O5W1UELTMWGSTg8Xpsncu9bq8qoZJxoI6taRs+S4mm8kiFT+hgoJVq0yJ6QPBOZwdNF1OqOjniq/XNA/X9yQ3P4otewNzRIif/TI9vhJKEYpgYXc7RjOnfu7j04Hr+kYeXh/45HUTrhQXEp9LTfj4SNSOp3SYKSLh+t3FrRO2FUyPod7M1UcjMlj4PH5WrNzp+AFyf89neYVIHvzUyPIElrGFJR++Be3QUXVmyhUEVw6Akgop6lJPF4DJS+0nBmw+FoBobGYrs9x6JxM6u2EQHc11VgDRqepKtUPsdfbo0PuW9ti1h/OGpTYWCaHSJEFNcxNOQwsStBN12cptDNmiw8hAFrxSZkmKG+AoAzYrKxKt9Oa616kxfIfmaJx8PXdynfBiNxFw+g1WE5Yqbnyoc+R+QybI3RRQAEzweDWtE4ouqI7zSv0nj9x0rDVXqJ8UdCiF4LJRt2uw6QAdsBiCAChm3fpUjknEUCeq/bZK5nVTozkjuSIQcwZ4joxPc1Md9v1TDd5ImHqqBMQ8YUOeyGYnQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(82960400001)(2906002)(5660300002)(508600001)(55016002)(9686003)(7696005)(122000001)(38100700002)(186003)(52536014)(86362001)(71200400001)(33656002)(6506007)(26005)(53546011)(66476007)(8936002)(76116006)(316002)(66556008)(8676002)(64756008)(66946007)(38070700005)(110136005)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F3NbWN0z9Fg2dD8O1KoPi3bjqgPpYMGB0yiwY8DaFeBLKgCeqrj4xiECjtsw?=
 =?us-ascii?Q?NxLBPy3H5m2RqYJrOmbJPpKwRzYpx8XbeeDwHPPifmW7DoxCZ1ZDg46PtKdR?=
 =?us-ascii?Q?M0+Gz7/+Vm1LgJBlppt23qdflJQDT0Vko0lP4RBOr9XmDHWDyuXaweaLHlWy?=
 =?us-ascii?Q?MKuBrREg4trd0Ngx+oq4QJB5AbGyEfjF5Xb94H3IkGWJpvlOzS5UUgUwJFtc?=
 =?us-ascii?Q?iIOwy6msJYqeCgwo9Na0NzJ9caSn/5DIiZ4r6W6VnNREAjCOjnNapSmDR9/b?=
 =?us-ascii?Q?RzcW9sFHCPB6L0AYq38xt0ro4lWxv1ypPfk4Ok2jkpScg+4ayyqFiCo9sdwQ?=
 =?us-ascii?Q?eEF5/MX7rlrchFcMGtettKBF1S/g+08lKB/0tww5pUsaUFiV46ti9b5OnYQF?=
 =?us-ascii?Q?MTw6Cs8P+4fT97JNHOjTW8dgAF4qdLWQ8iQRWjlTH2e/Ki0f9QiTsgZJ8sUb?=
 =?us-ascii?Q?e4yACEGopw7Ppe/qPDxoRPDl86oSC8lZwDlk5XRfnCN20AhDOSaVyuRXe3fT?=
 =?us-ascii?Q?36pVkBGhkpa8TSIhSBnMpiOdLEJEzZrDqtbi3eXcL10TAiEG997/rxFzQgc8?=
 =?us-ascii?Q?42W8MIGEoSTY+V1RkciCk9CeOYjX679ZgNoxcNxbGcN1VBJBfVbf5WcQ8Yta?=
 =?us-ascii?Q?bNPYhk2GVYseHjPKPi/rSJrqJ+1NQ0W90TBubGHdvAWuZYFzF0NOAFlKQ3pU?=
 =?us-ascii?Q?FuEjAIDbBsfty3HJ7gJs5lNvyFUzZXUCrn7PIzkYSrYKRRjrksSlJtBPAslk?=
 =?us-ascii?Q?0bSzxGm4zi0/FNgnxm9IET+zFOlhwHSfhj3BB4F050cox41CVRFBSaLiwobz?=
 =?us-ascii?Q?GuzM1Dllubwgxii3u482c2JBeOPo2CV+59QPB9WotB4npO7SrFsL1puGRurq?=
 =?us-ascii?Q?12fTqz7/41n6YF6efkeWjcz8zuEu/QoFn94PcDgFc/yUb11PyTO7L3XPNsKn?=
 =?us-ascii?Q?lCUQ3lV1eLYikmWbjVOLZgMO5QSh/CPdf1NdPByyzve5HQEXodRR+KKjIq36?=
 =?us-ascii?Q?np6Px4DLcqRYgFiVYH4N8HdzStB4qzddx/5pc9C9deqsph5bRRsvUlINcy+O?=
 =?us-ascii?Q?1JbGS2H1jE77T+DNdE00OZKxdG3rI9GNWpXBKVUU6eFqWwn+u0OP+CI2hNTE?=
 =?us-ascii?Q?6rPSzvh1EEv5j5zfJO2E/vWxvBNf10iDLYShimiiv9dvSKRAW01g1Qjr+qIN?=
 =?us-ascii?Q?zsQUWGj9HzCPswPGte3YCYE87QEnEXFPkd9yrJ/4AJHy0M2U9XrQEZBwz05U?=
 =?us-ascii?Q?ghjskiI1XCf5rUZr2q6555nuhkPlullf4M96kuVXRjvAIMa8H/VdGfrMx+5u?=
 =?us-ascii?Q?iah4RVEeIAwSiQR8idVdXVmOjl8WsLdMZQtboiHoUkvjp5U1YV/Mmi2oMJW5?=
 =?us-ascii?Q?U/fBoeUIo5fZjUB/2LewIhskTFVrPPCjCp0JwCl2IkJAMCfj6LXwEDOWPj4f?=
 =?us-ascii?Q?l8o98sSDx10tlf5rK2rgSrbyWXRaiB9AvbXaLCzTWL1kLrlGAHKzw/epJ2UG?=
 =?us-ascii?Q?sSxn3eSpAc2KdHLQ1uf6GR5AvGHEitjMTIcQGUsFr7s5oz6gqtb+T+WSzrOn?=
 =?us-ascii?Q?vy9D05O16Qxwj68jBaeij92JdUVzInTwQkORWbNPFdzIqHwjOlyxRb2UZcjg?=
 =?us-ascii?Q?soti4gnEdkTxWhSPZj7Odv1IjSPy1oU2iaAdhEwfWSZQ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eea9d192-5c80-4c00-f6e0-08d9a9009792
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2021 12:57:05.6371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yx1cVkfk1vgR65k2RGjmf2gmHioLPc0va2EUbaZIOGqjNFcAS2Z0W6AhWkCHbTUit3tMScsL/1sBrs7LQ+zdn9pJGMn0+JXTLThutptvPEg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2171
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: avoid spin loop in
 i40e_asq_send_command()
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
Content-Type: multipart/mixed; boundary="===============1682315424034889704=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1682315424034889704==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR11MB2731840AD08E22F73CE850B1F0999DM6PR11MB2731namp_"

--_000_DM6PR11MB2731840AD08E22F73CE850B1F0999DM6PR11MB2731namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Caleb Sander <csander@purestorage.com<mailto:csander@purestorage.co=
m>>

> Sent: Friday, October 1, 2021 8:50 AM

> To: intel-wired-lan@lists.osuosl.org<mailto:intel-wired-lan@lists.osuosl.=
org>

> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com<mailto:jesse.brandeburg=
@intel.com>>; Nguyen, Anthony L

> <anthony.l.nguyen@intel.com<mailto:anthony.l.nguyen@intel.com>>; Caleb Sa=
nder <csander@purestorage.com<mailto:csander@purestorage.com>>

> Subject: [PATCH] i40e: avoid spin loop in i40e_asq_send_command()

>

> Previously, the kernel could spend up to 250 ms waiting for a command

> to be submitted to an admin queue. This function is also called in a

> loop, e.g., in

> i40e_get_module_eeprom() (through i40e_aq_get_phy_register()), so the

> time spent in the kernel may be even higher. We observed scheduling

> delays of over 2 seconds in production, with stacktraces pointing to

> this code as the culprit.

>

> Add a call to cond_resched() so the loop can yield the CPU.

> Also compute the total time using the jiffies counter instead of

> assuming

> udelay() waits the precise time interval requested.

>

> Signed-off-by: Caleb Sander <csander@purestorage.com<mailto:csander@pures=
torage.com>>

> Reviewed-by: Joern Engel <joern@purestorage.com<mailto:joern@purestorage.=
com>>

> ---

>  drivers/net/ethernet/intel/i40e/i40e_adminq.c | 6 +++---

>  1 file changed, 3 insertions(+), 3 deletions(-)

Hello Caleb,
Thank you for your patch fixing timing in  i40e_asq_send_command().
We have also already prepared patch which fixes that issue.
Moreover during tests was noticed that this should not be
changed globally and it should be invoked in atomic/nonatomic
context depending on the function that invoke asq_send_command().
Other functions in the code take advantage of this dependency,
so to maintain integrity I will upstream our solution.

Best regards,
Jedrzej



--_000_DM6PR11MB2731840AD08E22F73CE850B1F0999DM6PR11MB2731namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">&gt; From: Caleb Sander &lt;<a href=3D"mailto:csa=
nder@purestorage.com">csander@purestorage.com</a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Sent: Friday, October 1, 2021 8:50 AM<o:p></=
o:p></p>
<p class=3D"MsoPlainText">&gt; To: <a href=3D"mailto:intel-wired-lan@lists.=
osuosl.org">intel-wired-lan@lists.osuosl.org</a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Cc: Brandeburg, Jesse &lt;<a href=3D"mailto:=
jesse.brandeburg@intel.com">jesse.brandeburg@intel.com</a>&gt;; Nguyen, Ant=
hony L
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; &lt;<a href=3D"mailto:anthony.l.nguyen@intel=
.com">anthony.l.nguyen@intel.com</a>&gt;; Caleb Sander &lt;<a href=3D"mailt=
o:csander@purestorage.com">csander@purestorage.com</a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Subject: [PATCH] i40e: avoid spin loop in i4=
0e_asq_send_command()<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Previously, the kernel could spend up to 250=
 ms waiting for a command
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; to be submitted to an admin queue. This func=
tion is also called in a
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; loop, e.g., in<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; i40e_get_module_eeprom() (through i40e_aq_ge=
t_phy_register()), so the
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; time spent in the kernel may be even higher.=
 We observed scheduling
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; delays of over 2 seconds in production, with=
 stacktraces pointing to
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; this code as the culprit.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Add a call to cond_resched() so the loop can=
 yield the CPU.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Also compute the total time using the jiffie=
s counter instead of
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; assuming<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; udelay() waits the precise time interval req=
uested.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Signed-off-by: Caleb Sander &lt;<a href=3D"m=
ailto:csander@purestorage.com">csander@purestorage.com</a>&gt;<o:p></o:p></=
p>
<p class=3D"MsoPlainText">&gt; Reviewed-by: Joern Engel &lt;<a href=3D"mail=
to:joern@purestorage.com">joern@purestorage.com</a>&gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; ---<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; drivers/net/ethernet/intel/i40e/i40e_a=
dminq.c | 6 +++---<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;&nbsp; 1 file changed, 3 insertions(+), 3 del=
etions(-)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello Caleb,<o:p></o:p></p>
<p class=3D"MsoNormal">Thank you for your patch fixing timing in &nbsp;i40e=
_asq_send_command().<o:p></o:p></p>
<p class=3D"MsoNormal">We have also already prepared patch which fixes that=
 issue.<o:p></o:p></p>
<p class=3D"MsoNormal">Moreover during tests was noticed that this should n=
ot be<o:p></o:p></p>
<p class=3D"MsoNormal">changed globally and it should be invoked in atomic/=
nonatomic
<o:p></o:p></p>
<p class=3D"MsoNormal">context depending on the function that invoke asq_se=
nd_command().<o:p></o:p></p>
<p class=3D"MsoNormal">Other functions in the code take advantage of this d=
ependency,<o:p></o:p></p>
<p class=3D"MsoNormal">so to maintain integrity I will upstream our solutio=
n.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jedrzej<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM6PR11MB2731840AD08E22F73CE850B1F0999DM6PR11MB2731namp_--

--===============1682315424034889704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1682315424034889704==--
