Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFA141D296
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Sep 2021 07:01:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5AA5402C6;
	Thu, 30 Sep 2021 05:01:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CVYvDTxb_Q83; Thu, 30 Sep 2021 05:01:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7266740215;
	Thu, 30 Sep 2021 05:01:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8342F1BF859
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 05:01:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F6F5607A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 05:01:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sg_12AUQSiKx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Sep 2021 05:01:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D54356075E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 05:01:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="247636759"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="247636759"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 22:01:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="708856926"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 29 Sep 2021 22:01:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 22:01:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 29 Sep 2021 22:01:08 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 29 Sep 2021 22:01:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f/2F7i7pAI31RsUkH/I8wjhEXhT+4zYFB8LGZDxIqCGMM1HxErbQBp7QlfF9CrWdfVd7pV9bxh6yfwxosw/ADhbWQ1ubmJjNUIpCmwZoHXfwYHrU9fXWrbNMDxlAFKyX6LWY6rFAMB2Rf97NUfWP6v7bqBQsIgOTVANfGKmjPD3P/mPzk/qrlUIwVF+pfJAlzGbXtlFgQ9lUUCNXhRc4BlijzDkKlRsysu/t0NQf1eOtf2RLrbJmanZ4FaxoLLTvNVpzuxNz9WJl/UwMJVXEbS2SvjBmqDLbbzeJVRAvpFdDqgYMGfagbtsqPwphjt4cT9Yv3mqzSH0L3+TyuWI4jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=0hlNYIOdFDHpGr35M7vq0pPd728FpO2MKF+Ilna4GY4=;
 b=SSs3ZVl85CaPr+BvYtvNbDbX1QwdQZ62Nf5/seVdSEV5MWWZkBkcX6wqMHMnZytZn2JVcofD2WK+UEkPowtl2y/eLNjYtN8OQftf5FUoRikqdOwb/sC6IU+Gp8ZASKIKjaOz/GYuVufGvuGR8BjGqSPAs+5NFN/y3svegvX7fHNROmfSN3yGcy4Pl1zwEeRGHct4wdebSR3+zOAqOycF1EVbdpgYrFexGyV0PnF9mERyogKIxtCtZ4DSqi+ooErauANMLkhb36mzH3f4CbELHW2CwgNunYiTw6N9JPYtl4Ye3gJNCVDkjNvgAsPyQvXBL9CrxybYj+ZhttWZzicMWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0hlNYIOdFDHpGr35M7vq0pPd728FpO2MKF+Ilna4GY4=;
 b=vPDvayISob/jbumKZ2enIZ/Zv5AgtC5zDYi0kjSbUnwaBaBVgRqkMunOfiQdAF4STC5Uuux5PSt+X+6s75TZae+JHOcRpcbjOKcV2P9dKA7rWJF5Ia1hyfckIBSCXtCYAPsop0NOO7yr03fwg7sbEsn0vP9/l2ZA3n4l1BWFjSU=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CO1PR11MB5172.namprd11.prod.outlook.com (2603:10b6:303:95::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.15; Thu, 30 Sep
 2021 05:01:05 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4544.021; Thu, 30 Sep 2021
 05:01:05 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 6/9] ice: cleanup rules info
Thread-Index: AQHXiqABWqSccAZyCkm18989b5R7h6u8WuSQ
Date: Thu, 30 Sep 2021 05:01:05 +0000
Message-ID: <MW3PR11MB45546F59CD4B9D4C43F8AAE29CAA9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
 <1628239746-17380-7-git-send-email-wojciech.drewek@intel.com>
