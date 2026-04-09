Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPSpCZ9812mXOggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 12:17:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 802043C9152
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 12:17:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8A0B6077C;
	Thu,  9 Apr 2026 10:17:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2al7zosBGLvd; Thu,  9 Apr 2026 10:17:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6195760891
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775729820;
	bh=RJmE4Kt9kvKt5ji+9D31TW6DyOQ1n22eB8nolOiqKTU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gGgO7VF6+flIr/tR1G1IOVmUIP3yOvBh7a88Cv/8ZqnZUg1y5dYVzNkiCJchJVlG6
	 +DUgTfLmpw9NVcKe118NXIlUJsWOV7qgdpaUT9XNZdG1G+LmbFjD2NK6TC7Oc8iqDe
	 CWswIkvzz+mpPudrRYBJDtGGSbKa1Vlpn0lhcrQktxMytSMLrToH76CcM4+4Qb0MN1
	 w78dPmyetjDtf6G8cwXl/1gxhWmJt3AfKRE1tOOfcnyJniEC9ruKd2f6lHtAtVKL7P
	 7sCQI34gmZxrC8XcWJpEJmpEYaxXIImNm2pfaFxwKkRXEt4U6BJWZ1sDQUb+EBbiha
	 9lfuD8UKIgdlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6195760891;
	Thu,  9 Apr 2026 10:17:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 224241D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 110A140143
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:16:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nuZ2butQP2Qm for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 10:16:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6558A400AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6558A400AF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6558A400AF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 10:16:58 +0000 (UTC)
X-CSE-ConnectionGUID: 2c30RDrNQbOLDkGr4mLfRQ==
X-CSE-MsgGUID: rjj0VS0fQji5JlIjlo+8Sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="87354355"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="87354355"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:16:57 -0700
X-CSE-ConnectionGUID: 6Hbv86qOTfWeUz8kux3mrg==
X-CSE-MsgGUID: c7UM03sCRJWF/Oh7iY5Hpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="252065692"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:16:57 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:16:56 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 03:16:56 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 03:16:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nsm1me15GqGubkZLz3Z4Ot82g5zJQDCqp0OiCQjE+TdDJgX3Wl1/N+pkko+WifQ7X/7aTGb19vJ6wC6a1LsxXvsjAfvt5cniSF4H2Ui4z153H2+uN2xgdZBn6aWRuBAOpweFdCVkN+abW3TuNwASmTw2cawaRWNPTHZHQnkC6nnus598rzu7/Zj0lnuPqqsxFPzNAuSyrJgJImoSCswWtyQmJ0rbPghYObnxpuaJ6z1xD0yqMRgGZBsDDzDw7Hx0VABG8hc6gr+ID+B2VY/gcc3ExwxoCi2+4P8i/68MjVtYnAfo/NdQsJUKjCWRilGEw7pl0dwOq8TFMe2LuQb/kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RJmE4Kt9kvKt5ji+9D31TW6DyOQ1n22eB8nolOiqKTU=;
 b=fRpLsQqOxWNw7Jbr0xSXq2564jaGFtwOihUCsQE64p3dCIu/h0ePVDpptLt2VdC5XIFD6vOQmPKAr0kf7Fv3RjkCW5xsRVfyaFygVd6PdkLsdEEoJHFG0M4pwQoakxIcXZFVCSfc7Sfl2KrgrMvLu9T4nk1Uvw0dudTmqIudrcCY8u/T/D6iYM8fSONTa+bOnWC+EQFXw3iRbWytB6dDvssyvw1v3p5sX66/+KbYXhWiQ3XONFANvLRexhQesvnNwHAJe3177Wr/nCCIKeGnUmRF2CyuIfEyZnYh/tFUwiIITea3h9TaeEdbr6kdpWaoSUO3p73DdIiJzXzFPpi5YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by DM4PR11MB7184.namprd11.prod.outlook.com (2603:10b6:8:110::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Thu, 9 Apr
 2026 10:16:52 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%5]) with mapi id 15.20.9745.012; Thu, 9 Apr 2026
 10:16:52 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet
 <edumazet@google.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/4] iavf: rename
 IAVF_VLAN_IS_NEW to IAVF_VLAN_ADDING
