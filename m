Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJ+IK1y0u2k8mgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 09:31:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4872C7E9B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 09:31:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A154C60FC1;
	Thu, 19 Mar 2026 08:31:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tfp3D0Vc2_WH; Thu, 19 Mar 2026 08:31:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7D6F60FB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773909079;
	bh=V/x2ox8UZqVMipUKg539XC2icTmNmPM3zRuEuHh5eek=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d7Iq/UGzG7wRizs/IH+Mq1ph2Ft7BMYHP5EMreJWiFlUz07I6AGfCYJo916B1C/0k
	 zYy/0zzQbNEXpQL2s59EtntPGwPHqm6TLrWBTBcChuFmRrwxl5EasTKNMRBTVn3gfI
	 h31mfjKG8aiXM29j6PSbnRZvaazOZRgFue32XsMiCh2vSzOyo8mU7gEE5C5KyRMVPX
	 nyX+D9Loroc8On6ZMUm5ifULT3RKUhsyoBDgXIiTl95SE2QYWYxSvoGWzooOxViGdJ
	 yG3kdVD3B/KwnFLkBrZPMVCEael+Alpb+VXfJB/TZoAlw5jwJ8b/a1X2DFtQQreuwl
	 a3vW6p6nPdY/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7D6F60FB1;
	Thu, 19 Mar 2026 08:31:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 324F11BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 08:31:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 208FB84023
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 08:31:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ULpSVCjUmDtL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 08:31:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 16B87822C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16B87822C7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16B87822C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 08:31:16 +0000 (UTC)
X-CSE-ConnectionGUID: C/8RqXs5S1ubTqr44Y/5RQ==
X-CSE-MsgGUID: +5ShPp3XTFeyvaZnq7ONxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="74888152"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="74888152"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 01:31:08 -0700
X-CSE-ConnectionGUID: JEGLWNVoTai0AVyzurdXLQ==
X-CSE-MsgGUID: Gkf1JOAPT+mXSBAGah7NgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="220296905"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 01:31:08 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 01:31:07 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 01:31:07 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 01:31:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V4S8C8ObyHLY8AMZRjJvJwiApB7syGTOdvAcmVXtSsp4bvRQfaHFwA8dELB3Rzp0+R9WmP2r/oGn0gZxfIB5mUo0k7t68nzg4D5cH0sb//UGxhn86SARtB2IZYkEQzqkvHTrl7nXsy9+CVo8dyoa7mesWhpyba6bl2/4PQmVUJLejFUNn9l+Dd4pAPpRAiw+ymJNdVjUW9LULMzKYMAtqMmPUVTkh3NeoxGTDruUhl69/ePmEmX8XBWDtZaG1ACRcwFo1V13u5XoLQJhr38JcfqiKjGdsLXqsj6UUa+OWgDQrL44l/tlNFfPDNfOHm4BjhCWcVbRLCWVOeXtkCqhNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V/x2ox8UZqVMipUKg539XC2icTmNmPM3zRuEuHh5eek=;
 b=I7hb9V2obrqZk3L9a5FWuXuQ4N4/vqqJa++y/R0HI23SOYlXwKDII2aN6HWZxcfR/Xv1IG4tNDx7wMI5TbqznfPJm8STtOodWNR8ltti85uKTwajIZC0m1wK9gF2CloSKCloCYbDagg+Tdy7XzqhHHHkcSnUI8IkzFd7h380vpzY0SeuS0lBhHd7xJz734tWZthXXRQ/PEmmBKx5xQaR8Ucotq5SJL0l2FElXIVCcvAILgG/6kRgQpyAjgoEi/4WyrgEKuDD5Osl4usO9jjqRWAth+9uzmIz8g1SbVlelSsaTNd4ebbHyudpE4J2DTcY7WxulF07+tn8Be1qAhKdUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Thu, 19 Mar
 2026 08:31:01 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Thu, 19 Mar 2026
 08:31:00 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Stanislav Fomichev <sdf@fomichev.me>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "michael.chan@broadcom.com"
 <michael.chan@broadcom.com>, "pavan.chebbi@broadcom.com"
 <pavan.chebbi@broadcom.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "saeedm@nvidia.com" <saeedm@nvidia.com>,
 "tariqt@nvidia.com" <tariqt@nvidia.com>, "mbloch@nvidia.com"
 <mbloch@nvidia.com>, "alexanderduyck@fb.com" <alexanderduyck@fb.com>,
 "kernel-team@meta.com" <kernel-team@meta.com>, "johannes@sipsolutions.net"
 <johannes@sipsolutions.net>, "sd@queasysnail.net" <sd@queasysnail.net>,
 "jianbol@nvidia.com" <jianbol@nvidia.com>, "dtatulea@nvidia.com"
 <dtatulea@nvidia.com>, "mohsin.bashr@gmail.com" <mohsin.bashr@gmail.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "willemb@google.com"
 <willemb@google.com>, "skhawaja@google.com" <skhawaja@google.com>,
 "bestswngs@gmail.com" <bestswngs@gmail.com>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>, "linux-wireless@vger.kernel.org"
 <linux-wireless@vger.kernel.org>, "linux-kselftest@vger.kernel.org"
 <linux-kselftest@vger.kernel.org>, "leon@kernel.org" <leon@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 08/13] bnxt: use snapshot
 in bnxt_cfg_rx_mode
