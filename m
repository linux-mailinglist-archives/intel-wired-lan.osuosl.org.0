Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3AF462FD6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 10:38:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CFC7608F1;
	Tue, 30 Nov 2021 09:38:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iuAWRDDCcM_i; Tue, 30 Nov 2021 09:38:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52D58606D3;
	Tue, 30 Nov 2021 09:38:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BEDAB1BF281
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 09:37:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B711E81DCB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 09:37:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q_t5PW9V9e14 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 09:37:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8668780E49
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 09:37:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="223407774"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="223407774"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 01:37:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="595327566"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Nov 2021 01:37:56 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 30 Nov 2021 01:37:56 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 30 Nov 2021 01:37:55 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 30 Nov 2021 01:37:55 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 30 Nov 2021 01:37:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DdXwtZs5SdTu/NsyotH0THahalLr5U9Ogp5nezuItqfgoRXD4ulyfHm6Y2gxqsdYJvYbuv4sKPb7qwSN5nthDFy93HDdHWIaaqRYgrB+9Kcs6/Fkn66ppxD8EFWh2cTuDw/zhwVzqIGBxVU2x7uKcjOlCvyJf5zNrHdOXLzqdoFVJDumVKKhYhSUEtbjoCO7BIaFgq+9JppNMCaKs+QZSS7bYm6mtkpa8bn6jLvt9UyfQMxJN8+0A9sQEMhimLtiaZKnvjy6mWGcHv5w9UQswIMwpjeNko3yc/Qx0Mpy0/xh72BLHJf5UoEiEb4WjtsnQUOWTR7IHAshWePL5ZN2Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YEs3Vd3JrLRHq7eYhTnubDC0hVc6V1YGffTAfoH/z+k=;
 b=MN/BZdUba9jby27wFEz0maSvrrwehO+w1HDn2w6lHSkzdy4Vl145bXvWGlIJuMz/5+235QPa0WPGPLegsbW/5U731aJPs3OJdGsuV7GUGqeKNL3+pLKkDJNP1CHPxwVi2MfHimjiIb16RhniQmg7wyA52jSxMf5/txDq0T3h8/Si/cndI6dYZqBsNVbml50CfCjJ0rhlt2N4yoR2YMHvvUzKdWEdp/F1S/5OEOac7awfSGVd1hJwG/wYPR04Rw91Zh+IxoPFYLlyttvTefrbtD6MqlviRYVibleBmYjaOejvMhucp/c46n4Jh0jviak8MeD6Bl8YIEW3tNgskGrclA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YEs3Vd3JrLRHq7eYhTnubDC0hVc6V1YGffTAfoH/z+k=;
 b=sqrZ4RqWJglPFX7xx7oAE2SGrQhiae15fgPZRx7u4yM58Lgk7WpsiP8yKp/nT0U8yPa/Qw12ISTd96beFmNIWhax/mmaAFuUYMqMCKydWrNXkqBg1mw4wyq6u9zY/wMPD1V/D50Obi33YXb/gBWwZLoj8+s54VqIF7aYx7kUCMU=
Received: from PH0PR11MB4998.namprd11.prod.outlook.com (2603:10b6:510:32::8)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Tue, 30 Nov
 2021 09:37:54 +0000
Received: from PH0PR11MB4998.namprd11.prod.outlook.com
 ([fe80::89e1:d365:3f7e:e151]) by PH0PR11MB4998.namprd11.prod.outlook.com
 ([fe80::89e1:d365:3f7e:e151%8]) with mapi id 15.20.4755.011; Tue, 30 Nov 2021
 09:37:53 +0000
From: "P, Bindushree" <bindushree.p@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] i40e: Fix pre-set max number of
 queues for VF
