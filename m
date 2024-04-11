Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 101198A1424
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Apr 2024 14:14:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D24F941E5A;
	Thu, 11 Apr 2024 12:14:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZyghDoCm5S-D; Thu, 11 Apr 2024 12:14:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1FB141E18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712837677;
	bh=2s+VwZZlpSnrNMGYQHOBQv47bdo20XAucjIWHQLJlFg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2O6xYVAlFk9k3jdAGlEh0Hsm/72/OnPW4+isI+HWiyX+fAJEpe5DE9ur7EZKFwFEv
	 snd1MOUPBqQZkAgPbjJuXyatcEdKHJOKcpRiarXrRHI0vKwliTl4S13K3uWoFESlJ/
	 A/litJlwLLYJKpYZsBp3pqspQO3QJrI/Cr7Oz9JdRgPDFyB+mrodxHAQoZutCkqs6U
	 H7yN/o/7eFkfAZc8CLHryLUKqVoaB/PI/hM3zGqTJh4PQ10ZJEsnVauC35dOmrYstj
	 nPP4qAQ/Y+IERPzwDDGW24fmsE8moJslgLz4yD/+r0bceH7DoOLmI/8saoTbUsYdsj
	 CG6GNYax+NXPQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1FB141E18;
	Thu, 11 Apr 2024 12:14:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 46AB11BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:14:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3187660862
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:14:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pXVRziyqa88n for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Apr 2024 12:14:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 934C660749
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 934C660749
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 934C660749
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:14:33 +0000 (UTC)
X-CSE-ConnectionGUID: LhmsE9SAQkCXig70r29rFQ==
X-CSE-MsgGUID: 5GrJulKWRy+unrFzphST/g==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8417351"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; 
   d="scan'208";a="8417351"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 05:14:31 -0700
X-CSE-ConnectionGUID: uB+h0aDrTBu7FQvGrrXpmw==
X-CSE-MsgGUID: Ws4dfTqxSrmqmd3Z5vnB/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="20887114"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 05:14:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 05:14:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 05:14:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 05:14:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KR1WLSaDahG6NSU0NZqERVN4O7EZhoGjGPdh2/RUbB3Sc2lJxGNv5v5aLxA6nnXmEbuvAg+Qw9UzwwIUd7foakciTbRMQ7PJv0qy8bHng2iAcl3RWEeG/LNQ7EA7ZvnK0ls9VtWnT4k3BDA1qIEhGndUn9nLGWdPo1T1a6EGbymCSsh1lgXx39Q08u+imsrWpXW8T92Vgiwd2ZzOY0zyv4hrTtcBICGiBXIHXlcojoV8wIrOToclUeRsDgF9Uo9rkpPDBpZuklMWsljXZxwVCplvn67DmN/i4AR6LTjK8O8uCoVGHQjMT1922oWSkSitjJHLPqUdFsw2rd+BJtLSWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2s+VwZZlpSnrNMGYQHOBQv47bdo20XAucjIWHQLJlFg=;
 b=H58wQkV/fxwTJKE03M2Wawkd+jdHuSJ83bBUwAcvjVXZNcwXXfBDcDtEOzjfVSwHFlDpq05ssbLjavvBX9H68yft8W/cOP2d7lhKzCkaBw0VovynAcflg4X17iUXOBR5f0u4qqG99mJviMaxpV5DT8deMHlywEKpuAiio/70CRLabz0pLjDBghMOBrJYSjJgUF9BY8kbDv75JYIl1Zjr/2jrEaQ5FxrJheAkZavaoixUH9I7/UmhLL0nJQdNUIITtW2elCqjvZAOSP6RwKNrDKy5HVxyrkgl/jp3ZbeT1og1QmGYgV0yiidHI1UaLU+7DUFzoLghqWQTV3nRHgR9aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Thu, 11 Apr
 2024 12:14:28 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7452.019; Thu, 11 Apr 2024
 12:14:28 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 2/6] ice: Support 5 layer
 topology
Thread-Index: AQHahZx9szdQwayyU0iaY2q79LXG5LFjAnpw
Date: Thu, 11 Apr 2024 12:14:28 +0000
Message-ID: <CYYPR11MB84292318DF94D72A20F63362BD052@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240403074112.7758-1-mateusz.polchlopek@intel.com>
 <20240403074112.7758-3-mateusz.polchlopek@intel.com>