Thread-Index: AQHctuhy6Syyj/hw/UaVLArroIy2m7W1hwNw
Date: Thu, 19 Mar 2026 08:31:00 +0000
Message-ID: <IA3PR11MB89866985981DB64EFEBDF0ACE54FA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260318150305.123900-1-sdf@fomichev.me>
 <20260318150305.123900-9-sdf@fomichev.me>
In-Reply-To: <20260318150305.123900-9-sdf@fomichev.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CO1PR11MB4962:EE_
x-ms-office365-filtering-correlation-id: 6a3f9567-1344-4a32-ef89-08de8591da14
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|56012099003|22082099003|18002099003|7053199007|38070700021;
x-microsoft-antispam-message-info: aleoCaY1N49HW39zK1rsNZB+9rihflDsCd+HpvMaZhf7iNz2wx2jmdQqAf8JZqOiC1eh1VciIEfhGbgwM+Q51w7VbKw0f4F8aRaXuc5FxUlirrB3BMpIUuj5XFxdadF/D6peaN2HMLV9/FgNT7m9H6dfa6H077bR+4aUyowK8Se/UjNQyjtwfGEIhNZUp8Jq7wnLi1lt7cDnxYMDCO8YTs8G3wMzS17oQgahAs1QCn9I+qquttRRuuBIblfhmwchNwrz8rrRlwR7+pNwugHIsjM+PcKmsne9wiJeYq2cg7yVOso3XHcqWYDailCM34zQkERUcHQZSW2+K8oyEWsZMmr06qg3lSSIzY1mJHn28Zo8LFldWd0AFFPTrXJMFmob9/RMS9wZAfrNjOYJ9G1n1zAFpBsOfu/MarnBa2UPLwKa36+/AeNJMxCySSoBJ1C7IfNvSbgF4kjdjLpsaAjHYTpvbhm+7NkvFYQXeqGrezQX63KxBjBPZyANIR1B+LYBT6cyZrAPtHW/PXaT+GH9QToJAy7aDUaQYSkOhHnUkuiSOyz9yRc+gUrKiQAYmirhE5/sQtn/DpUU6I7mLDr5fZ3ieqj2PxVQx+1fvYlzUojMr9yK0tDADm+EqiJb1nQL/RT4cXrlEHHtvL7RHDB/b0SdZ51l4BKAR/GhETYv5E913uY0d5GzJf9uIuiQhFzK++NVjeUrqSh+fHGSJg3Yat4OfwYyyoPkQeVa3XYN9iV4vJkCkggD64vrUJLQqNz9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(56012099003)(22082099003)(18002099003)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Gb5nm+NMH7U/uAwU4zLMJ1zmq676NAhxe6lHe/wwKLtQRGg1sP0rdmlZBQHd?=
 =?us-ascii?Q?i1EgiHgnCYij6FEZ3pwmcDMH2vENKglN6qKOadoA42PzcYyaPpztcaCK3b4i?=
 =?us-ascii?Q?0VF+GivWyrT1Ecy8sGA1JprRD63hDEfjQLEsxUV5HQ6RfgS0/9AaKkU+CyRC?=
 =?us-ascii?Q?vOzWBnwbJPDp+tqcBB2vbE6FfT+zMdwFB0+hoz+88HVHyXorAUVvGV0w/YON?=
 =?us-ascii?Q?gWEErAgVl+kMhgCUpMTee+aPLB5SmQ/pNWKq6ctxyk5L/GcV6tf8px9dQe7v?=
 =?us-ascii?Q?YqKDHwC9ZAZpbw0mcRvT+cEn3MWQwkea7Ba3kM2RB9QEbxloRDbfxQ0dsY0L?=
 =?us-ascii?Q?jkY2GhXRlOMLZf/RlAnr62Ry7lLlhHc1vb9NX0mj/xXpa+KME230abqRZ5N+?=
 =?us-ascii?Q?3dutd4FAfAK0zVfwKWktyn3vcFuQPxMLtB+KajIbvShYH+7VsVOKgbNEYXqq?=
 =?us-ascii?Q?+76Xo95esZTdcPxFPrDwFNizIZMfZILOtWXTlHKXScv/c6O1/yivQyEiUcMP?=
 =?us-ascii?Q?BlIhY1Jb95hLwt+OfbCf3bhu8nRp03c66cghveCmzHrzkOKcpBjKCrZBW1Ir?=
 =?us-ascii?Q?mqNOGuFIA5xjrUY30mQXoTTq3C9bLymZptbGuSG51fQoZ0cnjtSaoxsRBe5r?=
 =?us-ascii?Q?5c25MWoMcA8Ft7juglIJPsaxoGIpPXmpb+c2gNCbTh6AlTl8K3dXWBQf3hlh?=
 =?us-ascii?Q?63HTWxMrLaZaFha3VHtZHulQ4YOLbh1eKH2204te7THCq5KanQmDUhNd38Xw?=
 =?us-ascii?Q?A7LhU7QMaacFjuNWuvCoAX4eRQGADaBeBUhlBj1Pcfykm4Dgpz2tA4ckKN5X?=
 =?us-ascii?Q?jsCiwSdcX2Zr4PbFVNgEu9xLum1MHMsdxsDfv045utBOUB/kd0Qqi6Xz556U?=
 =?us-ascii?Q?4izkXTkmiPRxM0GQCRHac/Qi8l8jDFw81gOZZ8cHHc0ixdw5BTwaOhcNnkN8?=
 =?us-ascii?Q?imqFGiANR+EZPAjTXg0Tdmqw0szav5i5HtPBwuPJopuQk+EgC82fnBvfrTgG?=
 =?us-ascii?Q?xHRV+GOO0PQKPWLoS8xq6OQ3FOOmlVDQEui0y+K0da+SvshV0jCRnIKtBFHJ?=
 =?us-ascii?Q?kDrlZEhDWKxmz022Og2JRtLGVveiZuubyUEO5Pg0XNstpbDwbhD8z4EVzZ43?=
 =?us-ascii?Q?QkPCXvladfy+CrV5vkMV77GQZAxiFXsAw5S0ROQulySdubb7jpODGC9mMuN8?=
 =?us-ascii?Q?6py33cvrYaNps0qINuTTkBoIVpfHNOOctpO7sFfvNM1rJYAHzQwSD0RjNM92?=
 =?us-ascii?Q?96u8N8c0ibZKZnL6NUfWteBeQjnUdun4hh/1CakdSYXCK+oTvaww6Eop0b1t?=
 =?us-ascii?Q?mANxl5JtSP0zlW9t6ATkgdypCGKXPeTT+2YxXew7CRAdO0eWM6/k6zd/Q1Ao?=
 =?us-ascii?Q?kjMtnLyZpyYQOqCeqD2nXyXw48cg8XBlHgNRbpqQcxWHY56xCKxLdbHRh9Op?=
 =?us-ascii?Q?pNxWVT/eVLA02hhFhn7Ij2CXueN85GEnGcM2L8nxbzSTGy+CEF2Sw2CqNpc1?=
 =?us-ascii?Q?8ljNyhdu7LzxXWGja6w3B8HpuKM1tzUPs8wSK+xqiIder1ckawo6U50qgWAd?=
 =?us-ascii?Q?bo4Z2wLvnhWIggkHQ/Kro1D9DEo41TAeqMGvpOo8Vinthp/yejjtjqlpjCc6?=
 =?us-ascii?Q?iQZw4LRECNfZzsPkZunFsweAARh9H3ERQ/BoJ6qVXt/OOFc41SDWw0ktH09z?=
 =?us-ascii?Q?o6REGrVqllH3w57l2/1GHWJM6m3MatSJMgkcMAzH/O2alFOt6nzZD+mUnIh6?=
 =?us-ascii?Q?3Xk1wccbvwB9tppid/DzvZ9D08bKLAQ=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KUUAYG+vXqwnRX1F6FOYEaN++zI4dCAJDUPJYT/yruA60Ow0L63UfS8FZUmZBPQvAMQob60/289GaH07V7OILPUcuhUXzjUl5jdOjELAeRpUlJPfiXODbasaanDMLDCW9lw8z9n/hQo05zfzf5Qiv5R+om+zD+AQ07YophkVKN7vZrSB/mDV5t6WFUCehe397/+W1MLO/FvlGzn5pb1ndp7BB3z+Sz0XDPq4LfkEItIp5V14TJzZjUBrpzy9LrXUJ5WFU7OXNkgGOppSglxhDKfkfRdEdWXMQVJ8DYagdm0+Wj47zezNdQs9sDeR+qHayMpaJ9Y+2mhRTh7yzSN3gg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a3f9567-1344-4a32-ef89-08de8591da14
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2026 08:31:00.8460 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MjIGcCH1js2UeSICevENROSwqbqim7fZyMvtpBJiyN+XaxuPjrBLIDIjgOi/7h/arem5PXCXrsGWNFT4TzCmyeA4M49B6bOomy+4DsejYCQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4962
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773909077; x=1805445077;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RLGGIpg0ze6flIFGWmAnfBeoqN5AgaqKB43T7l9qpMQ=;
 b=SaGIUrs0ggYknDb1sMp/3EE38xgGJrHajZQYj5MLLdikaNYvaa8PXET5
 cRGGMJpdHQTZsn+VTuCV1xiAc/fD3QKmXjZX86Yk9IZGuJVCGp0AQ9aEN
 Q2cXpGLcxBzfnl2sJihbqVhp+gMqINVPtot9Im9NISVHuKd4adjHclRQW
 nDuPC9xXVyJztjlUlDjHyxpZG1xAthxiiy0xDfoTOCGCWu1XXq1eWk1FL
 aobrYKsHGBc5qyucY3hqeDvmo8TSFlkhFrlaotKgOLe79kCk2xpB68eq2
 UHn2YFh8T29JkmlXB3Ey29aZVFtcH4HntQyNZlvIQBGnBcUcHGXSm/4F4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SaGIUrs0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 08/13] bnxt: use snapshot
 in bnxt_cfg_rx_mode
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	FORGED_RECIPIENTS(0.00)[m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,vger.kernel.org,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 6E4872C7E9B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Stanislav Fomichev
> Sent: Wednesday, March 18, 2026 4:03 PM
> To: netdev@vger.kernel.org
> Cc: davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; horms@kernel.org; corbet@lwn.net;
> skhan@linuxfoundation.org; andrew+netdev@lunn.ch;
> michael.chan@broadcom.com; pavan.chebbi@broadcom.com; Nguyen, Anthony
> L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; saeedm@nvidia.com; tariqt@nvidia.com;
> mbloch@nvidia.com; alexanderduyck@fb.com; kernel-team@meta.com;
> johannes@sipsolutions.net; sd@queasysnail.net; jianbol@nvidia.com;
> dtatulea@nvidia.com; sdf@fomichev.me; mohsin.bashr@gmail.com; Keller,
> Jacob E <jacob.e.keller@intel.com>; willemb@google.com;
> skhawaja@google.com; bestswngs@gmail.com; linux-doc@vger.kernel.org;
> linux-kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> rdma@vger.kernel.org; linux-wireless@vger.kernel.org; linux-
> kselftest@vger.kernel.org; leon@kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next v2 08/13] bnxt: use
> snapshot in bnxt_cfg_rx_mode
>=20
> With the introduction of ndo_set_rx_mode_async (as discussed in [0])
> we can call bnxt_cfg_rx_mode directly. Convert bnxt_cfg_rx_mode to use
> uc/mc snapshots and move its call in bnxt_sp_task to the section that
> resets BNXT_STATE_IN_SP_TASK. Switch to direct call in
> bnxt_set_rx_mode.
>=20
> 0:
> https://lore.kernel.org/netdev/CACKFLi=3D5vj8hPqEUKDd8RTw3au5G+zRgQEqjF+
> 6NZnyoNm90KA@mail.gmail.com/
>=20
> Cc: Michael Chan <michael.chan@broadcom.com>
> Cc: Pavan Chebbi <pavan.chebbi@broadcom.com>
> Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
> ---
>  drivers/net/ethernet/broadcom/bnxt/bnxt.c | 24 ++++++++++++++--------
> -
>  1 file changed, 15 insertions(+), 9 deletions(-)