Thread-Index: AQHXeiYPl4PmUt0vFUqwjGsMLZrUPKwcpgcg
Date: Tue, 30 Nov 2021 09:37:53 +0000
Message-ID: <PH0PR11MB49986AE5121908F6093E3E098C679@PH0PR11MB4998.namprd11.prod.outlook.com>
References: <20210716093356.7800-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210716093356.7800-1-mateusz.palczewski@intel.com>
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
x-ms-office365-filtering-correlation-id: 1e97a539-13a7-40c4-4c07-08d9b3e5156b
x-ms-traffictypediagnostic: PH0PR11MB4965:
x-microsoft-antispam-prvs: <PH0PR11MB496511B3CE76557E676252118C679@PH0PR11MB4965.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:264;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UZeQHvT61WNC/4/gbZTXnaDFLZ3uxCyQEWlVgfy3PtqvOWK2YkBH3luBXLhnrPf97HTo8L0sXJyr4O+TCVcOs4NuBCPWVRS06syj4gzy0K3xqmxcigW19TIH57qTvwrbZ3TuBNcqsNXOJGj9LMTtONmm0H5FpqoCVxOuORfvWhMEwnpyCDZRcAFBgdsZYJrxa6YcyrtBFIrVSJvy1sxJDL4h0eR6C0m43dIQVb2v/YCg93C131Qhyq4+bJCZLWM1y69bW2ed3XeJwxjkrR0CLj/lrQqpBqPFjU76ZxWs9suSBeJ1E4znv/u0VwUiqzgVHLZ2fxzne1govaM+Mfk7fhSswalrFAcp5KYyqkTLNbOMFxezI4eoEv4XMzbZOYjeTnUXkzEhxMJstBjz2vTGXk8H6wVGC3/uhyctc9Uol9Tfw3OIgg3NO72A9h8BzXqkbAo/qpRq1m+k9LSuVtDzZUJrZFLgmshQiAwAffby3+1OQMx1wK3AcCNlS16mqxCiIxJ1Fei3cHBM3Pf44Ik3qB8JG9EC06CS5wUGtuDWMPt6f6FFTIXlkvAmIwZKpaqQ+3SG+WslOL3RzZTm7XhRmEJbS4ilzEAOFnniHRWs4YidtNgGqDI6e3HAGsS6rcPeu7Tf1lzxOgbnmgYa19kfnnEQmyDCDP9npxlTe/Wd8AbK8H1RqFj1yrgT0p65p0Xe6V8oG35mpQjyMlXN0niMOg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4998.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(66556008)(66476007)(82960400001)(508600001)(38070700005)(53546011)(55236004)(76116006)(4744005)(64756008)(26005)(6506007)(66446008)(7696005)(55016003)(71200400001)(2906002)(186003)(52536014)(316002)(86362001)(122000001)(83380400001)(8676002)(9686003)(33656002)(5660300002)(66946007)(38100700002)(6916009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q7sWEQET8+bHLym803Ea2/DzWWIFNRBxZucap559YQmoDX/42jfqia08r5fk?=
 =?us-ascii?Q?wavjGETLqI0m1kYVwI6WNd1yFPBL2cG/qhhh/oIORGVehmA5XnWafYjrcTC+?=
 =?us-ascii?Q?ynjVfyuUqC/DS59oZejwbiAPL//PZY49OHPLHFnup8HOCyRmCLv4gKOl7hm3?=
 =?us-ascii?Q?tdImPZti9HR6MSeiZsYveFlzos0p34tAywdQ64f+4tlKQxhKcDisuP8qMYc8?=
 =?us-ascii?Q?39Hf36CEAMrcizL68Jd/9DSa8kq8PrWzSeG4Mrpn5imiiIwgIosRfxAq3HOw?=
 =?us-ascii?Q?PPqeA9TbB+fuLXWoUb/vpr+uhgGsimzdFfs8Oe0jTcgOAqcnUDBIshw4gBkj?=
 =?us-ascii?Q?pRf9jGwtfbTo/wfwgs/QoTmKvtz1I1ZWNpk5hxmIfWvFfxwTvaza5rRK1Ikg?=
 =?us-ascii?Q?bQh/hS37qfFAGM8eBONVEpteMLF+3tJEzRnWpL3JH3Yy/Ri6MJCEFXUzRQ7H?=
 =?us-ascii?Q?iuRrwghrQCdNySj8Ihlt2Dhw7qZqKnX4eIphCNGuM3rfA97AsjR78R/DmiSb?=
 =?us-ascii?Q?LgEm4/3BvhAgtpEsgTDYykqXXZxxIZaii5R7ZpeyPHAm+i75Le9nnbenvO2S?=
 =?us-ascii?Q?jFlbap37IjZ/y7OkROvKq0nR41UBqJDFvURXYN2dnPtkmiCDy1RO7z0ILVnZ?=
 =?us-ascii?Q?FyMIYf27e3X+XzpXcKtxK4uf6r7tKumm/kZo0aetGFFLLILL8IoHQJQa51Gg?=
 =?us-ascii?Q?+BuX+1t4k7RTtq96mpo7aoagUGtPU0vnw5qACkFlWQjBT1jMG9ksylecphtX?=
 =?us-ascii?Q?Z6D6MKX5yXF5lFmIl4J0WJpLeEFkG5uj6xMQ704L5mfsUH8tC6oKUsWBTZ/M?=
 =?us-ascii?Q?c2AvK0GF5WBBi31Nnfnp0ECVOkvwocyFZ/Cb59PzfZwtKiJBM/PuZiav2sEa?=
 =?us-ascii?Q?0X37XMPpA/UK5LE+KRf/A98yTI6JHvBycK5VpsOaG6bqRMdNL+1G8K2vySOy?=
 =?us-ascii?Q?QnPXCJ8rVsw3wIAx7SQuLxZhu1Zae9SzMEIN8Yo8xOWmrBzAuOivSpfqeRdM?=
 =?us-ascii?Q?YZ3hshsODLmBGsqHqTB+YJoYZkc1krMeUE7Tc8c2Ph/uXChDD7BIfoKDqDIn?=
 =?us-ascii?Q?F745t5Ba/qITlGMkrrULQ6wfD3nfxaovWNU3pZiKw2178l2YMs1E1Lfnv+dS?=
 =?us-ascii?Q?+a1lbJjY6cdaD42w8zmwcud8JwarsKXr8ThSoo1fAsVqOO748n18OwKva5BQ?=
 =?us-ascii?Q?zVrXaLuq7X3QX1l2AaBJlH3ReT01FBtGqgtpcgby2y9tCXZBWrxjsPeQkGzq?=
 =?us-ascii?Q?7vrGC9lVbDS67SdfuQtmy9nLCcNMik6JlnC4Gbg4Er2xaMzlNTvKxOmrJDcD?=
 =?us-ascii?Q?Ah9Vk8bj9TrVmW6jRhIe7+nhVjlaoNBCT9LgLUYL0cFQsr27WxpIgIUQ/Dtv?=
 =?us-ascii?Q?6cU0ZJrgNel4PFdbhFYRwnMk5rl/F0ImLgv1hY88R/ve6e3FZeFxDmdPA2Cm?=
 =?us-ascii?Q?JEdEs3w1VptrU1l6/hGBunHXnPsvcPM/d0aZNRHkSqpymBkiXu+Z6mv02WmS?=
 =?us-ascii?Q?7aCSjlD05pCtVMAoIo4LyPni+9NhzrY5nwFFysbM/wb8pYc4O+RILQnIBdxX?=
 =?us-ascii?Q?rC4etXN0dKjUCNJvrmmagw0R0PQV4o4/B6kGX/qWF1IxMhp0DzWp3WShQAoL?=
 =?us-ascii?Q?zMEGCJJbsr8f0ZwTIyS9+b4=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4998.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e97a539-13a7-40c4-4c07-08d9b3e5156b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2021 09:37:53.7055 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JI9ubJzywR73CXlosVduGVHhFz7SserfJfyr4ODst1TwiZdM6jSE6Jrg8Iz6ixwR2Ut0bBMboLpxTC1CRFemcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix pre-set max number
 of queues for VF
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Palczewski, Mateusz
> Sent: Friday, July 16, 2021 3:04 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v3] i40e: Fix pre-set max number of
> queues for VF
> 
> After setting pre-set combined to 16 queues and reserving 16 queues by tc
> qdisc, pre-set maximum combined queues returned to default value after VF
> reset being 4 and this generated errors during removing tc.
> Fixed by removing clear num_req_queues before reset VF.
> 
> Fixes: e284fc280473 (i40e: Add and delete cloud filter)
> Change-Id: Ib2db315e4b04eeb15e12301edf833014a929e914
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Refactored commit message
>  v3: Fixed wrong e-mail address in commit message
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
Tested-by: P, Bindushree  <Bindushree.p@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
