Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDD374B06A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jul 2023 14:03:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23A6141B37;
	Fri,  7 Jul 2023 12:02:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23A6141B37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688731379;
	bh=sWwwms6XnGJ/IT2SDxqkoAfsxTQIIN3ubLv/4OkvDLc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t48BdC9eKa0vk+fgZi1zqTng+RHPqoItquEHMWLhxMMQQ2QUYqodx3EeAfXtT6yqe
	 kgEUKuTZEbQhYFJSmH5zCMDxKM6t5mCCOdgH6TMiQDrVwCXVCIgTgZft59zkBualZ5
	 nq5s/TMqfbtQBeV0cykEUzI7IWQIPg/SEAIGVrOTLpb9WeUMkPWsQCGagvYcL1Ixye
	 4I6bN2bFITQ817KztU4t/CZSsqxnWBjIHJOxKN1YI2eSOmXjGquvdQifGGrOTwFVOq
	 plpn9Kz8bs2x6o2u1Sf8Oh4R83bjlt753Nyi5n2S1RnPIdbsZpW5DVNpy4Wa4Dnk82
	 o7D9RoSxa6tMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m2Nk7MCxsgKV; Fri,  7 Jul 2023 12:02:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91D8341B35;
	Fri,  7 Jul 2023 12:02:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91D8341B35
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A56901BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 12:02:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D7D060AA4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 12:02:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D7D060AA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oXBXW4DCbSTc for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jul 2023 12:02:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0680860A81
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0680860A81
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 12:02:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="361343344"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="361343344"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 05:02:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="785345370"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="785345370"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 07 Jul 2023 05:02:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 7 Jul 2023 05:02:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 7 Jul 2023 05:02:04 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 7 Jul 2023 05:02:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kXfmdsEAju8Bx6qFaR/Ddm32U+PYXyrfmkqUmmUwYkEOnBMP8J3KUjVd+6Eij3vi+mPw9PMm50XdFHUulnrdrxkFf1DDy8u/Qx53O21N2x0F8pyaLm76sSVEz5VqfP+hAH9BLYLjUSfJRhGLZO9FiwwuODvVwH5Izg/RD/w5/y7fwuZ06go0xa9BQ9k4y0K3SpOVf9kWx2tiHnw8omZm3lGz2R3ddymRnR9J6F6AhrbnRbNDk3nex4osBfagU9zHgFEg8hVkYd2oUGjSQsyQa1vu+EtjuyXojebqrj5E9xfDslHgiTB9nbQImh87u2d0/dnuvocAiPhSUSc4BL56Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x2m7SNJ8r0WRQl/vcBtiWzg5KZNAcrmobuXajv5b/Mc=;
 b=Yl1YFlCw2KUH9lEFyGQ4KCDVmS9TX2CKB8SbW0mdF6gpn20vRyfAWPUzDqX5U44vJEZDZtHI3liHLCmaXwQBKEduT0Lu2QtbWpVNkCUs+HV2S6svSktyg2RJJG6Okvrq4eTreThM+fjVGaRXsRRy1GJ1g2WSu+AjuIpowNxo5A1WTbDKIscTTlYNj7+p2nTBnPBhjVCMKwZqn0cA/P0ET0fB7hVTSvNGhG/myBURZTpcr2NSN38JwqqbS3JbiIvwp97h0VAQ9EjQciZTErNsd39QgAi/QxyQt+tt4gYbU9cMyU+UkIpd1YddgZ6uHBq0ZOmwoSA5SUNEmElXt1So5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SJ2PR11MB7501.namprd11.prod.outlook.com (2603:10b6:a03:4d2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.17; Fri, 7 Jul
 2023 12:02:02 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::93f8:ecc4:eb28:7e65]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::93f8:ecc4:eb28:7e65%4]) with mapi id 15.20.6565.025; Fri, 7 Jul 2023
 12:02:02 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 09/10] ice: enforce no DCB
 config changing when in bond
Thread-Index: AQHZo8XNs0tWM32rn0+rUFrpRw4656+uThHQ
Date: Fri, 7 Jul 2023 12:02:02 +0000
Message-ID: <PH0PR11MB50134CF5C4E1063DF3028C28962DA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230620221854.848606-1-david.m.ertman@intel.com>
 <20230620221854.848606-10-david.m.ertman@intel.com>
