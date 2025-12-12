Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF18CB96D1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 18:18:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 51F1960B4B;
	Fri, 12 Dec 2025 17:18:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r3_0pYXCk4pd; Fri, 12 Dec 2025 17:18:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7229360B3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765559914;
	bh=qgitdJeCSmzHjNfouncueLPqAFO2JHp45l2oLb1+ORs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KfXFdsuowTzeq/YlSAZRy4Y9BVDOXlnyT/Nmsa2+GwXWRDC+kbNqDXG/IgF8D+Tpl
	 csFnHV2C+9G7hnGo81LlRKlnpBW+HBFJJ1I1pEYoYWkp9lZ5wOaV0bi1SP17NksFhO
	 yD5aJ0GitK5+8aGP8ns/zr+2Bc7QACpJPS7OfxH7Spa9lGfhjn4m+JBVvildIkW3qm
	 D+dlbB/0+62MdO6XkMEGbmPP7bUlcAwWqyU24MPSQq5A5NnDYH/2KmrKe2a859IHjV
	 gPj2iSuPVa+BbF30B/1E2GgMIgZKLAPohudfMppO16fMpUnEy6iDkWJAgZ8V6TyydX
	 QrsOZpC6Z6Hqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7229360B3E;
	Fri, 12 Dec 2025 17:18:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CB0A9E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 17:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BCB9D411AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 17:18:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BNEBhw6rubCj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 17:18:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 926F64069E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 926F64069E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 926F64069E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 17:18:30 +0000 (UTC)
X-CSE-ConnectionGUID: qmIaAl10TAG/fdAbaIaeOg==
X-CSE-MsgGUID: SozA0UQMT920EJOoda9OiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="78935886"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="78935886"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 09:18:30 -0800
X-CSE-ConnectionGUID: JmfBV16sT2q8coUmpY7XHA==
X-CSE-MsgGUID: eQ0QbZOiQcujVX9Tur+ThQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="196890911"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 09:18:29 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 09:18:28 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 09:18:28 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.7) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 09:18:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ejynscKB7p8ZlxxzgRK+Rs+ewcOGoGwhMlNulLR+57cUm8mGuSJGJpEeQZLIy/dbMuKzKnjEiGvfKvAGVJsxbZ8KjPsopqHUD5KLSGi8yQWNRSTVppxpE6j+uCbmyRVc5rpEhX9B63wkWeFSiTVCM9oTbc+s2DZsLqmcIrn7Ugsyx6zq2sjhpEC7WqtoH4S48KpN4H6imK2Kvslwo9epKZlOPlEwsiecJM89LnsYgD3kSgfJvSiYqLenUr44zEGA3mHLuy2cQ6OSEi++C3kTRkEr3emp2GK3R71googQO+VaxeMM+Unrephk2hi4Y2KCVk4Ln5Z1fLBKcSxBU6/QWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qgitdJeCSmzHjNfouncueLPqAFO2JHp45l2oLb1+ORs=;
 b=qAJxLe5pa8fMqB3+T+ONyUOfNQCe1aPPZBoe7w6jLHvvBNaN2SoX7C/lAujuofN6/hQZbqfetl0WNEkfJVQDVzneiQQyqwmTQodrk2Wy/WRBkkuICNRrn71iodG6YLxjsXOr8gp1JWnLRFpey7AsqDwqJujEF0EDe5CMLgFg1hkwmwTEW1koL1vdF8r1NHyIMYqXJ7B4RMIxzAvc4YbnUbM8w+ady4q+25DkIQnIIEEkCSv/aMCQ8KfKMAOQkwGN/XRa1BXfFyO4gW1D+lP5BxDTzEztQ354aP7lTg2peQ5i71BZeX69mdWoLY23AGrnjLXG+P7ryzSN30dVLGIjvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB6080.namprd11.prod.outlook.com (2603:10b6:8:84::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.9; Fri, 12 Dec 2025 17:18:24 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.013; Fri, 12 Dec 2025
 17:18:24 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v1] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHca2ltvM2RMLA0kU2uwRdYrXPPkrUeA0LggAAt5YCAAA3FAA==