In-Reply-To: <1628239746-17380-7-git-send-email-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f65198ef-be26-416f-ed20-08d983cf4eb8
x-ms-traffictypediagnostic: CO1PR11MB5172:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB5172F0B194EB11DBDBCC55AA9CAA9@CO1PR11MB5172.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aHP3XzekE4bMBgqyv9qvl6pPipAtl28raXvDxW3QNRzOmJqKahS91aWfoDa86AZG8XGMF4PK7h5EOqzXWRSgNyG72O8uab6PRWw8sCQCFgYACMn7FCBl3/gSlM4W6vgHuHB4QedoHcGf3SwsqJJak54Y29mFeuHAiPDArUYkqEggn2qmNg2jARS63Kf35BROS318dLcekVkPkCH9ZM5SMNI56IrsoUd5qNYVjhHEK4VrZFpo6MI12Ai2/ORsCRYsWkv4KPcW9ABpyOtpLPVNj3GnWhbLqSki1l0i43dZzJG6JPVCIuXMYEqujLLNEV0rK9LmQU1SfXY5cjibQ/QYB8ehVEPRjHj+PkvbBKE8oh7ggiwaEe/uvbX7A7KVOeo/Y3tlJGljYYyNZQHn8zZfvWGpjFwKWgIkMQza5xcVwox2kgCkXg0CHQGyt3vjaQYhwNR0aef/T/c85Bbuyvu9v6amx6K7OxbayX6Fz8nz14ham2zsklu1kilEcZ0NKQxAdSZCoXYb/YfGFwn/JfrtvcroE6IMmvBRiYKiRZoEnUFYRNSv9yG/dK2obSGddblkH++t+c+RgdM/v/7vxX17kYabKFg9C+j53eK4ZC3Fj3IrJ7/LBRaxvup6anJ8M+BZlfC4GxTX/a1R2hK+5AL96IhbmLdXsGdaTlVTwsQ38vKlKZxYWiOOHR1EjBwPdC90ALkwu8/OLlRyBDHWXmppFA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(38100700002)(64756008)(66476007)(66556008)(38070700005)(2906002)(7696005)(6506007)(316002)(186003)(33656002)(66446008)(122000001)(5660300002)(508600001)(52536014)(71200400001)(83380400001)(110136005)(8936002)(9686003)(76116006)(8676002)(4744005)(26005)(86362001)(55016002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lVC9Ae7igZHXHcABa/E163Yl9YXla3pP1MI9PKIwFGUWl9CY+X8Urp5ZTv/a?=
 =?us-ascii?Q?Xs883TL8HLnfaTVkqaRXkyLL0EPpPTUshJhN64TK/ZF8tWKLlUGU+agwJyQd?=
 =?us-ascii?Q?NpJuav+TtkDPPBMqD1ddx6P/i24T4PXnWrqMHDHIBeaYsaNx2JJ7zZZu7SVW?=
 =?us-ascii?Q?iuHZ/PHRQEtiWPhtm6DUSs+SOaf0iIJCg4jCu6t3wQQJID4UlBpyNRGjq5ZW?=
 =?us-ascii?Q?LgEhjXA6/crUxclPmrb7nBYvrBV35mjVE1SQH3KUdMgh4kR1BmSO3AA2AlHL?=
 =?us-ascii?Q?FeC3ODLHGuWL84A0hZZZh8980SxqWOBiSzL3U2us1XgaWL9wTK41ULRBfq50?=
 =?us-ascii?Q?+5Mp3luNONVRU7K/TlqAAgAIoPaJmOdKvmTZGNIdYDsPLDZV+z3ADXhJYqKG?=
 =?us-ascii?Q?KW/9Ee0EwZBrTCLTrCU0XpgJWzYIsu87BdZsgktYObuIDFuWx31WCS9OMC8n?=
 =?us-ascii?Q?fjoIzXsHfJSN3r89kxrSwjzCIFmWcXHZuPYP2gdgrYt40U7mNdngb4ud4vPI?=
 =?us-ascii?Q?58vKzfMLlJFK+oL4lZs1V2kYdYtB4sD9h3Wv87LDSuhDuSEnkg4W38gPyl1V?=
 =?us-ascii?Q?vJ8x1T89CiweJXSfbJTd4ROuzCnvlhvQivf6SrdhBChFBBDd4xrd7KYxYbsq?=
 =?us-ascii?Q?gNy/AExikjCuefBuUKuaqqsvg5u9W4GrCJApkPB5WiHrw/JCZ9UxJ958LE7p?=
 =?us-ascii?Q?fuG3GJ+mheQwrqmI5ArAIXSruW0b7rj0TUqf9mCrubyeipj1L7zVzwmoVLUx?=
 =?us-ascii?Q?W+2GhY167zgFosD6WejQq/Ij2wTvNkSHqspvrLVIQAQZB0rZRqd5Zm0jsj7W?=
 =?us-ascii?Q?AWkPagsuTPHvaOKmDFGzxuSaObdfR1IVRvETMHtnn+BlT7fHv30TpJfu+9fI?=
 =?us-ascii?Q?vt9/AYxAgQnRXGPz9Ap30NB1LNudnwLToRoWjZ5/lEBt3SmYxELdWrqqapy9?=
 =?us-ascii?Q?53ptjX77OEYrfM0FIuqrpge7Abvkr3V0MFgXMhIIi30DI8JU0xXWz4IS5FRJ?=
 =?us-ascii?Q?L0wler6InY9BVaQybeEd3mxhf96be+KwvbDxGCKIvQ+6AbKfURkzBraa6DF7?=
 =?us-ascii?Q?U5TzY7oX6EDDzDOwp5+Ph7Du6ntNQJ3Gax7+6uuxH/Gx6/7YrearekWzSkQ9?=
 =?us-ascii?Q?x9bUJNV6iEnFtb44qo/wy/0b2mzHh/+Kb0DM5/FWnvSLA+oHopGUlvcOQ8yC?=
 =?us-ascii?Q?YjWXMRH1ftzF+sMtBuU4iBnM6MCCb1Q6tMEtVokxSQN2Vy9S+LIFiif7zIMG?=
 =?us-ascii?Q?9HlnoqsgzHQCFIihWsBAZ4RkIhs2El0ibtE1Yq11Jr8iM6r17/T+2m/+jnmA?=
 =?us-ascii?Q?4EUPzAFOxEFCTjOR9yTcvxkU?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f65198ef-be26-416f-ed20-08d983cf4eb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 05:01:05.0891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ho8bveyuVQcmN8ZFy13bXoH1cn+pNwJJgwektOx6Ms2jfLHmje78b5JHt+FP7SnXBIk2QYI8Hz1WMuR+JuGyAaatATo+OTy+DPQE95qKGBc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5172
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 6/9] ice: cleanup rules
 info
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Wojciech Drewek
>Sent: Friday, August 6, 2021 2:19 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v6 6/9] ice: cleanup rules info
>
>From: Victor Raj <victor.raj@intel.com>
>
>Change ICE_SW_LKUP_LAST to ICE_MAX_NUM_RECIPES as for now there also
>can be recipes other than the default.
>
>Free all structures created for advanced recipes in cleanup function.
>Write a function to clean allocated structures on advanced rule info.
>
>Signed-off-by: Victor Raj <victor.raj@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_common.c | 41
>+++++++++++++++++++++++------  drivers/net/ethernet/intel/ice/ice_switch.c |
>28 ++++++++++++++++++--
> 2 files changed, 59 insertions(+), 10 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