Thread-Index: AQHctTGips56wIE9KkGrIekcmKBXnLXWqXWQ
Date: Thu, 9 Apr 2026 10:16:52 +0000
Message-ID: <IA3PR11MB8985496B3CCE4D4CAC06E0728F582@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260316104209.1285962-1-poros@redhat.com>
 <20260316104209.1285962-2-poros@redhat.com>
In-Reply-To: <20260316104209.1285962-2-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|DM4PR11MB7184:EE_
x-ms-office365-filtering-correlation-id: 5cb6874f-6305-4361-c0cf-08de96211e91
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: CyNjZQUBOgawgngXCn7XgBLp9T8ErLH7X2xpyyYuNQOgiDs0vuT+YERAbJg54OxfZ1X1qj6bm6O1Zoqo2dsOZJw2KDRdXo/nsCLaMWPsoGw0bYliZ5SAUgDJzGJXAUXCWrY7KxkQyAJUVAHZ8t2grwqZ/kzKihZ6ZmIssRc3NOhoyewPvcs4WywKJBC6RUS/kr3gnuQ7BtT8S/w8JHRgguE0EOne9mDVT6CrhAdy8YbVFL+fkI6xumeDIkozDqsiANgFtiRgpKLOo1QpSsJXPI2UhmFPX2LC1wQa4/8F6GuIeh5uVy+ibDWNtxxogtibtje8+OhnrqSe6sGgFXjcayKZZvg0aPYtnwExH1wUpBPNGi1JQuKKNrV6/lkWW1pFeBn64vO6JN9JK/i81sTWUtqIGennWp7XpkRaiDxvMJ9MHr4EWEcj+2eS8sLkP+aAe8oN9QAOkN5882dHXy3QozjcYXJA0ozLCI+gpajsB53o/zmdNI1ZNWl5EZJQUUHP3zLxrmJoHjHU21VEc2MRc0tZLhKn4mTHk6j0EXEpArdTlz47i6d8BhL6OCLPWXbPiHAZhoiF3eN/qilrbu4jfGaB4p/DnHfKG2H72rbdsdK5vW7+TzpENMNqk1Nz0uc4C3wNc6fmJIFl7J7vPXl1QtxJ+ccKOM/8FA5V/AkMXpo9+asSyx0R6SSBtVIdWFMeK/43KRgA93VufHiHuBd5/ov7lLWqpr8NNehULQTDyq8epC2oxhXviwWXCSn5CRODD3Rk2PksHWZNQdUfosO6dpSfwe4zQDOhi5Qzp4DceU8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Tq7z5Gnl2e6JPpSzl5Tcjp9WHMb3e3ApnHjoi1l9I8oLTq8RsuL88y6WMzAb?=
 =?us-ascii?Q?gnslLZpJi6NS8mTGdtBs9yi9/6qVXHFPspQXh+wpUHEx3J55Sk95YUcGO7kq?=
 =?us-ascii?Q?4At9IZAUcDUr+tyqIow60vJ8EXG3Bq/k9gggt1PWpwy+aNUa5SkStEtu9/be?=
 =?us-ascii?Q?iisl6Y4mBds+8Ot9s95YrQsT9aEdhWMIYj6/3srXB7eECWLbF+b7UAZfFlJh?=
 =?us-ascii?Q?6IXIn8Vqjdy7cFYlcHd6LpB51ABvUhULFCj8ps+g4rc5USkehRhHUboq1VvO?=
 =?us-ascii?Q?Ku+zcv0j/2qrKHKZ/hp+uNoPLfine8Dl/U02TzD76k+uyu1ImpmmpxK6sw8s?=
 =?us-ascii?Q?LmxU9mMyczOnfak+U2B7xqua/DJ5/L7aFCx/7N7leqPwV6fLOdK/M8wzTc3J?=
 =?us-ascii?Q?t9d0BL+rqNusLRSGjD9FeVduPftlM1TXfPAEr+0uLQ85Hb9jL2/k73N6ih9O?=
 =?us-ascii?Q?lanBHLF8YPvxIkMJPy/cV/DdhZJgFqM2aRwZKYqrl7v8VaEer4xuldZINkSf?=
 =?us-ascii?Q?cb75g2/RPFBlrres15DuQMbLiLIP2IQ0XZ86uHTfQaoIy/wDQz7AZN7grWgT?=
 =?us-ascii?Q?gFULt2jn9ntO9Pc3PAh7blrzUYDhjvpHfxntoP8MTfvM+u9Xl9tVOR2fps2H?=
 =?us-ascii?Q?jy858uNEfiy5SD5nJfZsaSgI91Dfcby+WBAzfgt02HnUALm5mmcDIZ4avZq+?=
 =?us-ascii?Q?dmMlNBF3QRsEUqyUA3z+ax6uQS6IRPfwL18x9Vuv7Kd6M5CFpvX0RBJ/sVjA?=
 =?us-ascii?Q?vLJmBNSHkgmfMVti36L2qd8rRbh7jmyVPGL0ckiXGrDxgfvLzcEH0yYHgX6d?=
 =?us-ascii?Q?JvaLwrdWOKGGLBXbFEhHO4zdyohPv4MBWjP9qPNTUNNSasmoOWyiC7ByYkCv?=
 =?us-ascii?Q?zZKHptaShmlEIQtvO/oKHfi5+CKNh08fLQXV1uBJ2SUtCyJYZhn89KLmoeOP?=
 =?us-ascii?Q?+6W5Ga1YpxIpHD6adITJe4f687u9HTV0xla2jYoY2GaSvpwozkfqwWwUjwKd?=
 =?us-ascii?Q?nQPOy7MUdo9Dxb00BvnNRMYfHyrcz3bOlFE8HCzEqCGkLmMUHacScCyULbKr?=
 =?us-ascii?Q?Y3oiEfjVPIler/m/mpEGyhMr6JGr+EUh62ntyRVZHfM5XFtHqK1UcJKdR9i9?=
 =?us-ascii?Q?Pe55MPOz57mYlgJwbPS+mEiRIDVgcfKG7FDthFUMHQ3kuWtSJ3AZaI+VUYuE?=
 =?us-ascii?Q?EdV0+4hsKI7A/SCqRu/jgrky1/AAg8flrTWIqi82pJdNowvL/2dscmj5lu9D?=
 =?us-ascii?Q?Dp4ApFyvTRY+t48E/7Ra+exVH8ErP2W0ZHSxMny1qZe+feHX3PXNj0z1Eu6M?=
 =?us-ascii?Q?dpNe+W40IG7iOuFJh6Q+geqkCwyRvEiXX5o4nyYWw+GOBxbiltBV+Orb/bbo?=
 =?us-ascii?Q?ODRCWqP3CLfKh/mI3EA1qxKBtBsqQtHA0MZ79QtosytKfZ8/wk0xBVHXxwZY?=
 =?us-ascii?Q?VntIXLiwDl/fA31+NV1s1oJ9OQcPV2dw4r79WNPfT0EBiOX57Q4/N5e9HLwM?=
 =?us-ascii?Q?4vOPMxav4lB/hCuhJcnXQz+I+67lTsabs66Y9y4xbevliWhcEObYP1qqEvdp?=
 =?us-ascii?Q?20O6NoCyTAvPtRcGoFR6TXXuGycI1x9HBaBTh14azRxnw5ikB1AMmXpeeWa7?=
 =?us-ascii?Q?RrIL8wgLPyelWjf/gjQrZLvs2v3tNOnO7MhLQh+toCaqdQ4KR8AyxKET7gaS?=
 =?us-ascii?Q?yKvHg3Pl+1MDp9D16lEgP4aqpWzqfslxGi8sdB1ZUhDMXYEGEHIEcWXmv0uh?=
 =?us-ascii?Q?9zQabWfsEQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GGfI+uKXdfpwP1BM7oLaGf/8/CDKauOFYjnHFXtnppFnw+wklF3pnUVT7H+S6/DFEpzFA7k4nwBAdtYlxoh8Vx7e4MsFh0QaiSe9nw4YCK9bfcr3GDfZphRS9eP+BGeZxMty6s63gli8iRFnl5/NkVJENoUvcEUboTSWAvPjBseKrVhbCBQ9lSc+hXSWrN6Fn+xKu4qphol0JzXYzLqdkoaPrRjmAfFfvqxp2Ib7bN+1bZllBYFAP+74c8L6vBd9F9a4QhknYLNDFe4WYMNRhLVKCcUgRQSxMRSL4XMemZOvm+QOZNHOrXBY5g+HN5VmZjk/XTIJmFzRKLBBJQww2Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cb6874f-6305-4361-c0cf-08de96211e91
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2026 10:16:52.3855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VVxrzd3tFruQ0mVnEQVBC+sIgLP3t7Jr52zxce/62PLH+0tv+QyYMVT10mketOXxObkwpgUjEbD73nF5HaoOIInCc2NR/jrX/OaOmeBt1dI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7184
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775729818; x=1807265818;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n9+sn9I7+GCPevxM4xgvXNWtZK04r0ui8pZSVxeJXP8=;
 b=mKzwURB5e3GqclgSNk2lmxaoM53NOVNkvOhUbeN7U3sMwH8vQpsXMSzX
 DOnoAm/KTHM2cq3VMe/xH+o0hrSNbZHBR4vMqT/JJJ/95+FTcGUrouUvH
 R635MZVJ590odi65v8uOLYckAZV2fM2ZJzlFvDfnKp62be7uv+sUkMZmT
 fH4TS5xL/EP9hOh8r7ywt21dYI4zXl/vhbfX5wucIfapN40zLn44TYX6W
 UQ3AoUoYXWhlG7+WohPBKeVKeDYMKIozlr313jvCGvZfAxnO3QStWlkMt
 6XgLYSKAvRmYuEGA2GlxQEc0bZRCynp6BY7NsOnJRKbzZUYxrQcRPIKUn
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mKzwURB5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/4] iavf: rename
 IAVF_VLAN_IS_NEW to IAVF_VLAN_ADDING
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
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 802043C9152
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
etr
> Oros
> Sent: Monday, March 16, 2026 11:42 AM
> To: netdev@vger.kernel.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Eric Dumazet
> <edumazet@google.com>; linux-kernel@vger.kernel.org; Andrew Lunn
> <andrew+netdev@lunn.ch>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> intel-wired-lan@lists.osuosl.org; Keller, Jacob E <jacob.e.keller@intel.c=
om>;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David =
S.
> Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next 1/4] iavf: rename IAVF_VLAN_IS=
_NEW
> to IAVF_VLAN_ADDING
>=20
> Rename the IAVF_VLAN_IS_NEW state to IAVF_VLAN_ADDING to better describe
> what the state represents: an ADD request has been sent to the PF and is =
waiting
> for a response.
>=20
> This is a pure rename with no behavioral change, preparing for a cleanup =
of the
> VLAN filter state machine.
>=20
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h          | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 8 ++++----
>  2 files changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index a87e0c6d4017ad..8e6db72828ae14 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -158,7 +158,7 @@ struct iavf_vlan {
>  enum iavf_vlan_state_t {
>  	IAVF_VLAN_INVALID,
>  	IAVF_VLAN_ADD,		/* filter needs to be added */
> -	IAVF_VLAN_IS_NEW,	/* filter is new, wait for PF answer */
> +	IAVF_VLAN_ADDING,	/* ADD sent to PF, waiting for response */
>  	IAVF_VLAN_ACTIVE,	/* filter is accepted by PF */
>  	IAVF_VLAN_DISABLE,	/* filter needs to be deleted by PF, then marked
> INACTIVE */
>  	IAVF_VLAN_INACTIVE,	/* filter is inactive, we are in IFF_DOWN */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 88156082a41da6..5114934fe81fa6 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -746,7 +746,7 @@ static void iavf_vlan_add_reject(struct iavf_adapter


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

