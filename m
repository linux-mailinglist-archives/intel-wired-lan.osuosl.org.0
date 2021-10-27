Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFCE43D35B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 22:55:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE6584044B;
	Wed, 27 Oct 2021 20:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X6vNUJ0PaeTM; Wed, 27 Oct 2021 20:55:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A27C40449;
	Wed, 27 Oct 2021 20:55:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45FA81BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 20:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 346B040561
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 20:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZeQldJ-fdwyc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 20:55:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B33F40537
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 20:55:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="217174991"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="217174991"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 13:55:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="486845047"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga007.jf.intel.com with ESMTP; 27 Oct 2021 13:55:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 13:55:31 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 13:55:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 13:55:30 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 13:55:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oCN2Dr1LwZD7kHVJHScAqj7i3IOlQpZRcLCQzltmpWKtPTuT+ISzxI8XSUs7GWGYe2Jfs8Sihbaq3KODqIgNwxhArrK6MUT9mgEtoiI8pt/51zQMaxFr0yMu/yYx9shY1MWGH9n+Opj4z7sSb3+11M/uUzBSKuqO0trCh1qJ2ocG55O6myEUw5CToIKZoJFjWQVmEI+zq/Fgx0/q+x0hOItb0ffLKWfvPk+0E5Q3oPqzfjvgWcefEoOV7nE0RCcGHzrUzRI6yNfRcmSnvKYvcLfGvcbB7FKs9yhFgADuOOmtYfz5OsLDE7I/CMr7BVze3pioCAeKp9ICLoZMU0y1yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L+NwnVNzteDbpEzK0WWMT6fz84gZrEYZuXA7KXXwBbw=;
 b=Idq2EbXYlrAXEXFdK0mY3I2D43t5tF/BlciSvF1ogRt8ybhdJN/WfHiH1/BUFnSpQuRJu3rh7EC3s8j8Fq7U1wDBKUtN6uhRKsdy8fbYqlhpdCk05mRfpr2wJA+ETc8KtToYXaGSUVy3uLiEc8ZpCW0yvMhCvK7ZfRsd1A92LDviftR61qQBtn8gnNGX2npR6FK8QwYq5QdUDkXPRfDHUGQkE8YZd4CGNRjpFL0RPagT4zy9McxGHiuSvtCqhCsIwZJXWiuTottRM7XnAP4+JNpTYlyKpsGJQzF9/E2/7eLVTCJ1ROGVb/Sfm5yG+FBMNF8ej1tdg4DpEillD8nR8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L+NwnVNzteDbpEzK0WWMT6fz84gZrEYZuXA7KXXwBbw=;
 b=G/4Vs0CT0MYvwaUFp7HqiuOHYoxbAlclRV3K4fe7pDAHfMrstm24tj4EZn1L5gp2KWU53/PrwEazDYZo4JiXKPhumzLZskhH2ebmm1jnm+gTBaU4ri/Z36WUymGcCOhGywPzMatir1y3QgpOnOiX/IU7g/HJrw0QKBFrV+k5+vc=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4760.namprd11.prod.outlook.com (2603:10b6:208:266::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Wed, 27 Oct
 2021 20:55:29 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Wed, 27 Oct 2021
 20:55:29 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 1/2] i40e: Fix changing
 previously set num_queue_pairs for PFs
Thread-Index: AQHXODXfsLjjVRpsO0KY+1w2facbzKvoeXEQ
Date: Wed, 27 Oct 2021 20:55:29 +0000
Message-ID: <MN2PR11MB42244C849644036FA11758AF82859@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210423114326.22393-1-eryk.roch.rybak@intel.com>
 <20210423114326.22393-2-eryk.roch.rybak@intel.com>
