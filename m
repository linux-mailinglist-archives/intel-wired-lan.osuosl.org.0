Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2E3595A1B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Aug 2022 13:29:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2C46823C6;
	Tue, 16 Aug 2022 11:29:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2C46823C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660649349;
	bh=H+U/V6dj394wBRa6bhUtkP6Wt5X9BPFFaJTucsRX23o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fw+4DZHziw/aezxm3txAZ5X2KJLkKME4exLk3cdtI3rRLfL1ntb7y5k1Ma2NLb0/x
	 LoiIAl/V2m/SQiJRs69pNJ2KxzmZ29VsabhtAVvGFEgweJhVoarMnuJo3d7lWz3J4w
	 LtWddL3DnExMKlW/AVJx1TatRhwV7ddpM+kwr0zxRBOLexLwloMzQjIboTwz2l4xJj
	 +gwD4TNKbNvFqtP53BWZZyWjsGMhlTyFkfK3w//WhLCra9BoWHjzBqEHzdqPksV7nu
	 D2ctQyZ7gxtcUbTG6SNjp4UOW+gSOQ882u7plcr6TRAO1IR6LI+xm2Cc3wNrfazEHR
	 dkld7y5TMYMWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tf0OqWlwpBFI; Tue, 16 Aug 2022 11:29:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 781B1827A8;
	Tue, 16 Aug 2022 11:29:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 781B1827A8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D6271BF386
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 11:29:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D2F541579
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 11:29:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D2F541579
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dx_e8XaokeTp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Aug 2022 11:29:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2899A409E9
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2899A409E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 11:29:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="289764501"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="289764501"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 04:29:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="557662332"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 16 Aug 2022 04:29:02 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 04:29:01 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 04:29:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 04:29:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 04:29:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wir6iP8ixEPUxlXsM0Vd8W/lfr5kimG2E0m0mVxo3Rn65GpZpTr9+CTWG9horTvhOW6sKsmAtWsCalAEIuOYIjXiiSKYLVIKpgOU/u6FFU/bXXTWPxDw/S+57NEagWN/2z5AsDRWpxEfzST5KbIhppNKZn0KdYqhjaoY+++bANA764qtTlucFtayzuRAcLlsLhOzt1eS3EyHaH4Nkbcl664IR+TvShrhaPX4dRfMqpOcGsg7D8seJCD+6RczYSptdBabzOCjmNnLiBDPwcOJ+9Q6Fw/laSmqB6nydDghSpVAXiQdVuEDRDn7RZjdrgieAanMhJaUU73n+wWPvDl1tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wkAT4aNTyOWlBKbqNgmOHDUFU6wjv8uJ7dIh1rdCsgk=;
 b=cFO7fSMxE+PjsdTM70o5DDXIbkR/6dDEDAd59ak2e1g86CnSnPvXtUHZlOO8tyTvtjrqyqniaaXJFn2BI2L4jWCItPPifurDIhv9IoBrXYZmRX4X8OV06ZgZm1vYoOoQ8iYjSV1ybnAduPxJTntKXPeglmmJ9tyGqYKH2OH5TZ2ziBIdk8LeIwgKW4j9XypC3vkOvutv7o8Jm/CuxnNWfk2SvOThGtLyFaQ/i7woQ3xijZg3GfrXAFXtkLbpsv3iXRAXyAM+/ibbB7kh9V+Oak1ekfi01oIhZPP6eLm7d+aHxT196OF1vHj0BxqdRwCZleaGf/oq19W1+rGDQai9GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 CH0PR11MB5538.namprd11.prod.outlook.com (2603:10b6:610:d5::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.11; Tue, 16 Aug 2022 11:29:00 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::d45a:9b13:46a1:8a35]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::d45a:9b13:46a1:8a35%8]) with mapi id 15.20.5504.028; Tue, 16 Aug 2022
 11:28:59 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Fix VF not able to send
 tagged traffic with no VLAN filters
