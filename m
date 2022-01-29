Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB434A2A87
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Jan 2022 01:19:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEAF760A6E;
	Sat, 29 Jan 2022 00:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v_FBnttJPMEL; Sat, 29 Jan 2022 00:19:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F827607F6;
	Sat, 29 Jan 2022 00:19:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C8D41C1190
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jan 2022 00:19:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 692E383E2A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jan 2022 00:19:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rfdMIownrl11 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Jan 2022 00:19:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A69E283DF5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Jan 2022 00:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643415584; x=1674951584;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=23D8q5UC8f4PmjRDmZXp4+8zJiCA3LpZh/yYQcUlxa4=;
 b=eFNmL3c7h94pzZZpSxTYGXbWm8NndNvFDAXjnjXc73iHiGo9T41uueaZ
 OqM/NYcBQsapqbD3WYVhnmCqGD+ZoXLcnXZKRVj53sqWKSUs99cxz/PoL
 SU+t7GQ+SDc5tNXZaXdGhOBg2ham7pc4WutR0ecfyvvYlG2BqJ2YwWGAa
 f1b3jKevn3bCvdFF+cZtp1jK6Iyv76RJIbzVwAo5GbvA7O8w7jGaKfcwq
 X0ank+EQYauCNj+28IRhRaYyur9rEa393Ll8VA9JedXvgmm5bjcIHUIi3
 Ik4l0AJn03GYbOXn8vtYRek2MnRepcIvfdBX5Ll8sLZJCp7Z3Q1nRTHWy Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10241"; a="247443389"
X-IronPort-AV: E=Sophos;i="5.88,325,1635231600"; d="scan'208";a="247443389"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 16:19:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,325,1635231600"; d="scan'208";a="768045263"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 28 Jan 2022 16:19:43 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 16:19:43 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 16:19:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 28 Jan 2022 16:19:42 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 28 Jan 2022 16:19:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mArtCOMj+IFpvTUigHN8g6UD/emM3yHBojgMU/Wwb7QtSnSP1UPNvfF67vm0psLsnBAMV3fhFeC53XJFchGeZiIJT1YLTo5ix7ZiRRcDxH50oDUmVb4l36qVcDuKn8ShNxvnq+Morfftq33oClzg2lON6i/UXj1Ryh1kE0dfVsS3sJTW0K2R4BZ5sWo1nZa1IfwFuavH5hye1iqWcRvDLPHyDUxL+3hmMFO4h7Kw0PFtyF9B4FMI1kfoEaCY/zm1MIUAdiGIr7dUFEhPbuQ5MRKu6Tmx3SR7TDHzliW+GphPk/AC33B2i+g/JMNp1OY6pJlthEQcak/0T2qGyQFRRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CnBlcahJUMVx1cu0WWLhr+n6L9PKjN+y7jIugSMZzbM=;
 b=T03Uuuyq66Us5hRzW1ETPAFeCQcnNV5KhM1uq45HDFLqLfEP+hzbSoypJPTWIQ00Xj5nk4RA/K8+zGPs5EmLTG5jh2zHZD7LaX+IH/Hs0ISuIwROnBH+3ZQaS5F0E13Ly8Vr1mOOY7xxpZCDbPPvQAJUF+37Me9xzWtZYXNCC8UReu7GYCW1pYsgtT99rk8BMhB0ASg/D1T5QJSJg3UHBIPBYwNfQYqPDnQLTGwb8BszvmBHqgiawMZvNvseTtCbpexcJONJaK0QS4I7KE4iS8vLWogruhqUgyapDgpT9No6BdQv8dLb4Eud/4ODHK5Hbwe7HE0xkL98u9v5e8Rlow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by BYAPR11MB3109.namprd11.prod.outlook.com (2603:10b6:a03:8c::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.14; Sat, 29 Jan
 2022 00:19:40 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::6071:6229:18b0:a2d0]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::6071:6229:18b0:a2d0%5]) with mapi id 15.20.4930.018; Sat, 29 Jan 2022
 00:19:40 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Fix KASAN error in LAG
 NETDEV_UNREGISTER handler