...

> -static int bnxt_cfg_rx_mode(struct bnxt *bp)
> +static int bnxt_cfg_rx_mode(struct bnxt *bp, struct
> netdev_hw_addr_list *uc,
> +			    struct netdev_hw_addr_list *mc)
>  {
>  	struct net_device *dev =3D bp->dev;
>  	struct bnxt_vnic_info *vnic =3D &bp-
> >vnic_info[BNXT_VNIC_DEFAULT];
> @@ -13623,7 +13625,7 @@ static int bnxt_cfg_rx_mode(struct bnxt *bp)
>  	bool uc_update;
>=20
>  	netif_addr_lock_bh(dev);
> -	uc_update =3D bnxt_uc_list_updated(bp, &dev->uc);
> +	uc_update =3D bnxt_uc_list_updated(bp, uc);
>  	netif_addr_unlock_bh(dev);
>=20
>  	if (!uc_update)
> @@ -13642,7 +13644,7 @@ static int bnxt_cfg_rx_mode(struct bnxt *bp)
>  	if (netdev_uc_count(dev) > (BNXT_MAX_UC_ADDRS - 1)) {
>  		vnic->rx_mask |=3D
> CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS;
This limit check uses the live device list, dev->uc.
In the new async model, the live list can differ from the snapshot.

>  	} else {
> -		netdev_for_each_uc_addr(ha, dev) {
> +		netdev_hw_addr_list_for_each(ha, uc) {
This loop iterates the snapshot list, uc. */
So, the guard above and the loop below are checking different data.

>  			memcpy(vnic->uc_list + off, ha->addr, ETH_ALEN);
>  			off +=3D ETH_ALEN;
>  			vnic->uc_filter_count++;
> @@ -14600,6 +14602,7 @@ static void bnxt_ulp_restart(struct bnxt *bp)
> static void bnxt_sp_task(struct work_struct *work)  {
>  	struct bnxt *bp =3D container_of(work, struct bnxt, sp_task);
> +	struct net_device *dev =3D bp->dev;
>=20
>  	set_bit(BNXT_STATE_IN_SP_TASK, &bp->state);
>  	smp_mb__after_atomic();
> @@ -14613,9 +14616,6 @@ static void bnxt_sp_task(struct work_struct
> *work)
>  		bnxt_reenable_sriov(bp);
>  	}

...

> 2.53.0

