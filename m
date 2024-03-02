Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9E886EE9F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Mar 2024 05:38:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CC5441FB7;
	Sat,  2 Mar 2024 04:38:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bWNWAJ7pb_kp; Sat,  2 Mar 2024 04:38:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0C6E41FAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709354294;
	bh=Toj/wTFXpOiAwALa7X1k7UeLJPIwz2T4nKGcAjm7V48=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=giK7DYAj8SFpIZAZRkRQr0+/t3VFvb8IQysDNz5XRZDWZ0y8hyTM9KZ4ErQJ42glE
	 36yka+S/ZHNwVN8moxRBnCxZOJuHoTXWcToTkwaGyDuPTCRkRaUIQ0ZbfCWUrcb9aX
	 PCCD6Q2szpIKhoZdrWfBAoO3QtU2D4xB73NbTroXIrEY2yFDcph2fJGOz7jTs5CCsQ
	 DEqvNsPVUxr5G5duR7LkpXMVRgxeNni5gBOjbbrazINNG90SDmpIRDYWP//iCvt3rI
	 pxrtqdVt26G+8DgMQyEt5+eDJXM8sC94U/Oa5Wz9nKk2KT0Wwn01tBc1w3497fh3+Y
	 YQzm1jdaT8Okw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0C6E41FAF;
	Sat,  2 Mar 2024 04:38:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D9A691BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:38:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C757F83C14
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:38:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L0g4dX74n8cw for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Mar 2024 04:38:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ECC4083C12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECC4083C12
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ECC4083C12
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:38:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="26373458"
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; d="scan'208";a="26373458"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 20:38:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; d="scan'208";a="12966231"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 20:38:11 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 20:38:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 20:38:10 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 20:38:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K7hdDsxOsdYYKqILat62nNYPlxif2td6dShATcXpS+EZUOBT4Rv4m+02jWVzlPO/ap4dyx8RIVIdacNR1GmyI3rYKe2pUgvtm3KdkjzyaV3xQu5lUrOYb9DePxMRFufeNtHkjnYZkuvq1UqGIo8GlZ87jcKk3LS8WOq15ym0cWHvAx/fgVU7HoadeIeP+cjRIcY26pR440RAICKZJZ/RY76pb/mcx+Q6Yc8ULYNIT4T/rlAWq0OSKbOjwi9psjRPRj8DoBXXBfHSHA6HkonkWTGIyYlTtgMaIiRT0I29uIKtLUkjEUnmoAaeCQT44w4+hC1re1/jqnO3CYI19STemw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Toj/wTFXpOiAwALa7X1k7UeLJPIwz2T4nKGcAjm7V48=;
 b=HzvvgxgMQRTKXwJk9MdbVk6FvOLgVeFFNc+DKjB434beph43Lf+zSIMnY6faJZ3yMxXqW7yre2TTvb0fNHG8z1oEj1fY0aKY5AepxLpHgQlU3e9zz92SZ0xIc6qQuomiNHaMtJ7+PPtdJPQ6CG1uLNeCZmZdJAQhhIGFpImWoZcqVm+1f3b82NKIKCtj/lfBVc6Lp58QptHpH6Y1s74qI4xTd1e2YzZBTuLlMC3IIo+PuhSOhOAHkH/kCeUpYv0Q7eIRSRaMdNTJDKwH3ZRQbo51QD5e68EiRxWruudk4iscmftyxN2PpRIVEjawzrLhditmpNd+SJLvCmeNt01LXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA3PR11MB7628.namprd11.prod.outlook.com (2603:10b6:806:312::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Sat, 2 Mar
 2024 04:38:07 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636%3]) with mapi id 15.20.7362.017; Sat, 2 Mar 2024
 04:38:07 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Brady, Alan" <alan.brady@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v6 06/11 iwl-next] idpf: add async_handler for MAC filter
 messages
Thread-Index: AQHaZcItIiCF8DgaD0yuaO9mAd7hSbEj6z0Q
Date: Sat, 2 Mar 2024 04:38:07 +0000
Message-ID: <MW4PR11MB5911F01798C7E6A1AA03610CBA5D2@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240222190441.2610930-1-alan.brady@intel.com>
 <20240222190441.2610930-7-alan.brady@intel.com>
