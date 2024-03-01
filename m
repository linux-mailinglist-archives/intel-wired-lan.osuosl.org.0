Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D28B086E43F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 16:25:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81D0E60892;
	Fri,  1 Mar 2024 15:25:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NPKqD4SkvNqu; Fri,  1 Mar 2024 15:25:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF42760898
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709306707;
	bh=9KQ+E/WJ4BR/GvkhM7EsiKghvhmvpz+vZDyUbz4qcwM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rkTSEF04m8gH2ehR3UI07lAHtSEkmrJOZjGkZnm/p0t6Tq4GbwYuGsUZViMHXJQXM
	 6M8jpFyoFohIfu7x6u13NSO6QwIYHyIakG+cS37I5/SEPWyM3BhYhZPIDo3dsRc0F6
	 KyMtKVnCiPCqPcu5rru+aDf111J6EdzSWnPu7Pwn1obSRCbjads/+AraPIRoQsYbxn
	 hMLvgWetOHimBSDD43bjsVo/YJ6V26+5ceeBOAfuiITfhe6ti1wyciDcPLFFHMVduk
	 yv5FZWJm7UGVyo1sX7l3LsIFfqOUMzrDgKCSlTxqSxS7EEQ0e30xUMRpXkUU3ScLmh
	 9oxeUoEcUj6Ig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF42760898;
	Fri,  1 Mar 2024 15:25:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5E571BF326
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:25:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A1787404EE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:25:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E53P4kFW-bai for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 15:25:03 +0000 (UTC)
X-Greylist: delayed 340 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 01 Mar 2024 15:25:03 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 36B2340119
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36B2340119
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 36B2340119
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:25:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="3699161"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="3699161"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 07:21:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="8364909"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 07:21:58 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 07:21:57 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 07:21:56 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 07:21:56 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 07:21:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ARsc/uk7EPtn05TjsKlQ/uU5Nu2ucbCinQd69QCknoKle58NNy5c+TnxFzDW1MOCnP57WBFg0DfVPMGA820WcZ306c2i554x3tUQzgmt0to59ro+/ncZGsWous/Bg2VRtKxs6FlHyT8bY4jMLlUHJLWTy0+yfBAe7npVTuEiUrHQZVLLR0reZFODSq9wSbhxzWij8s3gCwGwsA2mKRBmyH6d6VWxp/g87gZd+csSBdrHUqfN1KNEo1YH8k+BvP62j6zgvQ5MTTh0p8vg9bZ8n2Dbe2f4dV4p1vYoeC7w2F5YvJmq5uo3sX8r0/sXTZ+Zle9GWxdonfao1ae1yDSe7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9KQ+E/WJ4BR/GvkhM7EsiKghvhmvpz+vZDyUbz4qcwM=;
 b=Z5MywfNvvbiYAcYY9JzZCNBo7MKiu7nLS2pA+EeI6s4/c3MHWNYl5DbGXohN4c/3q0eHYysm0PtV50WiRG9OAyMfWqf/8TKJNmDPKeehwfI3beA/SCW1jjFaCpU4vs4nnZ2UAqiHMNcwn8rSlNS/68XbittagcX+Cx4/o8qUwGwF20P6Q/A/IDlCdz66Y5lFZsB0wLfaW5JPRXRtrt1nx/JONYo5OR+UOzH7X8s0wyX4c4sMjllS0F4AEqb8tDOt5W848EEbL5IVOWB1fe0VQS/3ZRhY+kDahv5UNHNQlA0/RDuugx0lBDP2EfWQtFCo7Yq2ml8e/nS/FotX6tffYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA1PR11MB7697.namprd11.prod.outlook.com (2603:10b6:806:33a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.18; Fri, 1 Mar
 2024 15:21:55 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08%7]) with mapi id 15.20.7362.010; Fri, 1 Mar 2024
 15:21:55 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: remove
 vf->lan_vsi_num field
Thread-Index: AQHaYSSIkJQVQ505sUmKI50dsVaVALEjFfjw
Date: Fri, 1 Mar 2024 15:21:54 +0000
Message-ID: <SJ0PR11MB5865E81969EC58C143EBDB388F5E2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240216220638.2558451-1-jacob.e.keller@intel.com>
 <20240216220638.2558451-5-jacob.e.keller@intel.com>