In-Reply-To: <20230620221854.848606-10-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SJ2PR11MB7501:EE_
x-ms-office365-filtering-correlation-id: 52a90791-d043-4f2f-cd5b-08db7ee1f9af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sZxtOEazi8CvWaIh/a5w95SLl7hv42j9sDDvojniY1JLs2p+lBaAZoa48afLwbfWskRciaU8SzJgcTxu5Eql1Vl7Cye+eVYkv62E5by/qKV29q2bqOvqL5aixRKKP+tbQ1MT26eU7HeRrzOXyoh8ERrRwdLCMS6elCP9mgavKRIt4/CG5EAYarxC5ksVmtk9byoGz1B56Z/CLIcUD4B1QJwozAtEjm5QIzmtz5jYH2DWjvGjMwOVwBl4fpW0heFQz3601ek67qUXEga+vZJEK062AC+6B8Eh5rfupK8T+If6/aNfhxhaU8pSw/1Hs/1KjzafuNU2ibjL5E625Oo+gAEzNRakJAaj91CqGxmAcXnoeYi2t6wnAitUmOlTVThN6zPD9nm/2cOov5vfCIihKIc9R1LmsQ+7TFUu/wBS1fTrh4UBaBBxtEykI6Ejx6UqqBB8uMl8n61tO53mbU2UeQe+8StfS176dyFPUHsJS3hdNvC+YWLoCtv97iUXCqCbto+/B6M9zYordV9aPK2BfofITNG+NBhfv4VbBsDVrow2KGX5StUp/D8BPwu1J/7vphJ6B0N1uI54mKbL844bU2jiKQwhV71bU47mrDwM+ww=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(376002)(346002)(366004)(39860400002)(451199021)(71200400001)(38100700002)(122000001)(82960400001)(55016003)(38070700005)(33656002)(9686003)(86362001)(478600001)(7696005)(6506007)(186003)(53546011)(26005)(8676002)(8936002)(5660300002)(4744005)(54906003)(52536014)(76116006)(110136005)(66446008)(66476007)(66556008)(66946007)(4326008)(2906002)(316002)(64756008)(41300700001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TPOXAlgmW4+BJMu+Dm1FA5Dj62GS2I5PZt54BMk5jKY/wP/EMsPmQvzbV9bE?=
 =?us-ascii?Q?GcDvoCNxZcJg4JIyMsVECmR4j3CRv0pAwJtXut/4A1+GrOnFldRVWFj6IZmP?=
 =?us-ascii?Q?aR45WXgpKVD4sumzm+zK+b0SnT6Ts8QovFcZ/0yZUIfCnlPKk5In85yTfBGS?=
 =?us-ascii?Q?rfKDNlXzvZRjd95kVy75bNB/hRTxVahbx3gvWaTISIUz7gZ+ep4lqVIQJiVc?=
 =?us-ascii?Q?4cCx7HLttX911n/8ogwcNhovrVyi67hy9N/nhzC42g0Ti1sdeYNH337E42tN?=
 =?us-ascii?Q?DzHOVu5F8YZe1vgriy7XXYDsAm2p8na6WRm4f+kiehybEAPASzSuNzJaZlGB?=
 =?us-ascii?Q?J0uYGpXOoA7dsl4y2Xg/Jx+Sj+AzRqKVdg2edoE1CAeGubSwwqZiN0RDqR20?=
 =?us-ascii?Q?nxMijHVfQwD+af8nxFXRQxSbJeuU21eoimKwEa0HG4g6AV/dyVqEh7Y9VgJk?=
 =?us-ascii?Q?lSevnlh/YLfSkmt2gZKHlvg4zjygV9xzC6weQIREPKv2JPbQrSEk058CbGJ9?=
 =?us-ascii?Q?wDbQP7LECAZsuRSZrfEY+YTcdD8VqEeOj5V7VkfsVWWmYWhQq4+jcl7iF/wA?=
 =?us-ascii?Q?B3lt/fpoeLTdkvMBdkD8chSJhZtXONAUZlVfwOGAxGfw60GQaTbTtw3vmALj?=
 =?us-ascii?Q?/IfX6ssiT4wEAoCQRQhSBvL1/FX2cPdMkS0VhutAI3Bogr3CXVKPSOI7exNw?=
 =?us-ascii?Q?87SN3vjellAy+zrM7p0GZhKJ3ob5956X8hxvxSwbo1Rv1dQfyTAsDs4L50ZJ?=
 =?us-ascii?Q?U/8JhAOXTJsSo6J5qv8jRrBM9ZzudzfiEgs1XKEDs1Y4orLna6D6cqnAW35L?=
 =?us-ascii?Q?X709UiV4PD+q0RxZPqi7I0sEkZs37cF1BObnZgHikS8BWnub1yIIW1G7c/Mz?=
 =?us-ascii?Q?xG03uHtSFQQqvBYPwoYqDUHzCMdKpY5q164wAO0bkdn2cneAsoT+KIE5+vRI?=
 =?us-ascii?Q?zWCzq9C5w/tnKF+LeJlmCb32ZKFWQK/nKhjOWrw+L0dt4U8dcdEk4PoLDX7w?=
 =?us-ascii?Q?SjXPn4DamzSGita8IKgAIBQi60x2WAc6bvDPZi7IK39t9V57xDgklwLMIn0I?=
 =?us-ascii?Q?8XwiCAuZwsb4F2RTZvGTtrdD24bpYd622N/b63l0acDg7GpsqZ8QHlQkwu30?=
 =?us-ascii?Q?Z8Jj8ZHjTFNAV6Fcn/013GG9NsbHpKNG7aA4vPAPqBfNp5d4yjuz+ij74Lqu?=
 =?us-ascii?Q?pZnZ0CvC6ixfHm7B5d/m4qafNhFb+1wUgZVNBkYrE/zytPlrEHf2D9qU4fFw?=
 =?us-ascii?Q?Fr/Ln2HtGA09SaD26ZPynfrSB67wEfv8ufyv66cHWdpdvytZvns2BfkFTSb0?=
 =?us-ascii?Q?mhxn0axHnbwo3FFBFSHskjVc5utmaiCvcxX8PC9q41UzvbHjC05XnCKcS+zi?=
 =?us-ascii?Q?caYuhy9uEWVoaLYv1z37YbB8MXXqhH58DcIREolzA6rIymCH4w0GAArpJO83?=
 =?us-ascii?Q?C1LaM5KnRHltg2kIH8yqK50UDCgPmIoRYOI7G8wdzFCmHay6k9vi5y+oITJn?=
 =?us-ascii?Q?ap4HkOWE8nc0WKBqUyhDjZmbIOwhR+/JFZ3mOT2fn9yowWSYoz1k57xQ6VEU?=
 =?us-ascii?Q?IMInIrOH7xOu2LuHuO1ELS2Xhcn5XFkwJVwyajeR3aNynbeIIp8urOzh2/TD?=
 =?us-ascii?Q?8A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52a90791-d043-4f2f-cd5b-08db7ee1f9af
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2023 12:02:02.4696 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6WZRpmvASeuXz+qK5pF6KaBvXtdz/2R0PAPd478Cj6ZL+6NKNlAwCMx0toYj4Z9Mgc8BwIS52hSuBtU2opX1CXohS5KCXKoleYlPc480Tos=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7501
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688731371; x=1720267371;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hd3jyKL3W3fYFX7qgp1FitdySdzuJf9dJJOs2Pe/FUo=;
 b=JIZiZflmB7BAsyHk9XpfHmlDkULdU2fCmAR8vN1J+RSeZQKByWsuJerT
 kqmoCjsPOYfG4j08Gl8xUJ1qH5OEnccvjf7uhwERbYLAnMSZo0/ymmMmA
 jMRKpWb36ZElTudxeMwxL2e9Z+VyhY8tbxOxT139vIUyEJficHwyRMC9f
 VGfry9Xjb2wrC7slaiViLNtGZs7U+nxyMw+QqTvisro59TvN4PPcEPF5k
 vlWjRKASGXqTO3xs09iz/aDXK8STMktz7edybts8DqrS8LqMN3nBWjFh/
 /2DHLWkNa8ASNr83tQWprjQWfbC1PpI4ro/k70CKnIM6ki2TZ3EUDxSMY
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JIZiZflm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 09/10] ice: enforce no DCB
 config changing when in bond
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bcreeley@amd.com" <bcreeley@amd.com>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Wednesday, June 21, 2023 3:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; bcreeley@amd.com;
> daniel.machon@microchip.com; simon.horman@corigine.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 09/10] ice: enforce no DCB
> config changing when in bond
> 
> To support SRIOV LAG, the driver cannot allow changes to an interface's DCB
> configuration when in a bond.  This would break the ability to modify
> interfaces Tx scheduling for fail-over interfaces.
> 
> Block kernel generated DCB config events when in a bond.
> 
> Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 50 +++++++++++++++++++++
>  1 file changed, 50 insertions(+)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
