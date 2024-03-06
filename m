Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0556874141
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 21:16:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F5F9418DC;
	Wed,  6 Mar 2024 20:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iiTCQnHXsR1W; Wed,  6 Mar 2024 20:16:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF1C14191A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709756169;
	bh=mcBOtESiNgX/IRJmtffAMPzGsZ7EtJmJ0XGsbLaUABk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b0Xum4PAQQqqTIU4IIlJvcSmrUQ/8ShOTJ4kJSs3Y1zBDbD6f3qeUpQHUtf1YR3s2
	 /pKvBjtNBQgOIacPvrKtmhJVztrQ2c0vmqDBV1BZB9vRmgC+DUJ04v9eC4fOHiSHa6
	 L2e5B8vDwNwvsBPMWXbsKjjgAF+TA9IEnnmWXGiBXXkk5aSt7RnnUAHvPsUWRmj12q
	 LCpbuEwfvKqjDiVlP+apfssQpcl7bdF2EgCOHs3b//x8IxB/MwU3TtNo4nIJhaF8tV
	 2PpHg4KGbEbuQPWPeyC5URtQ7a3/sY6d/AAzKcbHz9i6cJgUFPIbkgUUFdCfKZ97qV
	 Ozl89Dm8Pkwow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF1C14191A;
	Wed,  6 Mar 2024 20:16:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 995301BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 20:16:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 843734184E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 20:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OnX3lCu0LWIv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 20:16:04 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 06 Mar 2024 20:16:03 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BBC6F41812
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBC6F41812
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BBC6F41812
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 20:16:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="4251228"
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; 
   d="scan'208";a="4251228"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 12:08:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; d="scan'208";a="14562334"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 12:08:54 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 12:08:53 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 12:08:53 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 12:08:53 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 12:08:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XjRiwgregAYEBNpiPWQYWmj3+t1maKmENUrUCNZLR0U9q5sk4eZVIKSSPYgHSE5C6WyBQBtDAMqDZJ56DY/Y5dICRaxsJcpdxuLPyVWlNYC/fw+gdzZbbUZHkgdQEVqNVBhbgS7vPtk7emM2Iz7ZsGnefKWBPBtp2yZDid1lz19rRRBMbE/HE1uOsQTw524VPHjvl4ZufGMDRmebZ3lyzLErXi2BJeI+FerzBtlmShBEbZj4aEV6JCqw+NAWGcJnjn7dBv/LaM8bnJEMoXk75HKw/Q1rYduw85R3u9aycmoYJCd9NS209QCMC15ISwU9GopVYHTSnlZAfL4T1XSElg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mcBOtESiNgX/IRJmtffAMPzGsZ7EtJmJ0XGsbLaUABk=;
 b=atmdvemNrTFSVdjM52EIdzGtA4BdQ7D0S0j31uSrQJChrmZaXJqtqFBWytRxDF0b7i8HD99Sz7q/zz7CAlA5QToobxQAjOiExTTMHbKVGZ7flkMzTaXURez/FadX2HasNkmMiJJbcoq//NGwd3MqRLp0+68BMbe81NxxGoQuMw0Qp0q7d2wSIGJjF2VwJvrj4l+KZ/6cb3uCyu23XQ+oyZ7xlHHigCzexITbjPDcZwPUIeThTi9tlvGxK8yi3T+OwJw9rxNicicj4/DGY+MgBj+ap11wGEusJWhadEWkhsGjqi0sYzrJx9wbvlm2q+flI4HLh7wk6ZYYqrkb3C8aEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by DM4PR11MB6192.namprd11.prod.outlook.com (2603:10b6:8:a9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Wed, 6 Mar
 2024 20:08:48 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::d1de:9402:9852:4ae5]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::d1de:9402:9852:4ae5%5]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 20:08:48 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix memory corruption
 bug with suspend and rebuild
Thread-Index: AQHab1FXRdONUwy/l06IzS8WQH1HD7ErJFoAgAABEaA=
Date: Wed, 6 Mar 2024 20:08:48 +0000
Message-ID: <SJ0PR11MB5866FAB43E70D894B827DC36E5212@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240305230204.448724-1-jesse.brandeburg@intel.com>
 <20240306200428.GG281974@kernel.org>