Thread-Index: AQHYpxUwzAAdYHTWtEW6PHCQe/b4fq2xeH5Q
Date: Tue, 16 Aug 2022 11:28:59 +0000
Message-ID: <DM8PR11MB5621CE6291796BDA853156A8AB6B9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220803084246.213685-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220803084246.213685-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 971a91c0-3455-467a-86a4-08da7f7a83c0
x-ms-traffictypediagnostic: CH0PR11MB5538:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pm9RYQ4C+l3hPaTkG7qrgyIgzY8e6shPULadiBND4jaQmiCBZuombQJaj1e51K9MDHgyEC/6lyyXFzzKoL1PpAKvwQhECuWaNlqhw7VhVRUXsDketzyX/4ZKr5xv3Z4b/qyCzLTCe83t89Kha2Prql3pSps9egImOPktgrAmJH3TG+HV6AmqrDGUvNv6Vsm55tTDhWw+6KTmeB7uZpTu3A4KE1URj+E3zq9ntvb5/ZE381QjqnREG3HOX6AASiLefljrccTXamDSOLKXpfHXbWBf/V6TsBpxuyseaKVyRgkmb90s9BzRJPFwX9YMS2I3n76G715hRj/2EcvE5rrmjvbPPMy0Pu0g5EbjF2iGEdC08WLmWGnM/Q7rkQVM3zTmIGFQQYY8tNWm6jbc3dOEPSoFngq3B3ICeF9MsKaaA8UiFHc7QvViYTJn1ZNJHFO5ilqA6YVea0vHZy7bUfF+dlN3IIC3FHCnTALNEBxXitPUf9AK9CqzYT39YbugAZP+zI/UWyTb7pUA5NdsnaI+phb4gsdBw0ZH6GGXfyt7SMEBcfAGXth7sRFzlVHmnErsCbUgmIlvjopX9UDaYW53ACnaRj8mI/PxVBCtfMq6TfGlG3zkMCKgeitAOffpP5zmifA8VRLSeU1B5mnXdiSKOSWU5+ikQBjDOB5q4q15LEXYjV19rDPUrvnvyKMjNGaSzAWth3F/cIWWDZIspe2FlJ68PjIEXCwfWEjtrjr0nEgOpTFA20j3sFRnu/Lj+vUfuiH2Ux62h9KVcQ787bW9SJbsClQokY9DJ3aj08ZxfevWjVXM5Zszx453ZUMcTyu7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(376002)(346002)(39860400002)(396003)(71200400001)(41300700001)(478600001)(316002)(38100700002)(4326008)(64756008)(110136005)(66946007)(8676002)(8936002)(66446008)(76116006)(66476007)(66556008)(52536014)(5660300002)(26005)(2906002)(38070700005)(53546011)(107886003)(122000001)(186003)(86362001)(6506007)(33656002)(82960400001)(83380400001)(7696005)(9686003)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IyZGJftc9k7OiLu2vAgH8F2MVMNulfYo8rfKTnmlw7DOF6BQsXagc4HuXWfB?=
 =?us-ascii?Q?QMyCGZGYJ32ugiNVF4ZaVZ74ld0r4601bUHpnQQdOWNPxLOV1dR2b6ieyYDU?=
 =?us-ascii?Q?Q5DJPG+X4dRjLAzxWuk5kPHixukbr+qwyTufajfpA/YBt+/kUwq1x9UvFxvj?=
 =?us-ascii?Q?VXhtzHUrzDsXZjfAZNKZbvjizao0PaSv8a7LnYWn1bjW6n3VxxM6Q3DT1q9l?=
 =?us-ascii?Q?4caYUjkXQeGRMYANVKFvCulvf3zmnhPPVtH3tL13deR5Zxmu6AxRep5Mc0Mq?=
 =?us-ascii?Q?YPAR/O85LyQXWLo17J2RFlKIA52rjWqL45Fz42Pg/SYtjvto9BdO1GmzR5vP?=
 =?us-ascii?Q?1U2jkQkdhbRXrLj+zUcyozd4JNwzg5P99Yi6OXZoti4uTi/5jhfn9nu6/Swu?=
 =?us-ascii?Q?cSfbcmkMH0ghZBeMywGHaaol5171mnxwQ15mPnZaWFcB2yPhKsvs3pr+P8HQ?=
 =?us-ascii?Q?wzLsUJxwWYRo3O42Cn+34vN7ZjgrDtTeSNThz2vwPqlxgHDjao5JwAafFlVK?=
 =?us-ascii?Q?uFfmCPU9fprhTblEUI/mHFxInS6Ovz39oidDk7vndj/gM53eVqFcFqYX7Gg7?=
 =?us-ascii?Q?TlXeT0yWpPzLlqBig4M++ls3ftwohbuyfiPM/Lx0ARVr2M+2cgb0ysLmmtom?=
 =?us-ascii?Q?HTJy54XIN+RBBEwAXEHhX9rPUuPtpstZOgpfRbT/hm8qceMxO9xHWruDIe1P?=
 =?us-ascii?Q?+woX4BFrc48msZxJWb8PoI3XlNm5Ycp+mrOZ23OdoHPgvo03u90TX2D+MYph?=
 =?us-ascii?Q?Ri5CZElj8dC3Byl6DsU4QmD53RGo0EoeKGT7EWvdJuqW9tzFcShuLnbyxS0R?=
 =?us-ascii?Q?DFlxjNSgFYMCDN2xa7kCFoZ0VEhBxtFYWZFbkXJVMXdpAz1u5gYsPGR05vqN?=
 =?us-ascii?Q?BaDxu/PeobY5YviL8hB5b3Htz58kC7shJRTqljjn1AYkvdM6V4YR99F+5cg3?=
 =?us-ascii?Q?LZQ2jVEC4jRzBMhEon3jwl/oeQXxTNs1ZkXdlEjOxcYoqoipFMpC4La2PtHD?=
 =?us-ascii?Q?sJ5XLgvdteldf8Qh2Drp0TUoyElZB8yb7mCh6yPeLvPIAqYM3GoDOWE8O5/j?=
 =?us-ascii?Q?Cl5NVf/7hrreBy3BSzPpDCnaBUqYXp+N+FG7ql08/uy5fWxbRsTo5y7Mlzsy?=
 =?us-ascii?Q?P2ZZuJ3LRiMb/2fMl5ggdKuatpDezer+1wgl1UJZP4uoSOILsrVcBAELwLdc?=
 =?us-ascii?Q?VSUPt4LZ1KLk15JINedaHZmfTYeY7Tm0+bHsRW2CxJdHucys69cmY88Q2aKq?=
 =?us-ascii?Q?FEx4ATigULG0RJiHO8Ft0bEkK/qDD1H7YaoINCu8RDsGH0m6JsTm1NZdu22R?=
 =?us-ascii?Q?CX50fD+B493jLslhnoqH6vSBKfkMZHftnUXItfQyhOg+0+fCqheZFDxvAPPw?=
 =?us-ascii?Q?Voiyjt0DEyDMdBKYmqNVCLV9+kz+5/DXiw/W2QnvMd4j0LNFtqFNO7KAh/ut?=
 =?us-ascii?Q?FPIEpWoYabVlgZ0DsucuZM37MR0KpbyKBqRnLmMArhkdItmq98uPc+XGJbi9?=
 =?us-ascii?Q?Ir/72/lIKnRyHjXutnN9O5nYuxj9ECK5VoG/yTqMb968rMyPp+JBBqm0fbkC?=
 =?us-ascii?Q?QbhZIRr/t90hi/L/h3sQYqwsPAUiakpFtV/s3Kt1KHubotJYVhRJ0jmkzD+w?=
 =?us-ascii?Q?sQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 971a91c0-3455-467a-86a4-08da7f7a83c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 11:28:59.9361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AsQVz2knvsTgf4VYRa+WQHdBzvJ+O9ZgvkVB3goYk5VR2nzhTBnf6oxwlUQ680A9rw826AEtAr3qPDbZ8+l0STpPxHeiJpgzYfmTz2t0nSU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5538
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660649343; x=1692185343;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rBnD32jKASi07L82C7sLXHlmEqWiYofyu2vTXWWUbOs=;
 b=MBR4wuPhKLb86PtG5R6g9gH0sZqcyNyU/HG6m6vjTpkXUMARC12xRPVn
 POsbya6MZNprtOo7DKgQdevJjFNmB5sT8tQt9VAvAinu1sysO3s9dfqwT
 GGEjwkjX1lyvQt6QAtV38kZ408EMJHH/C6IZqBsHZEu+3VajTwoxOF8zR
 nclmY9PqJwLFyxpse2tmkNwHw5J/2W9Dxgmc9VhbTgSC4LlQ0V33YTxay
 yYTky18G8z4ntDIA3VcMM79fbnkHGhoNDhmBOk9gZh4QsBkUOhJS6P9lV
 kCKLaU/g8Ti4ibRDAHC4nPKsQIc8e/6/y96IFteie37jbMUiBSx4pyyGO
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MBR4wuPh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix VF not able to send
 tagged traffic with no VLAN filters
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
> Mateusz Palczewski
> Sent: Wednesday, August 3, 2022 10:43 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix VF not able to send tagged
> traffic with no VLAN filters
> 
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> VF was not able to send tagged traffic when it didn't have any VLAN
> interfaces and VLAN anti-spoofing was enabled.
> Fix this by allowing VFs with no VLAN filters to send tagged traffic. After VF
> adds a VLAN interface it will be able to send tagged traffic matching VLAN
> filters only.
> 
> Testing hints:
> 1. Spawn VF
> 2. Send tagged packet from a VF
> 3. The packet should be sent out and not dropped 4. Add a VLAN interface on
> VF 5. Send tagged packet on that VLAN interface 6. Packet should be sent out
> and not dropped 7. Send tagged packet with id different than VLAN interface
> 8. Packet should be dropped
> 
> Fixes: daf4dd16438b ("ice: Refactor spoofcheck configuration functions")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Removed Unnecessary parentheses around 'vsi->type != ICE_VSI_VF'
>      Unfortunetly some lines must be over 80 char to make the code more
> readable
> ---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 11 ++--
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 57 ++++++++++++++++---
>  2 files changed, 57 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 2d6130af1d40..7775aaa8cc43 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -707,13 +707,16 @@ static int ice_cfg_mac_antispoof(struct ice_vsi *vsi,

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