In-Reply-To: <20210423114326.22393-2-eryk.roch.rybak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 325230f5-a667-4242-a880-08d9998c1c2c
x-ms-traffictypediagnostic: MN2PR11MB4760:
x-microsoft-antispam-prvs: <MN2PR11MB47607901FA588E7D137F813382859@MN2PR11MB4760.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AG3Dq1AbFLZnIvoQX+BiNX0E/OtRxesL/icGklIaJWcIasy9TaqtQ83z8gLPFu6teLbPrM+UIuPMyKCa3/3mpt0A60E4NTepXlACfNgibJI4vAmDkYGNiRbNuzRY00ZFsT/xIuiwi/7h43p8TLxoraJNxDsYYjSGB9X+14Tv8r9g04jhqfiH5tjaC9CgjaGDRonNVIDR6ySbaJe5NU+KrS+5sjzoKoV+vhQaDO05whsjaCX/Snxcz85XI6Py2WR2EoHy5nsceGCOnraxTrQ7Fyd4hhlWtdAeoIu7LTgCQm4FVJYdpzqjpMH6AU6DrkMkJA+yCcKCmJV+1+dpjEPBFtNK2vTcPmaIrwApxSuInR6jeZjhn1THMpMResJBEWTt/k6PmB5tz0lBQmt1odqSNSNzoPqfYN+/dFgPGpFE59wB2uc51OVU0irIQK5FdqpK5Fk4+5Zc7lwS8mRm9ZhanxVI5GqCRpBgN13/UCgVtTol7kVmwlPrnAYQ0C6d/CV8zn/774B8c9FqC0HW0vezGLmoYqh0Enj9LdYqt8IZrPQgO/Tt/rYKTHz2gigJiD/KFx7v2hyCvTj61XopUKxNvQgxKuig99sjZlwysfttlJbc3CgDn19TdVdgXyA2Tym47cJ6tBbl9rfFmDUkfOndnFTNJLZ6SuZ1cBFvxbv2Jp8dOG7fstNnY2bZb1RBuQ8o8AhhofcxHwqHJ3G11zDNcQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(38070700005)(66556008)(66476007)(64756008)(66446008)(7696005)(4326008)(2906002)(316002)(110136005)(8676002)(8936002)(66946007)(122000001)(53546011)(38100700002)(82960400001)(33656002)(83380400001)(55016002)(76116006)(86362001)(508600001)(6506007)(9686003)(71200400001)(26005)(186003)(107886003)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2dLVCppJi/FlRVzGI3/SuebtYhAn4LYzbkicuHhRSCslcPyfKN0IbNS8ZJK5?=
 =?us-ascii?Q?b7O5bK2Sj1t0fz6+CVes6G/UYEcFMN2bPwNPCuraFu97KR88U/ui4YqKQGJ5?=
 =?us-ascii?Q?bv4IzKByetpb/bySUFIjVx5qv0/4wdcmXFVnK9GW1M68L8MRGd8m8Mcs1sUO?=
 =?us-ascii?Q?wEoGCkazraqGTKiNTYhiejLzGeGSgrR79XgFLrt43osGHJWAYB860LGJdVm5?=
 =?us-ascii?Q?jDaSPiM5Vg9OgQAT8gbUkisqF/tEQsJHo0Da9N7zmZsOS91MTrfgnl9d2KYI?=
 =?us-ascii?Q?p4bFqEfkT3/89Xzi1tWgYihsS76mFnQ5IrIsxQ2Uo5ThwBup4S11qtnxZe5J?=
 =?us-ascii?Q?sDc83E2CBAv2BucVxDubgLTF0PhTu/gMDmPPPZOZdJMiXfNzr7ZYOm1ikQB6?=
 =?us-ascii?Q?BiaDWbdNfeuWlFQVgHCZSMFbnKWyxUWNx5/POrnjs/OTgId3d2ulXHWtFa4T?=
 =?us-ascii?Q?iCkScrg9PEe3WSY+loupmTvqEIoWtdhVqdxRPgRdMCyNRXQsh/t8C/BxFMrV?=
 =?us-ascii?Q?H42Sf6g2PImMRk61dl6xq+kjG+gZWWBYsX5KH5cfzE8A7y7vy/q9AVo2ICwP?=
 =?us-ascii?Q?WwwBil7Vvc9znJO+H+W7JNI4nx2VSgmKMgtSywYtKM5HL5fj3ruGcB59Wdsp?=
 =?us-ascii?Q?ovMSWriOsXwvywOf6ZKoF1etS5gIZ1X1iOx0dG8c4WwJsGD/15r1ePnNEZnq?=
 =?us-ascii?Q?k9mAR3aFVnZWxC4Bn0KbG3VM5yRgu+S2JCQM2jEs4RKMZIuzU1ReagX8cGDa?=
 =?us-ascii?Q?QPUahtmD85nrqoAArYYwiVRuSRk/0tb0x5xBYFnx7ym5va741kSx1cIfeIJs?=
 =?us-ascii?Q?e62TqiEdP8IN72mFQXxId7sacmQGreRcZbiQynEFkGN8OvtbQL1d1E2kBbaA?=
 =?us-ascii?Q?qbeeXzNgwuCEFlhimhbBUf0K/pbWRHOwAcPkznN5K/jUBkUUcxuBRXcy0Vjx?=
 =?us-ascii?Q?m+KXzduGw2CnYEYrp+ODeJfJV9fy5FzGEl4dC9Q0T4rWq3wYrBsjrHKGFnaf?=
 =?us-ascii?Q?Y8yMWQHCsgNrCGOIuI9BBCI0RgxdeWQHey99Wvs45COB1/6gF9xVXqFBc2Ws?=
 =?us-ascii?Q?/kezvJiymvLdcrWtcU/yzqIVRZW3bNxk+y7wp5a41SNdgMpjjLXGDc2k/tAT?=
 =?us-ascii?Q?C4O6IyCLu9SqQCis5RL4oRjTyhE160/Oojrl/B8TRhFrVUmT7qjYiF6EhkJm?=
 =?us-ascii?Q?KTVd7Zh9v+Nq9P6yyAadm6cJNcq/z+0nreVEXttw4P0hSNYCTfTG+MWNcVjz?=
 =?us-ascii?Q?dJlAuHNSaEj1/Cv+jLBO91oTHf3lEl+Lv1OU/tklkjGJVMuOcAKA/4+MYMAO?=
 =?us-ascii?Q?Jte6jgYAEJAtxrBOi10R8inN1cz6bEq+yMFZiq9NkuN1dP7B/s3WcPH33gTI?=
 =?us-ascii?Q?NMd/YIvbMp8wcWCl68RBi9Aah4i5D3BGDmqSx9NCstPggE7UYD1ui1V1wGwB?=
 =?us-ascii?Q?A2PScoeNpfLBfxBzThjVb3S1SeXsGe/vMdAuP1oCAP6X4ShhX3EkxyMm13Vo?=
 =?us-ascii?Q?FStPTf78L9AkfTqdEuKsNt+rWPXo6QP4u2LGMlaNd/Cd1+ZaNs8mAOyR7aLy?=
 =?us-ascii?Q?1ePKgF4jnHnQ0/IHHFN0+7Ou3sWaD3N8h74rjMXSRabSA/lkri+PcjWl2GMk?=
 =?us-ascii?Q?Wq6GLKSNBJ8lkfdtuww55Bgh7FmPgN7pYMXE6ForwcKngZWlIBu20HtDqNHu?=
 =?us-ascii?Q?koefGg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 325230f5-a667-4242-a880-08d9998c1c2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 20:55:29.6056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: svcZE6kUO0pDm8rcDcYMS0kGGqt0U5A2HyltSqpdHvXtCxSKIGhNFFud3dwf2qBHSVUez+mBHn9cmj+ibVbBwfKi/57Ym8m/NtimiMtyzM0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4760
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] i40e: Fix changing
 previously set num_queue_pairs for PFs
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Rybak, Eryk Roch
> Sent: Friday, April 23, 2021 4:43 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Rybak, Eryk Roch <eryk.roch.rybak@intel.com>; Patynowski,
> PrzemyslawX <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1 1/2] i40e: Fix changing
> previously set num_queue_pairs for PFs
> 
> Currently, the i40e_vsi_setup_queue_map is basing the count of queues in
> TCs on a VSI's alloc_queue_pairs member which is not changed throughout
> any user's action (for example via ethtool's set_channels callback).
> 
> This implies that vsi->tc_config.tc_info[n].qcount value that is given to the
> kernel via netdev_set_tc_queue() that notifies about the count of queues
> per particular traffic class is constant even if user has changed the total count
> of queues.
> 
> This in turn caused the kernel warning after setting the queue count to the
> lower value than the initial one:
> 
> $ ethtool -l ens801f0
> Channel parameters for ens801f0:
> Pre-set maximums:
> RX:             0
> TX:             0
> Other:          1
> Combined:       64
> Current hardware settings:
> RX:             0
> TX:             0
> Other:          1
> Combined:       64
> 
> $ ethtool -L ens801f0 combined 40
> 
> [dmesg]
> Number of in use tx queues changed invalidating tc mappings. Priority traffic
> classification disabled!
> 
> Reason was that vsi->alloc_queue_pairs stayed at 64 value which was used
> to set the qcount on TC0 (by default only TC0 exists so all of the existing
> queues are assigned to TC0). we update the offset/qcount via
> netdev_set_tc_queue() back to the old value but then the
> netif_set_real_num_tx_queues() is using the vsi->num_queue_pairs as a
> value which got set to 40.
> 
> Fix it by using vsi->req_queue_pairs as a queue count that will be distributed
> across TCs. Do it only for non-zero values, which implies that user actually
> requested the new count of queues.
> 
> For VSIs other than main, stay with the vsi->alloc_queue_pairs as we only
> allow manipulating the queue count on main VSI.
> 
> Fixes: bc6d33c8d93f ("i40e: Fix the number of queues available to be mapped
> for use")
> Co-developed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Co-developed-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 35 ++++++++++++++-------
>  1 file changed, 23 insertions(+), 12 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