In-Reply-To: <20240216220638.2558451-5-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA1PR11MB7697:EE_
x-ms-office365-filtering-correlation-id: 6d5c96a6-8354-479e-8df9-08dc3a03541e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mh9HBY0YpNAag1Dz5UzRHHmjkizEyqzmO5hH9Gd0VTilFcHvKRoXoGX7rwxTKfNLuZZR/MKCgi9xNlpEL8cgNw9SMJqunDNXgs+cWLoQzDds6/KDgeeAZJ+0SirbO3vtwPusuC5EeFf0ZGixTHoNuBmcaSUZGOh0UcADIfikxMHA3I5TLveTU6KD2CZm/vxTgDNNOeUOP7sZB/n2B3d04A3eeehQ2DJEoTvU7FakWmWwONXXJxRnMOeVZHWh3HyobCsFmEt7CELQtEDECYIAcajd4uxUTKbPCGbcVvYs8nw/AYD05qaXJapBuJ7sNvLl/BW2q7xcpCCS+4+j5uGFjXtPjXxc0PbcUs3KhKFM9Apij/9nE8Ixg0iiiZYyXwn8L5s3OBKzfe8zuN1LM9I6Tui4cWGOjzXFQ+JLWlfYruz8XOGpUvbpwzVJlPiRzBZdVPYlukzZnDF/0xo9DQV1sDNIj98l4OP1112wLN84/MidoGhk5huEcuNBb1UyYNKdTb4MYBoxpWxhviP+9vkWI5XIJOxUoDzf3gWrwAZ6F1BIK9pV8iFHUT26J7bCbk1NQiMql5hEbN3SyEZjFARY7nSsR5T/0tKZLRmwJlZ5Vj6hl/WsLUeHpDqQKir5FNds+jEIGkcbzknU+nPi6CNtKKg3sVmnS4b55xVjHFTpTDDuIeTQPNYddhB0CF4l7fwzFi5d8KdRiISUJk+lQvzQaQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bt9OKtUN4bZRMwLr2A9E0lsT2zsSyKflYa2ABYi3qznpfuhIAuO3BOWlARFu?=
 =?us-ascii?Q?EJq6dbGIeNMVcEa/YmHtafYmNx88PRK7d3NCfxgE4hgUewfnm8qDYKGl/bNG?=
 =?us-ascii?Q?P3Izs8TssBVflFtW0HX/AxN2Q2smxltnGsldhTZmbv8+kN9RnL7VMEjRfbR3?=
 =?us-ascii?Q?dDPMHFIPr4PYKvnt8r85RFMvq7TDBsBbuc81Yq7eHd1fs5Nxk2NEHlw12pWo?=
 =?us-ascii?Q?Cd0qmQtY+xgKWsNYftjDekLIa4gc3GoTrhpLmMorSO22zRGrLfc7k5P6paJT?=
 =?us-ascii?Q?kMLGCQk3a3O7ZG8GCQum8tAgQqHs1xeyt3MBdslnlFC3NJM9g+FgPSBUrJ+1?=
 =?us-ascii?Q?Xvq6HXHnmtgHnyoEarIfUIlnOdQLjIU/t5TVBSR6vXNpRHMzVtM0WnmuaTgp?=
 =?us-ascii?Q?ynRNjjDJBIZKk3OXFbcEJyiCE7SLlDLpM7FTjVHNdS15MsgauuGRVza0hFk/?=
 =?us-ascii?Q?J/rZR6o9feS6eXpAWnHvf8f+aOiPVi0VZANUav1x2CCHTftBpaMk7KhSwD8i?=
 =?us-ascii?Q?ITNdkHyyyTL8wd4h3pTAPm+/epQenQTavZL/kVD/iYuNQNH5/3n2VAsDuvnA?=
 =?us-ascii?Q?kgxXxb78AJ4NcLXz7vWhKBHUm8SNTFskYkMI7lt+wkYUmco3rB4P3WZNaeh8?=
 =?us-ascii?Q?RU0YLt6rqgiUN/ilfQgkqVSJnPidkV5FNd+8X3qb2aC6x7ySeV3yoP4Jt99R?=
 =?us-ascii?Q?Avw5CAP30yh/w1Ydo7EkPnUFgmOnpjgsx10kBG2dunR1gp1VZ02a5Y1ZLvfA?=
 =?us-ascii?Q?PwPRQgc0t4eT7JctOF0XeSjV2+8MS0KHyBwwnzI+Nz74dYgRomsZdcKzAAj8?=
 =?us-ascii?Q?1nHmskyRW/cahUVH6qVXGENz/L2E0elCMlDXXtG3AdSiLapb0k4V2YeXBJt/?=
 =?us-ascii?Q?8V261Z1Wa/j1eotG3DI0Syy6UD7lEB1Do/ghbegMGDpsOkgEilBaiyyQ4trO?=
 =?us-ascii?Q?LrfQTkcH9d5YH+KqbzbxjRO1UA/K7N0TFYKaHrnah7zsaDRYiBfX5J/h2pO7?=
 =?us-ascii?Q?qzcRBib6UengLmm8qyG9/PNT4bBBzclEyIQW0gCJ+Ln6f2TYC7J8q/QQCDyV?=
 =?us-ascii?Q?K+4UihRpHQfp6z621+Z63vWbOumPDESqej0HmuQxwmKJtlGfjLJEAm2hDhBf?=
 =?us-ascii?Q?+aT2mUaQkRs0ljxkNIWbwTdz3d8EVpA17dV0G2MXBoHrpSvv4vBF5RwFe+su?=
 =?us-ascii?Q?iip/lgzp1lm7dSAQhkH+x41oTZ+thDbvPoFyZSsfIytWsa+aH9bRhGWwp92T?=
 =?us-ascii?Q?thgJtxTP2xVudan2H9pp1Sw/saDcUYCk7RhGr7nByOtgYv3TlPaxY1x5UTDE?=
 =?us-ascii?Q?ah8d5AtVl2t9BP39H+rMO/gdt+c6fwmMoOGjspWQspp7XMn3S83NXhahj2jM?=
 =?us-ascii?Q?Odtpbl9tEPcz9PZig0T7IxbRlit4fI1l8FngyRbsGKVv4Knu6Kr6V/7BS2sn?=
 =?us-ascii?Q?d0SLKBay/O5PQZ9nuMKXTbNq5mHMMrO20ZZmfGMqVVIRwFU/cZwJZojnhpw0?=
 =?us-ascii?Q?l037UnOnURg9jWfsbo0sR8Vl0s2XH9D28IdAu82JSo5Gvl1IbcMu2+aPaMTw?=
 =?us-ascii?Q?UeBaKnVh++4jToYOKH9IHqiVmrDrolLAMn1AusnO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d5c96a6-8354-479e-8df9-08dc3a03541e
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2024 15:21:54.9818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ai01fNEUAqYV/DqXgKhLcmPehTwpnZ9JKgUhae6S1qYwl38LXoVHC7VHbmqX+WVoQ2JwxIH84/SETGi4ybZYXQHNcOUyo2Qqb4nBQy3ujb0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709306703; x=1740842703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SsKroRcxOqqW8FTwllp47T1fQ3P5ja2YoyBoN2nD5rg=;
 b=QAe+dZ5BMeLhFakGzC+M8xX42yLBgjF9f+is/a1ReBsRJwc73x+/Hb//
 Bmrc4fiQtgAPQj5fDh/AJmjTcxM/73x2mVWIa9QgJ/0PkYIx6pxqmvOBr
 NosXRs+EApbFdrgsbzwFm0Zf3eGKEPfiY3Sg/WmBOmsWFfRxnj+Mno3gO
 ZrAyo/6DzBki4B/ovIsWKBae8JTx1SdPE4ExH1iAHs1JjMsF5m22jguiH
 wU8Ng6kpPazgzwZJvSZ+NmRS3QaZjwPsoY4RC68E0Eyg+AjVh6QetkdMN
 z3d581xEQu9AsCit0yy7mdERD6aEaHBU0sX5blKs++oNkV+O9rSEEk3vr
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QAe+dZ5B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: remove
 vf->lan_vsi_num field
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, February 16, 2024 11:07 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN
> <intel-wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: remove vf->lan_vsi_n=
um
> field
>=20
> The lan_vsi_num field of the VF structure is no longer used for any purpo=
se.
> Remove it.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c  |  1 -
> drivers/net/ethernet/intel/ice/ice_vf_lib.c | 10 +---------
> drivers/net/ethernet/intel/ice/ice_vf_lib.h |  5 -----
>  3 files changed, 1 insertion(+), 15 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 706b5ee8ec89..2485abd95672 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -238,7 +238,6 @@ static struct ice_vsi *ice_vf_vsi_setup(struct ice_vf
> *vf)
>  	}
>=20
>  	vf->lan_vsi_idx =3D vsi->idx;
> -	vf->lan_vsi_num =3D vsi->vsi_num;
>=20
>  	return vsi;
>  }
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 2ffdae9a82df..21d26e19338a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -280,12 +280,6 @@ int ice_vf_reconfig_vsi(struct ice_vf *vf)

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



