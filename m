Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 114ACD3A1F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 09:45:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2628811A6;
	Mon, 19 Jan 2026 08:45:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kWKlC87dTHyZ; Mon, 19 Jan 2026 08:45:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1ADB7812A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768812342;
	bh=S0tlwgLXPUotKRiwDbvtxhdyJKLTSV33MqUuUrIsBi4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FsTyzQS351tGXcZ0qlbJTaq+u7ps/hgrTpdaftpodakUXwW56mC/TMTYodWGX62Bz
	 I5prH7QnGU4aZXPNdAyY/jSu04/wsNEVGyW560cKAbyyDIgwFRTDhBU2JZ4OAHWOkZ
	 MdkN+xiTVpYNXagjYpuYpZeIt2Gc1dmLYL/aaDWp8nAkIMp0HpH/pmthfYFZkDrkA4
	 oFo/gHBpl6HI1NUt74YAE56czYYAVN45NIuMx0RHDMRoO2lA0q9rTYJVEe3JNizjA8
	 tCTgAuXbzILXup+i7DZILXU9NkkebpPBvhS5C2pKuMpAS4ehr44Lj7SDBtnNSxWuSd
	 WKA2qKEBZXLOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1ADB7812A0;
	Mon, 19 Jan 2026 08:45:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 24021160
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:45:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0914740B3B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:45:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HNEZ-ecm4RsF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 08:45:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1860040B38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1860040B38
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1860040B38
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:45:38 +0000 (UTC)
X-CSE-ConnectionGUID: Dgu0GrTQSPOleOkQSf/2uA==
X-CSE-MsgGUID: ngw3gUXXSpWQd/fCrjX0aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="69219355"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="69219355"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 00:45:38 -0800
X-CSE-ConnectionGUID: 92V8wutWSKGfZbJckd6Mkw==
X-CSE-MsgGUID: 5tfd0WDHQZywVzpPhVit9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="210318551"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 00:45:38 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 00:45:19 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 19 Jan 2026 00:45:19 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 19 Jan 2026 00:45:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NLgAP5C3jW1xWVvrA1ChQwZLURQWNJh/7grwgsjJvGPZMsTlDl9Sfop6UF8ZWaFG3nBA9OZGsPYgZ3hlfuZoSIZ/57tg9nZENVD7uuBXZN4bLmiMOWAZ5EArlqdsupEj693b5sF0Zeutkzmgfqb14xsyP2WGwePOLHL/bFa+ElR/UTkdmxKKV3IF3uo7HMPFbS906tUI9qgBMFlUGYfSALM4Fz+XN/TzZVWNwXh58X8KdFn8M9nn7BERWmlORxXxwNJ7GgoeJxNqTyWnHKX0BsQdmjGonJWXmYkWM68Hs1u6+4S9V8rvN+byBM7+1zhYubCSarcxC0f+QDzk5Smq8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S0tlwgLXPUotKRiwDbvtxhdyJKLTSV33MqUuUrIsBi4=;
 b=UQE+7iE9BG8Zu5XnKzPitacaODANxhTZ9xZ9qFfCSd1BSRivdPIl2OW1zbcWR8XeMwObA29o+vKWPcmHKdqorv89mfDsClcf7SmkXKqybIGAPmbap5BFGLQZxmZKrZT3JZ68z8DTLUXegCiRRaHFqkr5NMcVK+P1wVm0SB7XhI5c9QhxmaK4h5W7LpxNU53R+XrTGdy1l/9iRZBhmheH8uAEWSoRv5PfXUmpv6BcGmX7LWXa5WQWu2ujmezn2mlHwssZoCY/+35ozaOLy/FC7POThs3N2cAmZXBSncM+TwdVpdaui3M2h8qqnSEp6ITk2q/yZwBsSue4/otQ10+zvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5890.namprd11.prod.outlook.com (2603:10b6:303:188::18)
 by CY5PR11MB6091.namprd11.prod.outlook.com (2603:10b6:930:2d::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Mon, 19 Jan
 2026 08:45:12 +0000
Received: from MW4PR11MB5890.namprd11.prod.outlook.com
 ([fe80::b3b8:941:41d9:9d77]) by MW4PR11MB5890.namprd11.prod.outlook.com
 ([fe80::b3b8:941:41d9:9d77%5]) with mapi id 15.20.9499.005; Mon, 19 Jan 2026
 08:45:12 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [PATCH iwl-next v1 6/7] ixgbe: replace EEE enable flag with
 state enum
Thread-Index: AQHcg85kJDamQr0bY0uRVFA7Ug4/pLVOq/wAgAFgrWCAABnsgIAJEV0g
Date: Mon, 19 Jan 2026 08:45:12 +0000
Message-ID: <MW4PR11MB589023306C8055BD6A937557F088A@MW4PR11MB5890.namprd11.prod.outlook.com>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
 <20260112140108.1173835-7-jedrzej.jagielski@intel.com>
 <8f976990-1087-4ba0-a06d-c0538c39d2a3@lunn.ch>
 <PH0PR11MB59027E7BBF8EF6121DF24DDCF08EA@PH0PR11MB5902.namprd11.prod.outlook.com>
 <cb9f2295-0f1d-48a3-ab53-3d51c2930f94@lunn.ch>
In-Reply-To: <cb9f2295-0f1d-48a3-ab53-3d51c2930f94@lunn.ch>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5890:EE_|CY5PR11MB6091:EE_
x-ms-office365-filtering-correlation-id: aa08f671-2cb2-4808-24ee-08de57370f2b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?W+LA6s9/MUYKaMiHUe0jjSMs6uPw426GIrLDb5LPlkTjD2VGJ5q37lk6KFjl?=
 =?us-ascii?Q?pcdWpCFLr5oHLlSaQ4BAnfA5QJL0meQ2NBjlc+Ae5gpziTrRzuhT6n1oGIXi?=
 =?us-ascii?Q?gZGhmwJ22Gk7H/esRKISc2ELnvz6Din/08ZDGqIfTwmpKEORqi+EKsfGpBrP?=
 =?us-ascii?Q?xVyagsG1x0IqYzZhXhABSk5Eo9srUA6XYRyNoz0MtvNvQxHBnChTzj0kEq+w?=
 =?us-ascii?Q?juP3JcQuqJPUwkuyaOoQRVf6yOuGtsFjXic3rICzRKAK8z0HFufWYCz/YycW?=
 =?us-ascii?Q?+wjgpIY0orXeeJvdfXA9rwNYIPqt7rk2tIbPWVxBb7GVFlMKVyK8/rUxqclj?=
 =?us-ascii?Q?9XELnYGnGt0IP3E7+5DH3AifpbbxNW9dWPEdlMEkcnFu2p8dRPDXu1k9k9Os?=
 =?us-ascii?Q?VkSt9R8rU3kc8IuAw9Oo04wZhT0kVQyICuPmprjerKooLn+TXSppu7gojK7H?=
 =?us-ascii?Q?RCUhIpPvh2HZ0Tm+XYUCduNjU0DxeFlRdq3j9g1aNLcvZk+LUOzqLreYaKZJ?=
 =?us-ascii?Q?W601sJgUZ4YFA4pae7H9AdVHACgWQ0/ZZiCuHimyFPm17gq5q7z4UlFrkGe4?=
 =?us-ascii?Q?HLjsw9WhtbKPzQOteauD+/p+ERfm2gcbu7ARbzXFqywfLs0i9fl46294E6Me?=
 =?us-ascii?Q?+yTE7IYDD4Lox4tstWkcthYlYyzzpzanpCvgIgUfj0dylZGXztwdR6iCOECd?=
 =?us-ascii?Q?ksGUUHVrRbHC0ZqnlsSF9fKh9flv+muAcNQR2Tnvh/q/UwEqhT0vAG2PjHiT?=
 =?us-ascii?Q?mLbxf4EelclhQQQmO4XlQLxEnzRB74uH8ilZyGpDetRrpnt4aj0i7HSLMSoS?=
 =?us-ascii?Q?BivqzkP+FtqWs5YvSG/NmUTMdhNRuTVLbicmbH5BXpkitHefH38ul+xMkggO?=
 =?us-ascii?Q?ii04jnZIWDrual3TP5Snvu7xDfVf6a7j7JZo6BHG2wDDuE5/zuo79/qwKIl7?=
 =?us-ascii?Q?wPWhZ8PPn493JppAFIISVEXySGNzJGbkoMfvU+dtSSGbRefklxrHSHJWgDQa?=
 =?us-ascii?Q?N71EqyUfpAdbmZp7mQ7kh+qDN4SqSaCUiu328wsG3M+H5VivntbhtgFY3eGd?=
 =?us-ascii?Q?UONEgdCASHC8CiPa76fFixl5cLgE43KCv6TARUCqIPer0Dx77AN/Tb8+enX9?=
 =?us-ascii?Q?ahvZpsnOWTT5fUMf4AF8n5q6OnmPg8tkYZqWs3oDiA7DgtnpoBBlO45+qVa8?=
 =?us-ascii?Q?WYyB/9FjFBLoPvKwg+poM8h0Vp4J2sXzk8JOdqB8act0FCXftoCw5fhtVkLw?=
 =?us-ascii?Q?XgScAggnKYkyPkkEPvsqvIQNghHlP0YQiyYxFPzusDKxRsxQTtq2kziAQ7YV?=
 =?us-ascii?Q?KEqUCtCINNP4qUqT0TiO4+hNHYfnQn8adzYieVUfvQzKGG11XN+UHQTD6Ef/?=
 =?us-ascii?Q?6aY1WmLuTYqfPM2dorlYA+fZT2iPJyaBXWEFMkkTKSalS6fCG7q9yRL3bFYY?=
 =?us-ascii?Q?UEzj8PdgA//FV1NgIQhJEy1uaTn6fHanxAaM4eMpF3Bs4nLskzjr+hojWmMM?=
 =?us-ascii?Q?JKkmmI6JfOKUESIaRia5PE7h+LvB4NUsaTB2Sdxl4ZwZXN2B3CLOGtkIgIVp?=
 =?us-ascii?Q?S6lpXnwZdqjVZwaNY6vGsQ7b8+yZhpcEE4Lmn0su8FOW56FhQhN1paArN5bK?=
 =?us-ascii?Q?Ck8kvXEuljUlV2UCUOjuhXM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Nn0ao1JN+ht9j1IaMfW+nwP1zpyBxoNnEUIq/mhiFvuMIcgpK2uwDayGhwxm?=
 =?us-ascii?Q?P7HCdgB5N/ZWfzQme4DxZ+p5Bs4SvAa/NQExEhlN5+XuYv4K9oyVIX4I0FY0?=
 =?us-ascii?Q?74tlBEMVlrpprWxRzDnYEBDNKfTf3u1U9Qp/vuKGfTAEHxxb14vvqP2QaGo0?=
 =?us-ascii?Q?32uex5ntKolccPFjqk5xkO0LW4USDhYJgHeRGhFRaF4JuCM4htHHXjGwG+hu?=
 =?us-ascii?Q?0sN8qggJ/o65HQCF2EAhYvASkFxcTrWUFdf6TGvrDY2ZZC7tnUNMu51NrioW?=
 =?us-ascii?Q?HoLCODa5kWKEiVHZCrl401yRLwuBKUYqklPxjsbVPSVPkAVZA6wrU1xYPBsM?=
 =?us-ascii?Q?pIlk0gJhbPA/bgzdKHfFiMT9y9q5RiverPH4aMsugIErcfLaM37YZvFrUcyo?=
 =?us-ascii?Q?X6cq0R+8HNg5A89Wjp8CbHDyUDS/V4HJIGJK410mLci7GIikNCUk2JlEj7mU?=
 =?us-ascii?Q?Df6u2JpCUB6XPEzHkZCbmHWCB2epjYLQB/BfKONeyurDDrh2+wMz5PwzqDYu?=
 =?us-ascii?Q?LMyyw5kQOES4QiG+52Wrn/kWvKoWRvAugkPOWev7PB0cExG8HUw3b2LDFjIV?=
 =?us-ascii?Q?DFqGBBF9gTNJiOSdtgQ8UlIne8Hn2gOapJQ4asSHKVzV7RB5kKcmEEioAI5a?=
 =?us-ascii?Q?4MNN7X0VmL293Cs1I+kRGmtAV4ZTygVJ6EBRJVtuhUXw+SqDLb9OI7O21o8d?=
 =?us-ascii?Q?o+qE3SY6zD55sJyunCtuZgMda89E66vwsjsPFyydABYkxxKVEcaBqesEZgMf?=
 =?us-ascii?Q?sNaQz1porRD2cvKjl+oJwPL6SX1CsoILqaDeDy7GfUu0IZQF8S7Mp5NxN0Tn?=
 =?us-ascii?Q?K79kHYkEoYA4Qo7kvZsVTjAmIS+8wW8htc4orZZrvYK4sahYqyQRxDD0I19Y?=
 =?us-ascii?Q?FWb6lfPbRFG5fCWPGh3B6yeLbJ6eKDieuGsalsnQ8Gqckk8Y4QGfcBp3siHr?=
 =?us-ascii?Q?Nd6/go4J8NeXfA8Vi6+zafepAxWAmy4R4x2FDbFGriN1/ST1j6fQMrlyKf20?=
 =?us-ascii?Q?zaoLc1J2fNlQZHGpcdj+in8mCiLnMUNi5SHBvWIUsrAoRpLhp6//iv2wGshA?=
 =?us-ascii?Q?sEUQLyUmM3y5WATsh5VB5pbymfRZgVPquNIunknYyc8763+algY268/bCCMx?=
 =?us-ascii?Q?1wqyU0nd8HEXxEeIyzX3A73k77gariff18cdmoOsMNbCACw7waHZ9NBiwDmA?=
 =?us-ascii?Q?LDi3K6IEXI/Hz3UN71ZMdFt1fEd5x2sFZzMoTIbb6pW3t4CBYKLcXW6ddnAP?=
 =?us-ascii?Q?pW6aWjXb6JhCM3L2qnEH+AwgxX4IIIzsRyj9KEUp6pF/lcNo6YVzplj3YlFa?=
 =?us-ascii?Q?9oLP+3W0ZH17auhJatzdqTXFtPVAOcw0ORB+d9bzQ1fF6bJ8sMk6+CTdhx5L?=
 =?us-ascii?Q?DQJyyoaLsLgy3jeHHQTMyBUXyUr7k8gBNnJOWCNRcoVqgd2ALdtt/DBmbrH/?=
 =?us-ascii?Q?tAUxYUCQAvvn8zuOW9IdqnhsIHj0JkZj/+Tty5EuQvcW3cGrjKzCWBTKQzYM?=
 =?us-ascii?Q?xWj5TzZPB4f0T1QXxJSO9W39SnTGtNU2/dqNvBMbBoNd4UPHwWlimU9A2ru1?=
 =?us-ascii?Q?gA+xZ08MolefUY3jVlDsaFSoZaWQ4TkuHajCRwtLR+KYE3nSGDUItLfgWzZb?=
 =?us-ascii?Q?kTfDmJ29nSNkrYNpBMIk+eC8k3K6RAcDXrvxtQdIAAJRb9PMBTQU++ilDzvm?=
 =?us-ascii?Q?4g4wkkp2cthN0gUPSakgl++BZzOqRKsTL99yZMyfjJJAr8xlbmL28E3xF2Gc?=
 =?us-ascii?Q?QbNZgprFvA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa08f671-2cb2-4808-24ee-08de57370f2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2026 08:45:12.1987 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ID5kJXT64q8mo8loswWK+XcLzqkeXW3It/f6ufMcEcP4Zye8tFlwHMn87lRNsEYZQMsaIFNBLWC0Z9L3BfW8KgaBBs/3AHsnuux1aWjtewY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6091
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768812339; x=1800348339;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SCKH1XX3Knr5WNmrWjAmPtjAEJIksjRL7csft/AULso=;
 b=L2Zet3L9Rwd1OT/gLnFazPm8dDMdAx+gdlj0wbAljDpwO6HAKcxGq48z
 3t6srjbjy8m/3O62VgH1ZpLMRgYRl9+VEK4XH31qQTVIiNKBcCe92RgOe
 h9S6BgwursqvLr13F3e/5LkXy5j6aQYGj0ZyiT5O2NsLFKpmRsArkp2ea
 lRgjmKze+lCMVZIJaEksHxHA43Tsjn7whwsbYrsmCjyArlVC2F3npZJBW
 iEsR29557lZbAjz8FVXC81mTwhX32ms3TV00Hmg8w/NDHvK4XQR1r+x9m
 vd10I5uuvCvHSVRybyF3nG382+ho8DCgrh7hzomTn58BpMDvszHT7D8sU
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L2Zet3L9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 6/7] ixgbe: replace EEE
 enable flag with state enum
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

From: Andrew Lunn <andrew@lunn.ch>=20
Sent: Tuesday, January 13, 2026 3:16 PM

>> OK, so you mean it's redundant? There's no need to explicitly state that
>> EEE needs to be disabled when it i not capable of beeing still on due=20
>> to unsupported link conditions?
>> Probably i would need to check how E610 behaves in such scenario.
>
>It would depend on what your firmware is doing, but if it is
>implemented correctly, there should not be any need to change the
>configuration. ethtool_keee->eee_active should indicate the status of
>the negotiation. If you are in a link mode which does not support EEE,
>so it is turned off in the MAC, set it to false. supported_eee,
>advertising_eee lp_advertised should not care about the current link
>mode or the value of eee_active.
>
>And you probably want to check for how phylink and phylib handle this,
>since they are the most used implementation and so the reference.
>
>      Andrew
>

i've checked the scenario and, indeed, EEE gets reenabled once link
conditions are meet again even without driver intervention.
Thanks for pointing me that.
In that case i will remove link enablement/disablement on driver side,
but i am wondering whether leaving logging trace on link condition
change (EEE gets disabled due to unsupported link conditions) would be
beneficial
WDUT?
then keeping tristate EEE would be required i believe