In-Reply-To: <20240306200428.GG281974@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|DM4PR11MB6192:EE_
x-ms-office365-filtering-correlation-id: 536fbc05-2c4a-45ac-b8b9-08dc3e193c43
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S+NT7qTQXaN4jjCgRFueaxeKSIY3L1QsM4v1y2HVDG5UqBMQ9U8k9NPZbn57aAYdulR+AOlW75HhUEb09K7Znnjk0UdyohcXdA+b8oAtqCYGoevjMqgT9R7VzaFLS0Rq7bZ0C+hCTfmG0l6RoTMGVKNVeW2nF+qglcAIgkRMiTp4l5Y16Ixn/+klLuZD+rRK38S4c8ePXH9w88sqPNaMDd9GUijcZxljs9KVE97K6EEpREJ+1hcLln5A/ZDz5b8hIEoWlsvobIlvhZi9ZA06h2u7suh1KNXgkKdbNO+rSE3N1M+/fuCCUGBLUGvZHBwcWd8AGivCw9ijcMDSx0F2uXnymd1cWoQgB4/GfXv3+cjXFeloJo4O0fN8Crjz0auQS+nEG51NM8qyokdb3IEPH/PjYHXNOybCkKjhjttwxQlL1zaKAcHoEaHnTquArzS/d00PZRLh6GcWYmMVbdH0yKy2/T9LlfD4ucJjs4flP/HmYHonZLs49FTdsnXKPbcHUvDnK1Q6goORi5tAIFAgFInY5Q8UFA6QetLRgAzCurTwTGTq9bUMLY1TGRKnRzCiYnir+EQc8SmD65d4kXxRkIaU5yxZN/VeAo/221hrPZEISgHWDxkmkgDTxunPEpaPEU1B0WnMCYMzV/MS4qzeLiC8JFjiwc9h2dgE4RR0/EMUFHBLAB+zfn1cJuTbHl24B1j+yPwPUnASnPd4OWzykTikn1qVV4iQIFCvAjNlJ7o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OQ9pIEekocNacaIfbVXGAEx8bU8VNmvENgsR2BwOCc5odiNkJoxfmokVuR54?=
 =?us-ascii?Q?/VX1EUqa7GXGyLyLat6bo/mKmNxBesjpGKWK2OJuzc3TN5bd/QEk7Hwqa8HS?=
 =?us-ascii?Q?TAyRA0gba8RCnp4zW1Nhl3EOQEAmD1dIiyGaExX6wt3jntH3C5qr5x7Cw4x8?=
 =?us-ascii?Q?yxpumFd5M+D1rhEqDFil3nIM4izZ05BNrRFtJKu3s0N7iKKGKHZWNnVpiLDE?=
 =?us-ascii?Q?YXS3qP1Vg2/bhOTRP8a/wSYnEhVcp8topEaM+4kI6T75HGofrdwg+I5Mecx7?=
 =?us-ascii?Q?cSS7DjTYn9nsBW9rgjGuSKWeemJb3xCZ2PckD5rcUrWYrcNseszacoF4MUGJ?=
 =?us-ascii?Q?7U8zsUrc9aRaHgzulp/BCK85y59y/q/A0xK9XA9sRkpxAD+uR72mjuKvixSP?=
 =?us-ascii?Q?ym2ESN9IBeFXepshx1WokPFr9soy02BwzXuiH7hWdWk7FEuKwNvPAbSN898v?=
 =?us-ascii?Q?/5E4k4IF0bCSnIcPVyH8Wu9ntjsFmtxNRBHU9eJFq3EzFR622Z00fE6Tft7i?=
 =?us-ascii?Q?3aS2a5FAVs4w21BTMCkitNGFxc0PyNG1Qjj37GqSYi1ov0Kh3lcMdHa+Y95Y?=
 =?us-ascii?Q?9krCTaLllEmkby8gcQjd6EtlemrYbDe75oHu7F773U8H596tLwThvDd+1HGt?=
 =?us-ascii?Q?P7tk4neT5U5rKdFuDEvXIFjW/FXjn+IjYcuSWQ8s+sroQstzV5i2gm+Lif69?=
 =?us-ascii?Q?/7UH23CR5izUnGnjCK72JCaGWWCeI0MnHxsG19j8ztrjIy2ZYh/piiEKqjtg?=
 =?us-ascii?Q?XPo7nOwI2wZP5b9Wwe6l9WGFIaE/7a+FAsTYffKR7OxaTecUr2wS1qX1sL8F?=
 =?us-ascii?Q?UyGbu+ixBovYbF2gxBkE+dotcj5GJh0S5F0f13VxC02U/K0vdq08eCSnTU0L?=
 =?us-ascii?Q?5FtaXfxBXyMl1uNNWYr11LCrd8sLLvrsU9rE7AeTK3Co8vwFxwYHKY3oMsSD?=
 =?us-ascii?Q?uS9y031R9BG9M6r7t2nxKg+sQ8oM4AumLFrGYUIn9u9CVOexGVmFRnz3Lqei?=
 =?us-ascii?Q?hEl4yVuL2sU2k3kZg6UkNZ0dYXr62S15LXZQ+b7N55R8DUAHM1bgE5uiDOfU?=
 =?us-ascii?Q?9KIza2nbt43cqpVPeQ++YVBN4c6K8QiL60WFEXYJLtxprDZpCAY5QH9ip0i/?=
 =?us-ascii?Q?ErISfDYleozQQhdCfFR3FSHhHVzsLMCPy0+nhbX1p/slNlNnNQ0TP9T77ouY?=
 =?us-ascii?Q?ud+8bYOTRAnilE8nYdKl3YVMFvpJ4tn8oRmyPsvlXA2DqGmPY03VNSl8Ig13?=
 =?us-ascii?Q?3vJrthhUjH9EpUQuCvGRSXu6FuEJYQIM/PlXYBnnbvdRykkGrp6DnCMpC7Y6?=
 =?us-ascii?Q?CIrZ55ASLpQ0232zLjA73ty71GbN0yY2IB83RtFkohMfOOHhv5GVpa70QIbo?=
 =?us-ascii?Q?gP3EHnRc6y5QqxLI8wmAvvXriOEMCyebaqimEh8uU2eNiiyiOilnV56byc7K?=
 =?us-ascii?Q?Smjb0kGb4R+s7/UMcYnsCDfgq4RWC8I94tWMJWkD0mIKHd/Hmu9Qv2bL4opx?=
 =?us-ascii?Q?XL6FPuZMyQHfJ8xmRxwfI8CvaQlqj53eWtCmYrnT3zAWoHzpdhrIhIvxQd52?=
 =?us-ascii?Q?fv+BQea/INLObu4AjUyGrMInNijjDm0JH7I23X267j/Y7TPo7RlNRjBbKKtf?=
 =?us-ascii?Q?RA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 536fbc05-2c4a-45ac-b8b9-08dc3e193c43
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2024 20:08:48.5725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JyEc6vFqhRIn/4xHCuRHQYiK36BpacNXlHFemqMVt4YRaLePyGcLFXQH0Pw2lC5Kd77+24QT4lchY0EAJ9Mjoiq4G0bXtzRCsuTLh+PZ/mQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6192
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709756165; x=1741292165;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=08hg0eHinySqJmjsqdZFzAumMY4FBy1NPc3+OGrs/8w=;
 b=ULr5GvoaNFi7GksVmN3P+uLEYsBVpLM+tfR5XndKwqm0qAGFVL0f2wGU
 bjpvQb+b7Ej+/wubOlAAHxwLRqtf0+i5/Qd7cJ/kHeV4qHn/2iDVloExe
 8RyYfnTUdPOTqyA1w2rpD4cSCVhu98aAAS0dGhSNDp2+sLJivUIe3KgtE
 rDy6y6jNI43q0doBGNbT/QdKSYzrEzcg9Jk3dGWL9xdRo92Nbofkqnfo5
 EXxsvFemwjz25bpi3k+WvXLeZ+0/Ml9+w5l70PUuGpUdc+GqLT7kHN8jE
 NDqli+zWsv2VFT9d+TgASFzJkd7Nl99KwIWbJyA0T952yXffwsrDNZPsl
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ULr5Gvoa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix memory corruption
 bug with suspend and rebuild
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, Paolo
 Abeni <pabeni@redhat.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>, "Elliott, Rob" <elliott@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> Behalf Of Simon Horman