Thread-Index: AQHYDK/lB27M/Jqr70y7FKTVp1SpIKx5MZmQ
Date: Sat, 29 Jan 2022 00:19:40 +0000
Message-ID: <CO1PR11MB50284CB7082E8CBB289111A2A0239@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20220118210820.1055792-1-david.m.ertman@intel.com>
In-Reply-To: <20220118210820.1055792-1-david.m.ertman@intel.com>
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
x-ms-office365-filtering-correlation-id: e92cc5dd-9fa9-4d6a-ba8e-08d9e2bd0ab0
x-ms-traffictypediagnostic: BYAPR11MB3109:EE_
x-microsoft-antispam-prvs: <BYAPR11MB310941A3F14230D5CE4EB622A0239@BYAPR11MB3109.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kSZa/UYnWOQE7bP2UouBW4dVA2vScYyxOnGmhix4FcI/cAh42EeuQlUOqcYAiVQLV69OR0vj6hCYIHeN4VgXes0BJeTqrfgc9kCFC3XGZ/Ktp/e1eQriWWoYg1c6lLNduS9f9mTmACUDnUKJ9GW7+sjwm5rutB8P1QQpOZHlq07q1ru01AxFrAlGJFWtE9qz4GI7fFDXzZALDd/F0RxvVEyFIi1cEI+pgFimUDHaEpdrYOuhgYI9S8RFQ6t6wMsuzb4vlKlxolsKB1FIckDIIBjhXFSLFLZHezREgrVcgTfEWdm/aUOdoFa6GM7z6Qg9YGWwYgUybC1zFAi+MNDURka8LXX+bNmd8/tyFDevdPS4wXkeeBwHlsZtNp6RV51wjMJ3U+K0QJSzyeyAVf1cmanNcFgD6bzNlpvUPYLWeO6zSLiMaSGnIMdfotR9vLNjtIvZqNBVthmdqF6QKFI9UYpIk14tuTcwYL4sjkTJmZc9jou4REzt7MhV0Pdq/dg847XfwrQitCsA+UGm/AucJNjKSSPPrcWw3Qld86jt2qWVN/YfNhWmrNu5rXwLhFyU+95DgsC5QGWX5zUR3LW59KK55hW5oduwNcAmBkbp4+YQaBnUKPfNopTc3jW1Lb9e6BWXsHxwGOAj3Hs0tO9ysfyy0qERkNsX7864waNW5YOQh1i0Fu+GtjroRThGpvaBZXCqIvAhsoscVtjLIuk3iQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6506007)(38100700002)(122000001)(9686003)(5660300002)(186003)(316002)(76116006)(8936002)(53546011)(82960400001)(110136005)(66946007)(55016003)(26005)(2906002)(508600001)(66446008)(64756008)(66556008)(66476007)(83380400001)(38070700005)(7696005)(86362001)(52536014)(8676002)(71200400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IngH/RLhN3UQU9E0nL8cQ5M3ksrMN4dx2kNvrQRPHzecM5rRBocEEKLqtJie?=
 =?us-ascii?Q?rwUbJmh2kl7YobXRm2wCU5uQz3f5TZGcJ65jIa22syC0c0/A8j6nKmVMDtwo?=
 =?us-ascii?Q?ozQv98diDNFUQk3hJinyzp0daHRHbbF3Zb8RV5HurXUm2zh2/cVyPkuEzbJR?=
 =?us-ascii?Q?OVnahGfcyRZm81DCd2pgH+VUNIGxTn49+/RP29BIqpkPy82p5aCudmw2w1aJ?=
 =?us-ascii?Q?UIOU4ciNWzHiuhiOcA+aGQshVgd5c8mpoivoPhqJ5gYpQ3lEhMPyWhi8FZ02?=
 =?us-ascii?Q?eYxXnngx/0uL1+xUicKBgqPKmGhFdeijWir3lEnSrXholf+jiiyq1Yi6Es9i?=
 =?us-ascii?Q?M2YCW522l2smmnsgDkVumubPV6UybH4i8jYijMzqSiLkNqJTcpEbqzE+iBhE?=
 =?us-ascii?Q?bTV9cbDN3WmbAXQ4evuzaIvfZUeuLTu/0R42tiXP/9xMXMekD0gh1yHiOo/H?=
 =?us-ascii?Q?Z1y0TSk3MPJH6SGyMIMZhusjxiLmacNoBKAGT912/8wR8/JJRqn7LZOqYLep?=
 =?us-ascii?Q?fnQsvbW/FHs/2qH+zC8wD7s1WvghgG0RMfiDXZlpnNNtiPHVoNbYbvSzHWzh?=
 =?us-ascii?Q?jK2SyVQEhVxBhnr+bdEvEW5LZzeubN99TYqavmnCU4kZ226vFbXEnTYp+s2d?=
 =?us-ascii?Q?ZgaH9WwCn40gmsp0d0dXL53peggkSB598TKJnJ3ATSPQ8Yno0T0J72AK99cL?=
 =?us-ascii?Q?paG+iJZWfy4VKhs0uLtiiy/ciObLz0rWnrUT5vaVXjs3R5Ee3YECdpYMhsft?=
 =?us-ascii?Q?dZqXSHk3sKOsDH/QEAZBIbsXSdbs5uX59xjqOFL/dRnkenqOxMCScW18NEoj?=
 =?us-ascii?Q?ddzwcX1YQavfbCaS3BDyeB6kvu4LqGl2TUR19+No3fOOGCkMl4kMckuAoWWx?=
 =?us-ascii?Q?v/1F6W7/vvkQIStNIwnWYOtbW/pip+Yg6L9orMU63t6uJlEujznoxwZJpWQx?=
 =?us-ascii?Q?evYEOyL67l6l2uXyD29LtCc6C9y7AsZZ8fF9y/pxrnLw3MHGvw1SIEomH8Ri?=
 =?us-ascii?Q?CPTvnyRL2w5hCBSR3Sn8Eb669BugYjKhsz2dI5sS+xU6Lbc7JXBq0yqPaeg1?=
 =?us-ascii?Q?nK4bN5BpXNRJ+LOMCA/S/b/eAEYBX2+/8jWiXSASGtk1uhH2SkwJeeURzmPN?=
 =?us-ascii?Q?nhCfFVLBP+mcjr4Hf5WvPsRgyYmyB3V/pODuJ5czg13LbbR4cGRsviSfoxY5?=
 =?us-ascii?Q?DSWmGdVhvPwD4VEIjnlEsFspKpD10kIBsq4Beh52dPkEeh6BpP4+5cfMEuaf?=
 =?us-ascii?Q?zFLjEYgJos+DLPcU+tJVMAXKOlCskXN6c1fqG2Rb2LEswTQWg+ZTw2ygErf5?=
 =?us-ascii?Q?iUZsnjA7CdDwf6pM+RFgml/GCQs0Y9WFJ0TActL8meQ8AD5923dJnXSOj9Gj?=
 =?us-ascii?Q?0YZDyHpYeJoKbHaGAJqVS6nN6YMneezV8PoNlkOPwS6/l6Q8c072SaQ5BXBN?=
 =?us-ascii?Q?tu1nEY6pGJcgBhazx3Ew121pATF/915N9j2fZXPqyqBiURN6uHrFiYQXT1Wq?=
 =?us-ascii?Q?rvh+P2WjdXWc5TJBaKcGvIGCTAo/zvBlrv+OcwRHV8yiE1jGGy7U7YD+pRk3?=
 =?us-ascii?Q?uACQFAbVI76tyjFuQT8Grz4iYn2sU0xuKkUW/hbYGV5cwMQZ4poeDgVE2MC2?=
 =?us-ascii?Q?WauN93fkGVouYikw06GXu39n1hUqtubxRJyEdcQxdhpczo62UtwbdUUZ9e0q?=
 =?us-ascii?Q?OgBshg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e92cc5dd-9fa9-4d6a-ba8e-08d9e2bd0ab0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2022 00:19:40.4592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dKggCSSfvwIcJ0RLjG9bBTF8udpueiXDmL5DQJJMTsyq/A1sxS5/gklVA0hhgSAWH0JZtJYfj0uoG6ejr9mc9m2S2nTk2ZLZA/5y83drIOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3109
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix KASAN error in LAG
 NETDEV_UNREGISTER handler
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Dave Ertman
> Sent: Tuesday, January 18, 2022 1:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix KASAN error in LAG NETDEV_UNREGISTER handler
>
> Currently, the same handler is called for both a NETDEV_BONDING_INFO LAG unlink notification as for a NETDEV_UNREGISTER call.  This is causing a problem though, since the netdev_notifier_info passed has a different structure depending on which event is passed.  The problem manifests as a call trace from a BUG: KASAN stack-out-of-bounds error.
> 
> Fix this by creating a handler specific to NETDEV_UNREGISTER that only is passed valid elements in the netdev_notifier_info struct for the NETDEV_UNREGISTER event.

> Also included is the removal of an unbalanced dev_put on the peer_netdev and related braces.
>
> Fixes: 6a8b357278f5 ("ice: Respond to a NETDEV_UNREGISTER event for LAG")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
>
> ---
>
> v2: also remove unneeded if block
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 34 +++++++++++++++++++-----
>  1 file changed, 28 insertions(+), 6 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel) 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