In-Reply-To: <20240222190441.2610930-7-alan.brady@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA3PR11MB7628:EE_
x-ms-office365-filtering-correlation-id: be55886b-042b-48b3-ce79-08dc3a728ecb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ucdgek59CCMqvhlD8K4UiYvD/FhbasyiDikT3w8GLf+jl0gL312gei52VzeYMw64XH9/1zZwzK5iOj1/CtGhMXzA9mJj18hjQQ1tTghsbhG/ZoObJ+fcW0pgOdnEaVGclxvHZYD4cphQuLQ5sfjnuSjm/SpGYUgQAkxdbk1UOwGWTFGm5kgwaN61elFKze2Epl1ZYmCW+KIlN3Q0Jo66mqszFBMiW8jj+vqovMwZuL9mFg1VRtq8A9U8cdn73mAfsPrzOuSOhk1ceGRjcIrVD3Nf/jnEEADc//lApKi/meJIDOEMzLr31rXPm8ULchBGDOfOsaybkAp0PQol8KWuADOpSU6CndSkQMWW1zlXgQfdUAEXk4eO/xwSuzTueo1z0IWSPe2su5B03/XzmRHEWn6WIxNCWjIoB3I1y3auiB1jqFXjxv1YhTPaE1VfpXxs3NIXWNoY/+64TiZ5XUizkInsMaSYZ7nguNOQgR0C/R3ITPPp0axfNjKDrUxsLSHUOkmkG1XfD6L6CZUNDs50gMq4ukRepf25sMJzL1y8xT7w+P6p79yrHD/xj3CnAKyllaCV3JD2uVxXuPS0qK/EKFTd3DkiLF6K5WQjjmNXkFS/dfNf+Z8IXQm8Egj1QgTEEqYwVKWlcsTfWLGFEgS0Ked7Q4aFtS1Ft1WpPwvwsyAJ/oIwWWPI2wieut5o0tXNORqK2BIb55af/ReHuWgCtpiS8L7XWImTjp3pz9RwdQo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rRxEH5yA1ojldzw1y09mjOR816a6MqISy1pxRCBmxfr3jZ3AMBhrYCcuvXPO?=
 =?us-ascii?Q?ymRDHo1Bs94J8TrU17+wU3fOMYY2m/cL5XwrlAH2JhSSZjMsow3aJRVeW8Su?=
 =?us-ascii?Q?Uqv8hCg8TxyCNqI/6GkCH9PcjHuMtxtteG/xWW0VyMofmXhE+rcLnLvi27Mp?=
 =?us-ascii?Q?LgNWt8zP6rN5m+Q9ewXg4ss6L4IERNN9G0CSu/QW8kxK6Bwuo+WOZFIZs91l?=
 =?us-ascii?Q?tMHv6V4DgcV7z7B0qoXcO4LBiFZ7PNw5CWEkPyOLqN7mvGKl6i5YzadMpVEh?=
 =?us-ascii?Q?NRaoTAqB5AOZOiO5KIL/e4KVHeDmNBZDrKvqLW4x9QaOUF4cKi5GVOXQezxX?=
 =?us-ascii?Q?hmd6Ipz9DPASlaQOZqbrZYQBj96u0HTIzvn9O+gqgN94Wb5aQCLBlG1ZZbhs?=
 =?us-ascii?Q?9GIou40WPY4BhNQ66Kta5Kzqrnj+cJz9kiirwN9KvcOwdUNg2Jw3i00KZK8S?=
 =?us-ascii?Q?5YQBsbUtM7cxtR3JU9cMVpmDR65wD5EEIWzOko35JlGswdz3rjPi7OaWbjT5?=
 =?us-ascii?Q?OTvgZ7toRPT/ku4bxANHel6Ep74JrhhR05Pxi16TBg7hoNe02nnZtzCSeZHY?=
 =?us-ascii?Q?kDfVDcpaJ703es6C5wWNWWoZKeCIdmNoZvPY91Zmpaj5hx4a3oNnAiId6X4+?=
 =?us-ascii?Q?v7aHpRhJaXLjnZfP5tI7lh0VAploHcrQLm2aa4Fp1zQ/9ArvahgdzkyLWQEH?=
 =?us-ascii?Q?6+9uzn3doskQF8eLK7NK59qxboJJnEa78A0HuSTc8Mibba+cj0TRNRweel7y?=
 =?us-ascii?Q?b/t6cJiqvxXmIzNX0NIwgNfn28GWbFRaT7/WYZ53QtL6m+cfbjpcuNFj+rDs?=
 =?us-ascii?Q?C3nOMsRSUKImFnHgZCyg4/XlSNKMB5lUw+D8VyuDbW0U+86PE7JbnuUMxm45?=
 =?us-ascii?Q?HrwkFlP7vhLRL8tYXSN5bjaRVyIxMFFxd1E1I/NMnPQZkH777VPFp7B8nBhQ?=
 =?us-ascii?Q?FveBTAIoEsWg/cCGdn6R3YFFQPx7T34WfApCvcPPx38gu8Y4yfzqjMfoiNbQ?=
 =?us-ascii?Q?jOHhpm3t8xEtDTotj79RRFVKvilMBi1TbG4P0oAMy8ZdtdPyQ+uI92VQNaQQ?=
 =?us-ascii?Q?LEh6z6BC6Jqrnet0KbhGnw47jGdNeoYBBHpHp771exBP1P95NtJnFH2G4AsU?=
 =?us-ascii?Q?nkGmhUx9hdDXeCZx3E3W2lCB73tZ4aJk0qukpQ3kYFh5GAufS4Tz+a28gaH+?=
 =?us-ascii?Q?bbwYh3ARs3HjPsdA59WzXUFUpMOYqR4vWIT+qTYPIEBS5wqwmfK6WdgDCn7A?=
 =?us-ascii?Q?bUtn7N2ZLZLA1Z2soeio9V70TElIOo/xZZdRfRvmTE5WQM2+4u4cmzIa/3wg?=
 =?us-ascii?Q?V/B3HiXDzhpyQ2fsilfCh7yJwvFvnNmdfQes6PuVH1gH+CNz9F6M+PKV+pEE?=
 =?us-ascii?Q?LQPwW+aSvrrKZ8wmKOYWIgddqPAIt6qwIsKSVreoxhOD1tWgQ+QRfYbbU+LA?=
 =?us-ascii?Q?rstDXaa+SLjKnwGyrKCUIvWbp5vnkonbD5sdit6KIT/xehR0mGLW8hbhebC+?=
 =?us-ascii?Q?L502Dokd8x8rW0M0A/vGpVDE6c09nWUHS7Ut7wwBRhKQhjYhScLaUSLS14JO?=
 =?us-ascii?Q?aEFJkzW7BaxeUFUimXy2AIbvDRc9X9cmVCcl0tw9Q+lqFhp8EpvXQ6L5RAz/?=
 =?us-ascii?Q?og=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be55886b-042b-48b3-ce79-08dc3a728ecb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2024 04:38:07.5978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cu9yRkaz7uLqCE1NRRQiBjVmZQK4GWoW2L8hOMh+pJdb3XKzAb0U4oBW3Gjd9PLZD1rZ8AWbgQsdAjV/euJxlTw3DzNYVe8wGF/7u5So91A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7628
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709354292; x=1740890292;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Gy2f9PHxi/DgNy7UiSB0cb90u/KY4vQ+SPJDRMgKBr8=;
 b=mMPZN/XlJJb9ZIFxq/ooyBJPNWaOcplWHUIVVRpRsxTa3oYAo//8+c9E
 EcbBR2kgTU1nFRcWVeeVV3vHIdjjRG9Z/2Xy1kV6+ttpaJUFl5BtILrID
 jWhVvti4BW3ZhBUA1tf6d3J6TuIpT6ziXTzXu8S6LBHqtZDJn9HkzAqCY
 ahuqfrxxyNHYGXn7z0WMu18Ei5P/OoGJptPWm6uxBtYyf/VRZGlJVLa/R
 XkvNDE0woBbMvNOG3MNsIf+LBDBGMvZ/ezh93ruv5dgcvx0NzcboXfSbT
 u3MgVIiIsExroOk+JdQOfoIWCxgD1viI34Mshw8mu2/+yXGr4O3VAwilj
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mMPZN/Xl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v6 06/11 iwl-next] idpf: add
 async_handler for MAC filter messages
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brady,
 Alan" <alan.brady@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Alan Brady <alan.brady@intel.com>
> Sent: Thursday, February 22, 2024 11:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Brady, Alan <alan.brady@intel.com>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>
> Subject: [PATCH v6 06/11 iwl-next] idpf: add async_handler for MAC filter
> messages
>=20
> There are situations where the driver needs to add a MAC filter but
> we're explicitly not allowed to sleep so we can wait for a virtchnl
> message to complete.
>=20
> This adds an async_handler for asynchronously sent messages for MAC
> filters so that we can better handle if there's an error of some kind.
> If success we don't need to do anything else, but if we failed to
> program the new filter we really should remove it from our list of MAC
> filters. If we don't remove bad filters, what I expect to happen is
> after a reset of some kind we try to program the MAC filter again and it
> fails again. This is clearly wrong and I would expect to be confusing
> for the user.
>=20
> It could also be the failure is for a delete MAC filter message but
> those filters get deleted regardless. Not much we can do about a delete
> failure.
>=20
> Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 0f14860efa28..d1107507a98c 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