Date: Fri, 12 Dec 2025 17:18:24 +0000
Message-ID: <IA3PR11MB89866D179FC6457D37E41020E5AEA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251212131454.124116-1-vivek.behera@siemens.com>
 <IA3PR11MB8986039C808FEF65791C01B3E5AEA@IA3PR11MB8986.namprd11.prod.outlook.com>
 <AS1PR10MB539220210B2B5255BBE6429C8FAEA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB539220210B2B5255BBE6429C8FAEA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=2d3c64a2-6a57-41a5-adb5-1aabc174264b;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-12T15:34:45Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB6080:EE_
x-ms-office365-filtering-correlation-id: 99d785cd-0453-4a97-4986-08de39a27514
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?sX+nO9swoeE1YpIUitIVBIwhQIq0FzxGOKYdSMOpcDVrEFRUe8XN3ihSEZc8?=
 =?us-ascii?Q?IfhAnj1O8nnN1ow8NOC3I9mXQTZFx6IRLyRzJQOc2mhnNiDSmGLH+CRjDxRB?=
 =?us-ascii?Q?c3zt69kZ69KTIJWdQmPzNghNigBWL+XjNjhos+xqXMUZMVEbfG00BQmkjNG1?=
 =?us-ascii?Q?0WVtrVsBRIHX6HwDcGTD49DPco/aUD25zXI6wHiwf2A+XSao4AAhwAciU1JJ?=
 =?us-ascii?Q?V6ajMWplE59DDyyZpeopvJbkyKg70ZwYmpuVjqrGJPW7tpH/P1vok/ezkyY2?=
 =?us-ascii?Q?2yIfF2I/ohw/BpTGx3Jz3OmXm4JXSfe2YNFVxjgUwPp3Dc0Zvk8VKAJYANpS?=
 =?us-ascii?Q?MjPE/uvGM0j0E8gX01e4J581KckBU0guxtQPsE7wpq8HZQTYPVKEVNMyE3gE?=
 =?us-ascii?Q?vYf5BdgjS+ZghOl4JnXb3tnvVdS5Zta00w2H9rdZrmr1kVYuThxebWAZ3fHY?=
 =?us-ascii?Q?tC8ZsfmawftScdy286zi09ilK/oWQx1WL7TizgTLiqABIv0XATWsJ1OYMI42?=
 =?us-ascii?Q?mxKuEqEQn5+0QEDG+TZD7pUXR+ssaJY97W7l+dPJ1fPRZEi92vS8mBEw1tXi?=
 =?us-ascii?Q?uuNdzSuV9d2DfVkuLJb9ul41Bz+zemkjIt8QUMjDv939Eqnpc55Vqu/tAtDx?=
 =?us-ascii?Q?KX5l0AZzdHrHtFXCnOozJa1/v839ZvWPkXcGuqkWsVOEftuhYprVZHPBVS+6?=
 =?us-ascii?Q?gi3BjR16xLXZJyrolRzpa+wGGqNxSh314Es7WFGoY95cZ3246u+C2BGBpANb?=
 =?us-ascii?Q?S0o+GuPA9ESDmQKK2CUSm0PVQnmUL+jZysmPNiQel0Ulmm6SsUzIfErM9VXC?=
 =?us-ascii?Q?1hBsShijNhjr1QLevcpWEuApHDPuJAb2iUeAOGhCIwdPt2KhNU+ch+wMUcha?=
 =?us-ascii?Q?fmTVRVj+Nj+xzwGEfEc/B6GfZHUI97XPedrx8be2NIUTRq2OvkbURY0V9V+E?=
 =?us-ascii?Q?0dOqMe4zC8tp8fRvYkMu5n7Zl4+y9F6oG1PWClmaaCm1hkP6qZVAI7H/SNFT?=
 =?us-ascii?Q?Juo5BlJZykUGJawqjZW+r4PgcpVjNh9EVaOqlM7GqK5ivHToWfOIjGuS3uYD?=
 =?us-ascii?Q?UULDkA/gcgle1iRg4zxKtX2D8pFhRRXKRc2Rti3cP9OCmTJY5aW1s242g1Fw?=
 =?us-ascii?Q?b+vJV8eDRzQjKGXO/R7toc1rBfMpJiFIBaDUWagbJdwRAJSLqQW+6fzV5keL?=
 =?us-ascii?Q?F1TJb2QcZAUY9/49/7HEJY6dn4FwVZYhZNGepsmEHw2Og3JHTg9F7EOShn5A?=
 =?us-ascii?Q?bpt0HJyn8f4wJl7xFy4O5GgeIa/eBRjW29x60X43+Vg8KtBYftZDTZ+DS7OC?=
 =?us-ascii?Q?IePwFSS30tWfXQHZZHbISniSoJJAF1HT2f4e1AuULVuzRhHeaEKznUFrCw7Y?=
 =?us-ascii?Q?tOLe43wIulglCTi8ukHRoFLPf/K/PS5qRD8YOuxZbP0HSrq65Dzeq8AsFif8?=
 =?us-ascii?Q?szLC6Ytb45cJiCfdf7fYErRI7IUnOJ69jc8YqsQQu05Lk36gBpi4x9GaNzkG?=
 =?us-ascii?Q?CINzbrwpShiZuui/gz3F2xbLnd5qLNinxqwIZlKrgjBairgji4+j17LtIg?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2GstSUjxkvCN/0di9ZEgKsrhmOF4LJ2PKYIP2PceKiYrylxVGXOcIvpWIaSQ?=
 =?us-ascii?Q?gD4x91f+roRjqbWApYe7G60papMtVozAIrp6C0GvNHdsPQNvQ7lHMxfC7kfU?=
 =?us-ascii?Q?4TCQHtv7fQLtL9xKoeu59jTaUbBv5hY91VZ5GirQ15KlfyC6TUvfvTToHI/I?=
 =?us-ascii?Q?JlnIis5g5D84DjEETFy/behr5TLqIaLN96HoVwijo8GHfgb09Oza7A/dy6xC?=
 =?us-ascii?Q?hh111PLGyE2ut1WpdUdK6XRh+sgYH7tYGJhFgYE3UJJNcalZ6Q6aWBuPx1Zg?=
 =?us-ascii?Q?ZJbAzEv8Y5U8YE5y4e+gzC1mupA+pJaTA1xLYcMu0j3PDNYFl8d59AaGuYKA?=
 =?us-ascii?Q?nXU85hvbu/MTPvqdt3sf3WQ5r7MN8+msc06+/2XA31tdwDkUPGgOLhMLJ5L9?=
 =?us-ascii?Q?huOPj3aUVYBf7Ze7RnFiIJxEkDP+Mtxarvyt0nuY+bVKFLDLTzIRjb7ngpZi?=
 =?us-ascii?Q?s4xtv50zThnIBfrzjxMkDaVk8BewQzkUFhg4uPdrRTjdr2p+rv89rHG2b/HQ?=
 =?us-ascii?Q?u0pehbr6dnrMrmourQ8QYBzl/jee1h9LAC7z37OxjL5spYv4RNN9AikcTrGa?=
 =?us-ascii?Q?/uQs6aLKJG/3K0Nph0tu8VQFp6K0ICDd1ckDK4h9fHVk3CPM8FAIWrVzwHzY?=
 =?us-ascii?Q?R+Ox+6RYHBmqmbWBMpDMOoispdKRotAONShZOyTCusmuCMlWtQWbhpaIfbGf?=
 =?us-ascii?Q?I6Fe98DsUFko0vGYbQ0APN55WmDE5/0A6Pik33LjxyyQNTBB31aNUw2FIbl2?=
 =?us-ascii?Q?f4DA9Gkuycb7U+cVvYsD6y75FRvJ2lQgIHnra2GpEOqXjB2NjxuY3IVI5Fp2?=
 =?us-ascii?Q?e++/FmWslxY9qdlSfk3lBWb1BGX/diMMxRcvQLfmeA1hiUlpqfyuCY2kW7oA?=
 =?us-ascii?Q?Okfo5VGURqJeUScKvy4cqP4vEm4fiOHHq8Qjh83P0whU2KeKeXc12yeo+kRv?=
 =?us-ascii?Q?+oEier1woJKY48PGrw5hoN34KILyzH3/Aqs5twqeqt5B+aGeGeDSIlpnhV4h?=
 =?us-ascii?Q?tdFjLRzFAr70WxRXBIlzUUgGnO56u9nfoPGzy21aO7AijOi+tm5CM6ub9sJQ?=
 =?us-ascii?Q?qlbT2VFMJ7FjaxzkKTO6KOEAEiA3f8KwpgOIBOpOGNg9ZjHT5TIVU9CijXRr?=
 =?us-ascii?Q?sVARDw2THubPZ3GVFkhTZCD0jyA3OJA8cYRiMOcvrKFG5JklJmn60+E7VG33?=
 =?us-ascii?Q?X60xcbjGWl4CNocN1L/XYZaClgaQPudQgOcIRxZuFyiGsGpNairUuiWGySN6?=
 =?us-ascii?Q?oE6ozMWly43RyiI7StoQ3r7PF8elYY4y0yqfuyqiCliQ0EIPW1BxmvchnfVJ?=
 =?us-ascii?Q?ADakkyRINsJCpfLkhGeccuFIG896UINrjK/4+Bm4SLqhnKAleC3L2MDptohP?=
 =?us-ascii?Q?HOVRlJCLPRQbbFo3bTN15YJJWu54uMZa2lVfWs2zlfWW0zvreM+k2606cHi9?=
 =?us-ascii?Q?jPKHjRADs0wgK65Nd+gCPCGh7BJwxAxGncmYMH5d/vs/a6Uv8YUqbg/Rqkig?=
 =?us-ascii?Q?K5So6PCdMQjKZpw5DgflqT5FkHcSKNrCyC2cnA2hXbcmrR+Y58LUg1nvIfQA?=
 =?us-ascii?Q?yxPBBBuECFSyNOLS8tUpS1ohll/wlYcIQN8tXLNWdqZ0LS2ZbBBce48XHVD/?=
 =?us-ascii?Q?6w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99d785cd-0453-4a97-4986-08de39a27514
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 17:18:24.4712 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4mDpURC0MVN+ObdxiEhdXq/weOrQsFB3Kmr5vR5ZHtiADOY1lAu0Dqu2elj5GmAC7+fcyW079VWjBkKvQD0S55rUfQHT8jVe2w+noLyFwvs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6080
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765559911; x=1797095911;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pzkmpg3Wr4JtvzuhVvkCYKpIuAA7aDNWdc0xnbqaba0=;
 b=KAvExQh9794IAyiAxVamlnvDpHvPB1lR0Ssi6PUHbBRdEt/7H0/t6uFo
 CnVqSJWYDQvlS8ZD6IG1kXsqJIuwwykA/TgwlWmGWXOPtqKsWDKws+dN/
 uv9HIOqlaf8M6LgHypmBNYnZgWxYfIunfDNcz+z41U+L6PfBbKWYuL/Uc
 WLn/kLw4Nlo10UET13pKfVNYlQkwSsVcrgQcfWdjHgEmM7YChApQlp79/
 rDbYri9N+uK/60aIBSsCfe7oz5hBQ3ea4woHZk7g5HevEqkDF8lRJ5g8J
 7Ztsq5k8Gt5LCABBfoMExEdGlJRAWnnWWvHTq2WSi/yzWoDhaxbQ20k0N
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KAvExQh9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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