> Sent: Wednesday, March 6, 2024 9:04 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Cc: pmenzel@molgen.mpg.de; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; netdev@vger.kernel.org;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Eric Dumazet
> <edumazet@google.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Jakub Kicinski <kuba@kernel.org>;
> intel-wired-lan@lists.osuosl.org; Paolo Abeni <pabeni@redhat.com>;
> David S. Miller <davem@davemloft.net>; Elliott, Rob
> <elliott@hpe.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix memory
> corruption bug with suspend and rebuild
>=20
> On Tue, Mar 05, 2024 at 03:02:03PM -0800, Jesse Brandeburg wrote:
> > The ice driver would previously panic after suspend. This is
> caused
> > from the driver *only* calling the ice_vsi_free_q_vectors()
> function
> > by itself, when it is suspending. Since commit b3e7b3a6ee92
> ("ice:
> > prevent NULL pointer deref during reload") the driver has zeroed
> out
> > num_q_vectors, and only restored it in ice_vsi_cfg_def().
> >
> > This further causes the ice_rebuild() function to allocate a zero
> > length buffer, after which num_q_vectors is updated, and then the
> new
> > value of num_q_vectors is used to index into the zero length
> buffer,
> > which corrupts memory.
> >
> > The fix entails making sure all the code referencing
> num_q_vectors
> > only does so after it has been reset via ice_vsi_cfg_def().
> >
> > I didn't perform a full bisect, but I was able to test against
> 6.1.77
> > kernel and that ice driver works fine for suspend/resume with no
> > panic, so sometime since then, this problem was introduced.
> >
> > Also clean up an un-needed init of a local variable in the
> function
> > being modified.
> >
> > PANIC from 6.8.0-rc1:
> >
> > [1026674.915596] PM: suspend exit
> > [1026675.664697] ice 0000:17:00.1: PTP reset successful
> > [1026675.664707] ice 0000:17:00.1: 2755 msecs passed between
> update to
> > cached PHC time [1026675.667660] ice 0000:b1:00.0: PTP reset
> > successful [1026675.675944] ice 0000:b1:00.0: 2832 msecs passed
> > between update to cached PHC time [1026677.137733] ixgbe
> 0000:31:00.0
> > ens787: NIC Link is Up 1 Gbps, Flow Control: None
> [1026677.190201]
> > BUG: kernel NULL pointer dereference, address: 0000000000000010
> > [1026677.192753] ice 0000:17:00.0: PTP reset successful
> > [1026677.192764] ice 0000:17:00.0: 4548 msecs passed between
> update to
> > cached PHC time [1026677.197928] #PF: supervisor read access in
> kernel
> > mode [1026677.197933] #PF: error_code(0x0000) - not-present page
> > [1026677.197937] PGD 1557a7067 P4D 0 [1026677.212133] ice
> > 0000:b1:00.1: PTP reset successful [1026677.212143] ice
> 0000:b1:00.1:
> > 4344 msecs passed between update to cached PHC time
> [1026677.212575]
> > [1026677.243142] Oops: 0000 [#1] PREEMPT SMP NOPTI
> > [1026677.247918] CPU: 23 PID: 42790 Comm: kworker/23:0 Kdump:
> loaded Tainted: G        W          6.8.0-rc1+ #1
> > [1026677.257989] Hardware name: Intel Corporation
> > M50CYP2SBSTD/M50CYP2SBSTD, BIOS SE5C620.86B.01.01.0005.2202160810
> > 02/16/2022 [1026677.269367] Workqueue: ice ice_service_task [ice]
> > [1026677.274592] RIP:
> 0010:ice_vsi_rebuild_set_coalesce+0x130/0x1e0
> > [ice] [1026677.281421] Code: 0f 84 3a ff ff ff 41 0f b7 74 ec 02
> 66 89
> > b0 22 02 00 00 81 e6 ff 1f 00 00 e8 ec fd ff ff e9 35 ff ff ff 48
> 8b
> > 43 30 49 63 ed <41> 0f b7 34 24 41 83 c5 01 48 8b 3c e8 66 89 b7
> aa 02
> > 00 00 81 e6 [1026677.300877] RSP: 0018:ff3be62a6399bcc0 EFLAGS:
> > 00010202 [1026677.306556] RAX: ff28691e28980828 RBX:
> ff28691e41099828
> > RCX: 0000000000188000 [1026677.314148] RDX: 0000000000000000 RSI:
> > 0000000000000010 RDI: ff28691e41099828 [1026677.321730] RBP:
> > 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
> > [1026677.329311] R10: 0000000000000007 R11: ffffffffffffffc0 R12:
> > 0000000000000010 [1026677.336896] R13: 0000000000000000 R14:
> > 0000000000000000 R15: ff28691e0eaa81a0 [1026677.344472] FS:
> > 0000000000000000(0000) GS:ff28693cbffc0000(0000)
> > knlGS:0000000000000000 [1026677.353000] CS:  0010 DS: 0000 ES:
> 0000 CR0: 0000000080050033 [1026677.359195] CR2: 0000000000000010
> CR3: 0000000128df4001 CR4: 0000000000771ef0 [1026677.366779] DR0:
> 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [1026677.374369] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
> 0000000000000400 [1026677.381952] PKRU: 55555554 [1026677.385116]
> Call Trace:
> > [1026677.388023]  <TASK>
> > [1026677.390589]  ? __die+0x20/0x70
> > [1026677.394105]  ? page_fault_oops+0x82/0x160 [1026677.398576]
> ?
> > do_user_addr_fault+0x65/0x6a0 [1026677.403307]  ?
> > exc_page_fault+0x6a/0x150 [1026677.407694]  ?
> > asm_exc_page_fault+0x22/0x30 [1026677.412349]  ?
> > ice_vsi_rebuild_set_coalesce+0x130/0x1e0 [ice] [1026677.418614]
> > ice_vsi_rebuild+0x34b/0x3c0 [ice] [1026677.423583]
> > ice_vsi_rebuild_by_type+0x76/0x180 [ice] [1026677.429147]
> > ice_rebuild+0x18b/0x520 [ice] [1026677.433746]  ?
> delay_tsc+0x8f/0xc0
> > [1026677.437630]  ice_do_reset+0xa3/0x190 [ice] [1026677.442231]
> > ice_service_task+0x26/0x440 [ice] [1026677.447180]
> > process_one_work+0x174/0x340 [1026677.451669]
> > worker_thread+0x27e/0x390 [1026677.455890]  ?
> > __pfx_worker_thread+0x10/0x10 [1026677.460627]
> kthread+0xee/0x120
> > [1026677.464235]  ? __pfx_kthread+0x10/0x10 [1026677.468445]
> > ret_from_fork+0x2d/0x50 [1026677.472476]  ?
> __pfx_kthread+0x10/0x10
> > [1026677.476671]  ret_from_fork_asm+0x1b/0x30 [1026677.481050]
> > </TASK>
> >
> > Fixes: b3e7b3a6ee92 ("ice: prevent NULL pointer deref during
> reload")
> > Reported-by: Robert Elliott <elliott@hpe.com>
> > Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > ---
> > v2: fix uninitialized coalesce pointer on the exit path by moving
> the
> > kfree to the later goto (simon), reword commit message (paul)
>=20
> Thanks for the update.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

>=20
> > ---
> >  drivers/net/ethernet/intel/ice/ice_lib.c | 18 +++++++++---------
> >  1 file changed, 9 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> > b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index fc23dbe302b4..cfc20684f25a 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -3238,7 +3238,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi,
> u32
> > vsi_flags)  {
> >  	struct ice_vsi_cfg_params params =3D {};
> >  	struct ice_coalesce_stored *coalesce;
> > -	int prev_num_q_vectors =3D 0;
> > +	int prev_num_q_vectors;
> >  	struct ice_pf *pf;
> >  	int ret;
> >
> > @@ -3252,13 +3252,6 @@ int ice_vsi_rebuild(struct ice_vsi *vsi,
> u32 vsi_flags)
> >  	if (WARN_ON(vsi->type =3D=3D ICE_VSI_VF && !vsi->vf))
> >  		return -EINVAL;
> >
> > -	coalesce =3D kcalloc(vsi->num_q_vectors,
> > -			   sizeof(struct ice_coalesce_stored),
> GFP_KERNEL);
> > -	if (!coalesce)
> > -		return -ENOMEM;
> > -
> > -	prev_num_q_vectors =3D ice_vsi_rebuild_get_coalesce(vsi,
> coalesce);
> > -
> >  	ret =3D ice_vsi_realloc_stat_arrays(vsi);
> >  	if (ret)
> >  		goto err_vsi_cfg;
> > @@ -3268,6 +3261,13 @@ int ice_vsi_rebuild(struct ice_vsi *vsi,
> u32 vsi_flags)
> >  	if (ret)
> >  		goto err_vsi_cfg;
> >
> > +	coalesce =3D kcalloc(vsi->num_q_vectors,
> > +			   sizeof(struct ice_coalesce_stored),
> GFP_KERNEL);
> > +	if (!coalesce)
> > +		return -ENOMEM;
> > +
> > +	prev_num_q_vectors =3D ice_vsi_rebuild_get_coalesce(vsi,
> coalesce);
> > +
> >  	ret =3D ice_vsi_cfg_tc_lan(pf, vsi);
> >  	if (ret) {
> >  		if (vsi_flags & ICE_VSI_FLAG_INIT) { @@ -3286,8 +3286,8
> @@ int
> > ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
> >
> >  err_vsi_cfg_tc_lan:
> >  	ice_vsi_decfg(vsi);
> > -err_vsi_cfg:
> >  	kfree(coalesce);
> > +err_vsi_cfg:
>=20
> FWIIW, I might have dropped the err_vsi_cfg label all together and
> simply returned at points that previously used it.
>=20
> But that would not be functionally different to what you have done.
>=20
> >  	return ret;
> >  }
>=20
> ...
