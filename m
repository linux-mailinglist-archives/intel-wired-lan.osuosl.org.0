Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 219B059D6CE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Aug 2022 11:58:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E1D12404F8;
	Tue, 23 Aug 2022 09:58:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1D12404F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661248684;
	bh=O31xxWYZrv7DBGaWpLOG39jCIZxSnTaUibn852hxz9c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=taaePRuGfklOPz9dQ2zK5cxLSP7d0PDzKJaItpJc/faWB88lF1I89be55Trn+ZFgX
	 P3q/NsmvO6IWmWuyhUlXaCksfKcCI40UytCnP3FfMKbuCNrzQoZuFTFEilDd0++xgt
	 0I0McphfbiQcOIQi/Tav5BTQQXTK3f4F/CPg9aoUvKQKV3P2bGcFU14QyD50eCVdA4
	 bXKVbc0FfRiqQqQlsR6SBQX9KEt1xouGthp3Q9bYAUHOnPNP1dCCak/hoq2Iamr7sN
	 7dRObqj4Qj9Hu3yef+OzMfHQOd8Mp7kI2POVviE5Usi+neBSTpLtmsyOZ0/IiRysMN
	 YPkbioR+jesHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hq9fpQcZ_wJP; Tue, 23 Aug 2022 09:58:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A03D240879;
	Tue, 23 Aug 2022 09:58:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A03D240879
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B4E351BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 09:57:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B4128148B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 09:57:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B4128148B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KgGUzLBiyNyi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Aug 2022 09:57:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C193A8132F
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C193A8132F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 09:57:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="276672374"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="276672374"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 02:56:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="785186922"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 23 Aug 2022 02:56:15 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 02:56:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 02:56:14 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 23 Aug 2022 02:56:14 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 23 Aug 2022 02:56:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FAUdhaBVJr17NlWvWCY058z58Ic4wVNH0I1cm/56P4pGT9yeP3V9eTxeDPAoEVcdrDoYb7FaqseQyG2Ggirzo3u91zUf0Q0ilXulxVfXYTpRmnApQWV7S3VPVlXgY02+MSGOSompzznoSsgd63h+pnAduUTJ6nRBcdGt6e1du2Ow3uP6uBR+NLX3WhBYbjCVZq8fIvUKrmjLrbKQh0rLxvqwcCsM8nysWB8WVpHOdCrtUGrPXB/RvWTw8F0bvyub4a+ssWalCcsoPmsNhUDSS8vCnvzWxIoDBo9wbZZpetvNyNqT9hXNczoh8DfM4d/X0QnY0rhga3lDbVVU55iXWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bHlOh6NALrvvUjoi9DJNhebijIcv6zHAx7hjXwTe3As=;
 b=ae+Tff6CFTIqzAzdXdq/xt8Cb5FWQyb9CJCkDfl+tzrY1dUfdAfiQrNZEVZsy8/F3BSYxGLyeW1xbOpGCtk7SRDva0sGhmWa8gimwREnjzeOLx9iEzKd1YPUlr+obpArSEooxYooOmYIyyclQF6ushUgWwnA4soYGYscr76iJ0FMTZ/cGe1pRrBgOE3H1vXCeNPI4Z8ee5daiM1Sbi79KeY355SEG9aNA8ZWT3d/U/F2dFpJVh8KBTtycYRKiV1MV0xY/n4SiV1iIDDvdsnjafYr/ugZvWozrkOxDnk8OlkMrKxVmZml5qRk5e10bPD4W6Uv6G+AIDW88JmggjXpwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MWHPR11MB1613.namprd11.prod.outlook.com (2603:10b6:301:e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.21; Tue, 23 Aug
 2022 09:56:12 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5546.024; Tue, 23 Aug 2022
 09:56:11 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix incorrect address
 type for IPv6 flow rules
Thread-Index: AQHYs7iWnFbliA7JxEO1GIQcF3pce628RKFw
Date: Tue, 23 Aug 2022 09:56:11 +0000
Message-ID: <BYAPR11MB336746DC53E64F92EC1D724EFC709@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220819104552.1656-1-jan.sokolowski@intel.com>
In-Reply-To: <20220819104552.1656-1-jan.sokolowski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2b722098-9801-4da2-7683-08da84edb5a1
x-ms-traffictypediagnostic: MWHPR11MB1613:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SdaGb+y1rpUxiRWj6zsd0DS0GVj6xl2Rh+lSR745gxRo3JmyRgevEDLdZXrueacabaZLO2VhpJ8IkmuM3L2YFL/nVX1GJ/yOJphWjNizJs7dvY3AMWVlnatMeDz9ZIBGskB3D0Dd4GpOYdQWbIPbO1wibOeDiGFYiDKZbS5PWznnU87RQoiC5gRarM67roQP0xDN50nET+8u9rziwjhkBcEai1oREg0eA6HrtmdVReZ8ARhW1EYmGTgPJbYs15r34yEYplsAYzdkjdsOOk+Dx97IoxkdoduUEy+IMK17Qt8ezxaoq0ABfM5ViEs8noGbaZP9ClK9tKIhRD3qvGHv0AtChI3ouIaxOph/IUl3FJpfIHvqxtqy6NJMBJQrx69niKKhis3K5qNB5VZL5axJaTlB4+8+hz/XG602AozYlo7b3cZ+Kx1MHCoeD5AeWQ82+WidJ15A4LiULp8PRxoiC9rjxlJzSw9AZC4lyHPMjx15K/Ld/IjF1GSz9KBYvlj42PsNJDTWa6AVeBR/kowr2xPFXpbqABUtDBRst5wyGLKYn6c8X9m4TQ/VQ0cHA0s6KkDx8LH3UrZedQ6A4Nm+6aHCB+f9AfJyUo+0qbpnTLbY7TOKJyXtLq7OeL/SyIov1C+dVfJAkZ0Iw9Ua++BUoPONiaEMpxMliAZuI6fAh2YupplvzIUmuZvTl9bwvtvEPC9TJAK3+UyPqP3he3FfA9xd9Km8EGYgnHu3bhEUA/M5mVf9KJmzoTffv+Msz3wpf+3BKaLxnVhtbtliZWLb4w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(376002)(366004)(136003)(396003)(41300700001)(8936002)(5660300002)(52536014)(478600001)(33656002)(2906002)(53546011)(6506007)(7696005)(26005)(9686003)(4744005)(107886003)(86362001)(55016003)(82960400001)(122000001)(38100700002)(186003)(38070700005)(83380400001)(71200400001)(76116006)(316002)(4326008)(66946007)(64756008)(66446008)(8676002)(66556008)(66476007)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HXoWPS2694oA3vJzWtfm9W6h9UQzHD9apH8Z8s64IbVIzmR4Nu2ZRCzfLWTh?=
 =?us-ascii?Q?Nfws+mjQMKnhi8TtdGdhgUmmpJIxIMw0lWT7zi6FoDkuqpsBV53bYCorUm/T?=
 =?us-ascii?Q?BJMElYxi9Z/6DFq88OR/Hl2cVajvtFeQtAi1J3dGe7vJ23mzUZaer091rz9r?=
 =?us-ascii?Q?HHnJ9bHp8un2BcxfMIYSrjeMmaeAfeXuQow8uTZASSkLBZBMedYAPHHo4z/z?=
 =?us-ascii?Q?xz0PpRe448A7z5rY7GkQWBHvlrca4XweHBIvnBjwVndl2dk0oSO4lqmr3hdT?=
 =?us-ascii?Q?LPdb2n6JvpvtILQqaeU9bxYboDkg4gU7oXIQvr7Ae6M0hK2pBRPKsmXUJRE2?=
 =?us-ascii?Q?3f3U/YYmFJbxGttu5y+yZeqZfP47XVDUB0H0wKe5sU/Y0LEcbJUDVRSzBx5+?=
 =?us-ascii?Q?b0rwYNT3ltawJG3b85nRUUd8k/Yg+gUT//cHCB+pmhReNhMJfx9w0OwJ1keA?=
 =?us-ascii?Q?+DOXnBHETN1XOC9jNVa/m6cAX6p3/6uxoNh0CO95MB6IIEeMylUnwUb2r4c4?=
 =?us-ascii?Q?Ugj56icy5vLb5KJ9BB19Gyn1ceNr3iawSaOMWBXHmyPQTJiDpxHUvpqseFAJ?=
 =?us-ascii?Q?a1B5g0431i3OvY5mV6RsHKMHAdIa4rQGbWvRxuRbYlkUjyNNi2oV3yxdrDbL?=
 =?us-ascii?Q?SGPKLvIF5fk/TJHp9QKoyDFOD0l9JERhUa0zeISWltK8Ym2jwvy+VU7yGrDK?=
 =?us-ascii?Q?KCHpI6+OPt24jMDEnPUmZqjXdL8kZpwJOp06+tdtSmgRSidX3catItGhvT83?=
 =?us-ascii?Q?qyFJ+ZGjKYyD1ajLDO97JbcfsE/hIdQUPT+NAwGvCTV9NKKgMx+RIyMDVfUX?=
 =?us-ascii?Q?w2JadQ2SwBTYfBRn7gbAc9kAZ0aJq4cakbVTQw8km0qH0q3r9QEY/YTrRqCO?=
 =?us-ascii?Q?xS3AjsiMfWwbelD8cJFU0+zUEM1rAsHb6ANuAocBuMbFeTXEshXvrTo6BlOM?=
 =?us-ascii?Q?w8LOw6j7q98GalMEKswBU0XyGBoSPyHn730JwlhhkeP7EkZp3XJt4ag0QCK8?=
 =?us-ascii?Q?IkQublI142LM/Ey1GMsHrZ3lBhPWVy7Whu9M4Ee8j6ClyGEuHbPPk2k+WHfG?=
 =?us-ascii?Q?MRmBKjozIk9Iv8hB48LB4j4UGI1CfGwUc1lHoYejgIQ+VT9vhuUbQBax1sHH?=
 =?us-ascii?Q?JnJF3r54GCHNTVMjaNhOQRvCKNfvtg7fl+JlekQYHgU5x2lCYL6FOYeWH3+Q?=
 =?us-ascii?Q?TTCNK/qAUQ76aIA7CLH0PHFLPGxo6t/U9yd79FHVVA/iTmDXwOpq5nrqB8SX?=
 =?us-ascii?Q?1eL0Lg8eRyb2KuxBphLrvn7Nxe9hIT/uTZzzOUrwNbZMGBMLVTMPX/KzImcU?=
 =?us-ascii?Q?cx+b28b23l7h/751d1ceJrNvqZfaj98hqHQe2dJ3OiEP3tkQQ5BlYbZDK9Ns?=
 =?us-ascii?Q?3i92iN0pf6SgfLkqJnLwalR5SMSI3qlaak+0dKIfoLntWX2dZIW1FGrO4z3Y?=
 =?us-ascii?Q?k/jeFlDslg48gl1MeyRiPv2pj5z8+I7zORqKeGdSby9RjSSd4VkwIBbm1Nfe?=
 =?us-ascii?Q?kXuUghuLhgkGoZ7X/YRZGEsgCGppP6C8xzhwXZgY7ZO78qS8ydx4B4YjIz+h?=
 =?us-ascii?Q?pXHGYH2/dgwbdoQJAm0ASQqulk3fNr9Qw43/n9s9?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b722098-9801-4da2-7683-08da84edb5a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2022 09:56:11.5251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m5c2KSxT0Tbe7iUWBZgCVuOz6iM5GJFqswuvTuk4wB6D/2QM98i9L53Yd8NPExkzviRKk7YDbn+ASB3uOFuE2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1613
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661248676; x=1692784676;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xq7eiQN1QBaBdY75fx6eCK49fQGLImwxUIbjI/7ERt8=;
 b=E8EqBbSAaHZCJfd6u27DQhXT3GUx6PQ01/3TmzX+hvKZlNjFbCZctEVP
 F5cpq50ZyGbhH55hXqtBOKcRkrV3SyuXeZk2eg9aP5WMjar9emukA6EHM
 6PpAZ46YrIPWPWButKZdjkGq8Kqt5fd3fKLr+vbtdve9qsxje82KHfWec
 9Gar32/RebNe7lDxkQmkZJzVNeGFFK3GYDeXT970eO+BE/jveUL16Jbn7
 3inuJf8R+9vx5mtNfcsd7y7Kr9WAaT1Q2D87obhzqntKR3aUTTz8i9M6C
 fF1WQD3PKEO41pHvfPDHmZ5bL03hHnR7ko6GADW8sm2pTqED/1DyIfAuY
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E8EqBbSA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix incorrect address
 type for IPv6 flow rules
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sokolowski, Jan
> Sent: Friday, August 19, 2022 4:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix incorrect address type for
> IPv6 flow rules
> 
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> It was not possible to create 1-tuple flow director rule for IPv6 flow type. It
> was caused by incorrectly checking for source IP address when validating
> user provided destination IP address.
> 
> Fix this by changing ip6src to correct ip6dst address in destination IP address
> validation for IPv6 flow type.
> 
> Fixes: efca91e89b67 ("i40e: Add flow director support for IPv6")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