> -----Original Message-----
> From: Behera, VIVEK <vivek.behera@siemens.com>
> Sent: Friday, December 12, 2025 5:26 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: RE: [PATCH iwl-net v1] igb: Fix trigger of incorrect irq in
> igb_xsk_wakeup
>=20
>=20
>=20
> > -----Original Message-----
> > From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> > Sent: Friday, December 12, 2025 2:56 PM
> > To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>;
> > Keller, Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> > kurt@linutronix.de
> > Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek (DI FA DSP ICC
> > PRC1) <vivek.behera@siemens.com>
> > Subject: RE: [PATCH iwl-net v1] igb: Fix trigger of incorrect irq in
> > igb_xsk_wakeup
> >
> >
> >
> > > -----Original Message-----
> > > From: Vivek Behera <vivek.behera@siemens.com>
> > > Sent: Friday, December 12, 2025 2:15 PM
> > > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> > > Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> > > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > > <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> > > <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> > > kurt@linutronix.de
> > > Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek
> > > <vivek.behera@siemens.com>
> > > Subject: [PATCH iwl-net v1] igb: Fix trigger of incorrect irq in
> > > igb_xsk_wakeup
> > >
> > > The current implementation in the igb_xsk_wakeup expects the Rx
> and
> > > Tx queues to share the same irq. This would lead to triggering of
> > > incorrect irq in split irq configuration.
> > > This patch addresses this issue which could impact environments
> with
> > > 2 active cpu cores or when the number of queues is reduced to 2 or
> > > less
> > >
> > > cat /proc/interrupts | grep eno2
> > >  167:          0          0          0          0 IR-PCI-MSIX-
> > > 0000:08:00.0    0-edge      eno2
> > >  168:          0          0          0          0 IR-PCI-MSIX-
> > > 0000:08:00.0    1-edge      eno2-rx-0
> > >  169:          0          0          0          0 IR-PCI-MSIX-
> > > 0000:08:00.0    2-edge      eno2-rx-1
> > >  170:          0          0          0          0 IR-PCI-MSIX-
> > > 0000:08:00.0    3-edge      eno2-tx-0
> > >  171:          0          0          0          0 IR-PCI-MSIX-
> > > 0000:08:00.0    4-edge      eno2-tx-1
> > >
> > > Furthermore it uses the flags input argument to trigger either rx,
> > > tx or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> > > documentation
> > >
> > > Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and
> > > helpers")
> > > Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> > > ---
> > >  drivers/net/ethernet/intel/igb/igb_xsk.c | 77
> > > ++++++++++++++++++++++-
> > > -
> > >  1 file changed, 71 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > index 30ce5fbb5b77..9f23e6740640 100644
> > > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > @@ -529,7 +529,9 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> > > qid, u32 flags)
> > >  	struct igb_adapter *adapter =3D netdev_priv(dev);
> > >  	struct e1000_hw *hw =3D &adapter->hw;
> > >  	struct igb_ring *ring;
> > > +	struct igb_q_vector *q_vector;
> > >  	u32 eics =3D 0;
> > > +	bool trigger_irq_no_msix =3D false;
> > >
> > >  	if (test_bit(__IGB_DOWN, &adapter->state))
> > >  		return -ENETDOWN;
> > > @@ -537,13 +539,76 @@ int igb_xsk_wakeup(struct net_device *dev,
> u32
> > > qid, u32 flags)
> > >  	if (!igb_xdp_is_enabled(adapter))
> > >  		return -EINVAL;
> > >
> > > -	if (qid >=3D adapter->num_tx_queues)
> > > -		return -EINVAL;
> > > -
> > > -	ring =3D adapter->tx_ring[qid];
> > > +	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> > > +		/* If both TX and RX need to be woken up */
> > > +		/* check if queue pairs are active. */
> > > +		if ((adapter->flags & IGB_FLAG_QUEUE_PAIRS)) {
> > Extra parentheses in if().
> Noted. Will remove in the next version
> >
> > > +			/* Extract ring params from Rx. */
> > > +			if (qid >=3D adapter->num_rx_queues)
> > > +				return -EINVAL;
> > > +			ring =3D adapter->rx_ring[qid];
> > > +		} else {
> > > +			/* Two irqs for Rx AND Tx need to be triggered */
> > > +			if (qid >=3D adapter->num_rx_queues)
> > > +				return -EINVAL;
> > > +
> > > +			if (qid >=3D adapter->num_tx_queues)
> > > +				return -EINVAL;
> > > +
> > > +			/* IRQ trigger preparation for Rx */
> > > +			ring =3D adapter->rx_ring[qid];
> > > +			if (!ring->xsk_pool)
> > > +				return -ENXIO;
> > > +
> > > +			q_vector =3D ring->q_vector;
> > > +			if (!napi_if_scheduled_mark_missed(&q_vector-
> > > >napi)) {
> > > +				/* Extend the BIT mask for eics */
> > > +				if (adapter->flags & IGB_FLAG_HAS_MSIX)
> > > +					eics |=3D ring->q_vector->eims_value;
> > > +				else
> > > +					trigger_irq_no_msix =3D true;
> > > +			}
> > > +			/* IRQ trigger preparation for Tx */
> > > +			ring =3D adapter->tx_ring[qid];
> > > +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
> > > >flags))
> > > +				return -ENETDOWN;
> > > +
> > > +			if (!ring->xsk_pool)
> > > +				return -ENXIO;
> > Looks like violation of the API contract:
> > When XDP_WAKEUP_RX | XDP_WAKEUP_TX are both set, if RX can be woken
> > but TX cannot, the caller expects a clear error with no side
> effects,
> > not a half- prepared state.
> > Shouldn't we validate both RX and TX rings before preparing any
> interrupt state?
> >
> I am not sure if I understand correctly what you mean by a half-
> prepared state.
> Preparation of Tx and Rx purely includes(unless I missed something)
> validating all the necessary conditions required to wakeup both Tx and
> RX. Only after all checks are done tx and rx rings a single trigger is
> executed either over EICS or E1000_ICS right at the end.
> In my understanding the ndo_xsk_wakeup with RX and TX flags set
> expects both the xsk pools to be woken up.
> So how is it a violation of the API contract if we exit immediately on
> error during our checks?
>  Any failing check eliminates the success criteria defined by the API