In-Reply-To: <20240403074112.7758-3-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM6PR11MB4657:EE_
x-ms-office365-filtering-correlation-id: ce034c80-9ab9-46ff-eda2-08dc5a20ef51
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nxvbbmmGM/mKJBLtjm6gp9+c1UCvazADi58C/DRPuL6AdwhgxoVs4CEQOAmjBrf0Rfp0kP8/x+G4tV4F0P7XJGoOzSGG7TOgky/60B2R/J3Pa2wK+KsQsS5nF9SJfysZDnEw6JDK3fvst/BcdoCXv60xSYvc4qwl/UllvfsLjzlKHkajHXE4LXmO41sGfQveNIpA68gEpB84edmyFhnEKVRASRXDsV9ngwGhSs0S4MtEGfInjw5EoD3iyneXoz3aIXqdDuZ315vLEdNuTHadwBbDeMBObZ+4MJ+CZ0VmzcpmV3HOge0viciChxVIsmrM3cCe3twL6lpVx2U4exfs9dMQBAqxbFsXgdVnRgbxKyusfyGvxp8ptS53bty7H2BdZi3o+45o1d56Jo13ry4z0kyyG51gJiln73XE7ESSEnEghoWaWQdBaVECbamsUFZc0Ccevx8+9HRYBoDv3xQP4R2GSxqUPbPpA+GTFOXLgTmNU42m9vyS2eLa4xeMHzlGTyUZ4jStqRoBlcbsCjDvIKD/B2gmdCkG/+VNJJhZ82g3QCq3509WuqqvuOakvEQf9nTCYpO8tV/6nR+lDHyOAVmf2QgeTKpz1J6QFMdhRlpAogThBSggMC2tJOWNc6WIASR0g6soE/DNoK5/vvXgJimzuhfyJvMCgGItCWUuxKsAUBGGKnEeGAW7Xjpl7GFrFnGwkW0X803lhSKwia06BabIZeQU4nDKbnU9VfMtNng=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VEUC0aajmXWPYcPXt19TITLuvYiVBgDPZC53nZ6hKtZrV29scwUwbCco3/sQ?=
 =?us-ascii?Q?47/eHBoVOSfiqn0f7RHTDhSjnKHSy1zOLNxQQBTUcZvsrpbqFj8npnK1W/ob?=
 =?us-ascii?Q?s722jA2ntOCem1oX2i5Pa8OPkBrDMZVQgTl8hAEJwVudg5cYBZX4rxVV1SAq?=
 =?us-ascii?Q?x5Q/xfJfOJSXoi7ExW18znfBn9GbZna/aq0eyV+Hf2gJbRXYths3ZHWAhTEN?=
 =?us-ascii?Q?HWaPPtwfjQEOJ129m6OUXDszC+l/oBUz4G+7fbvLn8i/mTb31I7gnnovjFvo?=
 =?us-ascii?Q?b0++5BeJzWsbMjznIDOizbtVZTKMFZ/IKsX55BhadIOpBVaGoTmHDMsO3fef?=
 =?us-ascii?Q?+01nWWLreuyXOD2XeqDAxYht7+om663CRCMuvmR0Gmm+UQv5rIjGs0+duv8Q?=
 =?us-ascii?Q?Z/MZTNceAgefSRjzM/tnD+Yx/q2mk6BwxZa900LPc3XGKWSx/Abz7RwT035q?=
 =?us-ascii?Q?Uu6JzzJfWB8aYOroTE1jMP/ie/aULuW1MYeTBdJEAuhwWO2dtotomqNrmoO+?=
 =?us-ascii?Q?N85/KYrftBUmEx+sQolU+8jBGZccSgBwdbjsG63dIvk1YlR+/ijcRB9n8Bxk?=
 =?us-ascii?Q?b0Nxb43nWWoajHgqhOomZU6kLnP3vc1TUme64HrQCl1qlRvy7s3XpJCS0cJN?=
 =?us-ascii?Q?oEgRZQlmk8QAqpdWRskMshY38nBn1JJnlwQMmE/3wSNERTC02Kjt/dRUbtN9?=
 =?us-ascii?Q?1613dorcTUOaBpQbMn5+utbFgdJKqiuhnmcdmWqHV8x9k2ZU3RAR+8DsNX/y?=
 =?us-ascii?Q?67pfhQZmj8m2HV/37pzJgqBVoy6jbMulwc7wpLg3dnyhHcvpko2Y5OY3VCMr?=
 =?us-ascii?Q?pTEq+SbZlaM3dCL4pmAuvQy1ObxFLuCZ5CEzynUyi63V6dfzk4WDNTLT7A12?=
 =?us-ascii?Q?d2CrwNJ1V8PNnjV9SLJ5SGyS7vS0UD8lbqUZBfRe6Rd7+e17NyHkW0osPH5Q?=
 =?us-ascii?Q?bPNBmY+45tdiV6Zc+gpXsHWdJ18puqXgMasFRQ3riJFNaO/w8mEZdHDuXR1w?=
 =?us-ascii?Q?VzlbIi62XFQMgowLgJGsrNnLHj352GArcZxHY2VqG1inT8nb5GL+pJg37hhD?=
 =?us-ascii?Q?pVIdYTTDM8UeKT3KEpEfXqbU54qtx2JddJaPO/6f+zgC8ZyfGQt+GWR6LXmj?=
 =?us-ascii?Q?IfS/9bHRb9b3byj5KNXVntuWlXlLvdhflaLNabsqqaYETaSf7UqqFcWDVdzl?=
 =?us-ascii?Q?0CbSAOmCDWDIGMkFKzlQLUgYjrL2PclOsu+F1RnZnKouYwqTDPFz0xFwdAK4?=
 =?us-ascii?Q?4/KBmjny72wYsYAJSG4i43Mo/rVfk2Y36LyRNIUnSbMyevAJZBu3qpgXdl0l?=
 =?us-ascii?Q?LfsfNMxuZaUhI6bj/0g7AbYdd22kVckJ+TGvdXtWQOd7tAkuh04DAyJwq6S0?=
 =?us-ascii?Q?pSpYV8oIfq878bXw1g3qsiEQFcEo8ZW9OU3cTUs1FjSlZF7dFsta1oQrVW+r?=
 =?us-ascii?Q?sEf3iuCbcqENVYU4wwB8fFr5xEIMhUb0ZbJVbTsskb9bCfLcAsA+4JLakLO8?=
 =?us-ascii?Q?r9oxmAUtybmm2wzHHxD6DZE+pVAsZ48+khKr+67gCJVYAlYs0li8qX1NwAWA?=
 =?us-ascii?Q?g0+KZ4y9xzWTx7PWuLwrgDH+PPD1Q/i1cLfGycOAQ4Ty8CnAJvWO8n5IZSOW?=
 =?us-ascii?Q?gQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce034c80-9ab9-46ff-eda2-08dc5a20ef51
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2024 12:14:28.0154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HfwHMChSufEeXzA1lXKH0G76SdDoJb/b1XFiqHnerjBEvnA93xJ/0eb1nlIi30VCoC8YyX6ZAxtuoLycuhyi99mkfWncb9Z9Nq/RWnnHDgSRJtCa7jZqmOr3195dGqGe
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4657
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712837673; x=1744373673;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BcttCZB49k5QbwKBVmG8cLMB/Hr7aTdznpOmbbN3Hfo=;
 b=VPxdmbF9CGGx9rcAKuUkPy5xRve5fYXL/j7yodPeWscDQewfZZcajly+
 7S+iwUQRMX1S6/CKzPsPyuMTPNTQexBmD984awy+JZAD9MCQ+RCYXZ3PC
 56tK4wD0Fg0g6jl9d7CQ4mlw7lECJoFsTM+N9aLkG5oLpW57werooxzek
 r7Kp0bJ9AW1nnfmCxg+tiyqkccR1Kqt/2Q6/RwWSfIseZaQ8/caJ8KGr0
 Y2k+devrBGsCPj9qoMZ/S+Hwe9KlArbISfEmypeC5d8/EmeVjMcmb06DC
 1aUsWFqz8XZ4nv/FEtVdOMRbhMNKA9md9SKSNPEu1MHjjK0wOWeOSwQpg
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VPxdmbF9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 2/6] ice: Support 5 layer
 topology
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Raj, 
 Victor" <victor.raj@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ateusz Polchlopek