Good day, Vivek

Thanks for the clarification. Let me explain the side effect concern more c=
learly:

> Do you mean that the error should only be returned after doing all the=20
> checks instead of exiting the function with the corresponding error=20
> immediately when a check fails?

Yes, exactly. The issue is that napi_if_scheduled_mark_missed() is not just=
=20
a "check" - it has side effects. When NAPI is already scheduled, calling=20
this function marks the queue as "missed," which modifies the NAPI=20
subsystem's state. If we then fail the TX validation and return an error,=20
we've left the RX NAPI in a modified state without completing the operation=
.

The sequence should be:
1. Validate both RX and TX rings (xsk_pool existence, disabled flags, etc.)
2. Only if BOTH validations pass, call napi_if_scheduled_mark_missed() and=
=20
   prepare interrupt state
3. Trigger interrupts

This ensures atomicity - either the entire operation succeeds, or no state=
=20
is modified.

> >
> > > +
> > > +			/* Retrieve the q_vector saved in the ring */
> > > +			q_vector =3D ring->q_vector;
> > > +			if (!napi_if_scheduled_mark_missed(&q_vector-
> > > >napi)) {
> > > +				/* Extend the BIT mask for eics */
> > > +				if (adapter->flags & IGB_FLAG_HAS_MSIX)
> > > +					eics |=3D ring->q_vector->eims_value;
> > > +				else
> > > +					trigger_irq_no_msix =3D true;
> > > +			}
> > > +			/* Now we trigger the split irqs for Rx and Tx
> > > over eics */
> > > +			if (eics)
> > > +				wr32(E1000_EICS, eics);
> > > +			else if (trigger_irq_no_msix)
> > > +				wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > Shouldn't we use a combined interrupt bit or set both RX and TX bits
> here?
> > 	wr32(E1000_ICS, E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> I think the bits for both RX and TX should only be used if there isn't
> a combined interrupt bit that can trigger both RX and TX.
> I am not sure what is the correct setting for this use case. What do
> you think?

You're correct that we need both RX and TX bits when both wakeups are reque=
sted.
E1000_ICS_RXDMT0 alone only triggers RX processing. Using:

    wr32(E1000_ICS, E1000_ICS_RXDMT0 | E1000_ICS_TXDW);

will trigger both RX and TX interrupt processing in legacy interrupt mode,=
=20
which is what the flags parameter requires.

Thanks,
Aleksandr

> > >
> > > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > -		return -ENETDOWN;
> > > +			return 0;
> > > +		}
> > > +	} else if (flags & XDP_WAKEUP_TX) {
> > > +		if (qid >=3D adapter->num_tx_queues)
> > > +			return -EINVAL;
> > > +		/* Get the ring params from Tx */
> > > +		ring =3D adapter->tx_ring[qid];
> > > +		if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > +			return -ENETDOWN;
> > > +	} else if (flags & XDP_WAKEUP_RX) {
> > > +		if (qid >=3D adapter->num_rx_queues)
> > > +			return -EINVAL;
> > > +		/* Get the ring params from Rx */
> > > +		ring =3D adapter->rx_ring[qid];
> > > +	} else {
> > > +		/* Invalid Flags */
> > > +		return -EINVAL;
> > > +	}
> > >
> > >  	if (!READ_ONCE(ring->xsk_pool))
> > >  		return -EINVAL;
> > > --
> > > 2.34.1