> Sent: Wednesday, April 3, 2024 1:11 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: andrew@lunn.ch; jiri@resnulli.us; Wilczynski, Michal <michal.wilczyns=
ki@intel.com>; Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@v=
ger.kernel.org; Czapnik, Lukasz <lukasz.czapnik@intel.com>; Raj, Victor <vi=
ctor.raj@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; horms@=
kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; kuba@kernel=
.org
> Subject: [Intel-wired-lan] [PATCH net-next v9 2/6] ice: Support 5 layer t=
opology
>
> From: Raj Victor <victor.raj@intel.com>
>
> There is a performance issue when the number of VSIs are not multiple of =
8. This is caused due to the max children limitation per node(8) in
> 9 layer topology. The BW credits are shared evenly among the children by =
default. Assume one node has 8 children and the other has 1.
> The parent of these nodes share the BW credit equally among them.
> Apparently this causes a problem for the first node which has 8 children.
> The 9th VM get more BW credits than the first 8 VMs.
>
> Example:
>=20
> 1) With 8 VM's:
> for x in 0 1 2 3 4 5 6 7;
> do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
>
> tx_queue_0_packets: 23283027
> tx_queue_1_packets: 23292289
> tx_queue_2_packets: 23276136
> tx_queue_3_packets: 23279828
> tx_queue_4_packets: 23279828
> tx_queue_5_packets: 23279333
> tx_queue_6_packets: 23277745
> tx_queue_7_packets: 23279950
> tx_queue_8_packets: 0
>
> 2) With 9 VM's:
> for x in 0 1 2 3 4 5 6 7 8;
> do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
>
> tx_queue_0_packets: 24163396
> tx_queue_1_packets: 24164623
> tx_queue_2_packets: 24163188
> tx_queue_3_packets: 24163701
> tx_queue_4_packets: 24163683
> tx_queue_5_packets: 24164668
> tx_queue_6_packets: 23327200
> tx_queue_7_packets: 24163853
> tx_queue_8_packets: 91101417
>
> So on average queue 8 statistics show that 3.7 times more packets were se=
nd there than to the other queues.
>
> The FW starting with version 3.20, has increased the max number of childr=
en per node by reducing the number of layers from 9 to 5. Reflect this on d=
river side.
>
> Signed-off-by: Raj Victor <victor.raj@intel.com>
> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  23 ++
>  drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
>  drivers/net/ethernet/intel/ice/ice_ddp.c      | 205 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ddp.h      |   2 +
>  drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  6 files changed, 239 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

