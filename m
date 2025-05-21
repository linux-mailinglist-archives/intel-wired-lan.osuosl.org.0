Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6122FABEC53
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 08:47:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD62540DCC;
	Wed, 21 May 2025 06:47:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bhzGdHuarBG2; Wed, 21 May 2025 06:47:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F7D840D44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747810075;
	bh=Tpci4GUvPjp8lYQsuHDCNN/DL1rl0cov3iAVp7j63nI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oQeuzViqqLBUWMkoGTUVLmm3QyYwLf1mwQWLh9n0tb98czuZncQWWlpKtgCJv4kXb
	 xvQQFu9dqcVURrXTRVw+ywXDBR8UKo5mC7qCUU/ZgrhLuCrDlEoA/Ga3/TZLEeWHlA
	 Fa4uMYbkxKvMW2cZScHO2BSl2hEQ8sG39NJBeO/jx5YiQ+Fz5bCc8pqjr1xTTt7OI8
	 mag0QiMSjQ8AbMdRqsMjuYvnMXpF4CnclNjoUkd6dQUthcgeS0UktN5jRwqtyX5epr
	 dATFVvmVPIX+9CnmeS8nkEkIrP7yXJKSzE5frD2IkDYIieTa/0DhL5ZRAkK2yOdqVc
	 JXZd7Iq+TetyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F7D840D44;
	Wed, 21 May 2025 06:47:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id ACFCF1BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 06:47:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A9F7F81F2E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 06:47:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sx29sY6vx4VZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 06:47:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F21B980C9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F21B980C9D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F21B980C9D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 06:47:51 +0000 (UTC)
X-CSE-ConnectionGUID: 5QJNgIibSWebnPNSQjt7mA==
X-CSE-MsgGUID: ysYPxVH5TluLF4iWlhDmKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="49908149"
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="49908149"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 23:47:51 -0700
X-CSE-ConnectionGUID: Oh1EMoHpQ4ekHezZjr/Cug==
X-CSE-MsgGUID: mjacQKlYRAGBkIxkCs9Kpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="139777961"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 23:47:52 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 23:47:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 23:47:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 23:47:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OOHOlUz1Ti4qLYO3H166aiLLDd1tVhsXSLWjqD4LucuyGyrGlrRwimtZgHqz1WW91NtL5Z7QrfkQ9/yjNrQ7c4GqDyO9BmD+/BMxrneRaArPvETNVLOdU+IM7DCOGZb9T4GeNG2luepZGN+6o+G/XvNr+1eIu07zGHaxcvaF53DfKfFT7C+/Tf/fvKkgjfb2Vq95LssVCFYyClczNkZG37LxtwExvilseRkt4yymjSO0r5DAHsgNrWP9QePNLJIbbLgii51k9xVvNENfLscaDG92v/5iP5NCBMp1+lPTf78LBLSDWLyfimqtWk3sEMbG4uL6MjDjy5QiL1S68orCpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tpci4GUvPjp8lYQsuHDCNN/DL1rl0cov3iAVp7j63nI=;
 b=MZnVdaKkiiSdp21Y7t0GEPPjNY5/8RzxzTE0FgBiaVglmMkeJViEdN/AsSG/yMBvHE5KUcRggDs5qm2sUiBIHTKM+YUcjiSeBGKNVlPtp6uZ2kbbUbRdJnmJZh4V/Zq0LdCQd4aNgt2yL8ShzpSiZFHuLFniyFiByDXVP7X3KAyxz1w1J2PXL+k4oxPThSJ2DriHy3P8w89Fc1eUECS7cETFo8IszqmzYWJ/NQDLBdp0oqPJNFaxgx4De3lzxsy3qKoFvbeqMB0xeYGiYBpXpNkDyPmfb35Yy2/dbRJjlaiC2ftBGQakCOcRujygYpEUCOoBozSQ6UCf5jW5lrXZxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM6PR11MB4529.namprd11.prod.outlook.com (2603:10b6:5:2ae::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Wed, 21 May
 2025 06:47:29 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Wed, 21 May 2025
 06:47:29 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-next v3 3/8] i40e: use libie adminq
 descriptors
Thread-Index: AQHbtfiyijBIN/0YNUWjCDpZEPxyp7PcyMXQ
Date: Wed, 21 May 2025 06:47:28 +0000
Message-ID: <IA1PR11MB624174BF94E0083856AC0D698B9EA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250425060809.3966772-1-michal.swiatkowski@linux.intel.com>
 <20250425060809.3966772-4-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250425060809.3966772-4-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM6PR11MB4529:EE_
x-ms-office365-filtering-correlation-id: 99071b2d-d96f-4b1f-3f89-08dd98335ac2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?eTTvszQQkz9aUVCOQIV2DmzzE/CptHCtbsow61NM3oe8gAUox6476T/+R9cj?=
 =?us-ascii?Q?zH0uJUkAOuua0Bu/08egtdRIbJrDjk/GEEnsHYJL7xcEjDgAYy/yBPu5ZomD?=
 =?us-ascii?Q?guqGZpJOOlcgky+qf3tPPWJ0v892a8HJbFtKr+84p7FQxrZW1vRudg8EdLjn?=
 =?us-ascii?Q?NTAnDdLDbP5ylgZnLyqWoP0mV7iIqCOimdM47BnC47aq+qe3o+x5p06aWPDc?=
 =?us-ascii?Q?/Np37o2HLe+fVZR3xNFzi4ypvEshfAJYye8T7Dru4huNKy8u2AmWr0PMCt6m?=
 =?us-ascii?Q?dqjrcn5y2fm1V53TrChCvQ7SlivhjgWxnUwjPmYNhG2vYOcMJxj20bhCGDZe?=
 =?us-ascii?Q?UGr65CdJ86UmAtEfy7Is0sYyek7kEujuKrcz8cEJQ7cJUvl/J2vVYuetsvbU?=
 =?us-ascii?Q?E1dg0u7OyLp754dECfjBiINXtm6WdoGnQM3pqHpsiV2lumHEVnaspimorhga?=
 =?us-ascii?Q?qHb9wl2t2yaosgdTP1xHEQzs+u0CJerzrEZenoDzwGHj8IoWQ7r0e2AZftYE?=
 =?us-ascii?Q?VZEHzzXRI0T9ZTuhAk4I9xxAXGwEQdo+1tvCLLrwUbsrBlG8MIp4VWnk0OhC?=
 =?us-ascii?Q?SLbGCzDoL7Gcdz28W4QpnrXRy+XS8iKsjl+8xqFit53ZnnU3zKYmQTTfKTR6?=
 =?us-ascii?Q?IPPTTXQaDy7K5dTgRvdMryIhNySB+w2ilf/JHHIX+6dKXv2c03ltuRHE/QNH?=
 =?us-ascii?Q?o2tpyaj4Zy3VWSMF0W5WfuJk55+dFuRwl0cEWqS+afQAUDbauu6RlDEzgNCJ?=
 =?us-ascii?Q?IyDGqMSZUY9vQTprFi8d+7YUU9rVEk0i6DlMwBxNTtV84nHPMiujq+Zts9+W?=
 =?us-ascii?Q?At0Tw7zpmjkD+VfZulHRRs51OrxM7721MOjY/GiXFBEhlpSl3gjHwRXE6svI?=
 =?us-ascii?Q?cRIBrzqAQ6b9AcJmcfNIriOAuAk9jag34E51Zu1hu5/1iVkv2TUD+TnWYbVZ?=
 =?us-ascii?Q?8usyRSbHjaHMh1HS+rliSaPUbYtlGsiC4C5YL3iIdz/C7Db5b7AmY71BgVE5?=
 =?us-ascii?Q?B/CuWMLFnDaIIxFbopPTXtIsSfPdT1XT8L/XOKdR3boivrPV2Ov3fI0HN6K8?=
 =?us-ascii?Q?KLnBTj/icIF5F4Ovv8fbwpNG4lVtCNNbDdrJc+kyInOF/ojrg1HyYyQNVulX?=
 =?us-ascii?Q?KYoniNsOs9vYoEK+gFgGPqcYNxxTbijFDkgFlV96ytkd8EXj0+7DXXSafwkM?=
 =?us-ascii?Q?DGQOtMUqVZDgBun0VqwFmYi9hNQ17DsyUDZCUyfBh823Cgjn8zfIhLzjpd33?=
 =?us-ascii?Q?uzkqP38wY9LsQoEwWppueHlIXWKdoP3+dY7tSK2acDnig8DPrIn3v2Lrgh5u?=
 =?us-ascii?Q?A0cjEgBifqCDWauGQazKHYnjKsKApFWSbBz5XkccBy5nJVljKNsTMSFC9ohy?=
 =?us-ascii?Q?UzIYrYEHv+qJf3i6IrvZFgdiT2iyWXurLbTu+GOxp79gIXBfWs/2/2f/R+Pz?=
 =?us-ascii?Q?8ul2RLrax1jnT0wo+elbw2cALUH2BA6Dhf76XlHDPIV1isXByjhGtKooqpf0?=
 =?us-ascii?Q?oNTD1vLDkFje0kI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?c2SaRFNAZQAE/33TldJrktVs6c+U3UzpBGafAx82/QIW332Fty8UvJ11r3nK?=
 =?us-ascii?Q?S5H6gnTr6v6dY3zP4Nax9lP71ngNfRnZAiYEWin8TiHaF2mskTAqCoKzKr6B?=
 =?us-ascii?Q?dozz7jxZox3SKuJ1Gt9kEdl/pSXB846nwywgk8zQJpQ6wYd6uKixEfolg8V3?=
 =?us-ascii?Q?eWQQO8Dcx9/neCdkgUz7+73MrzNskSFZ6jK/8/I3sUP/kqOU8SL80iZZH5Ee?=
 =?us-ascii?Q?mbs67u3UesmSI/SGmp7M7Hy1CYwY+sdWa2M++fi5z3BdOlEvcFHxeVkM5558?=
 =?us-ascii?Q?tgeUbyzpjJg1wr5NqyZSyNiwbQ2zc+Pn4jjqlATIGUB8PpMZxdjpygzw86k8?=
 =?us-ascii?Q?SqVgW5WKOiy3S7LQb6jV0khPnHjEKJF0A+6fXibrkJhhtDowftlpCPZe4qFN?=
 =?us-ascii?Q?ehGnoumfKHfAS0EWrtB5nh1jOq+DhcwBLmbUCY9BHzdSjZPSO0hXqFiWXm/8?=
 =?us-ascii?Q?lvbVx0MdWxdRZuf7FrrE44gbyMinMarDKdDhpyxbsqEyDRXSwTUkSzfDw0GC?=
 =?us-ascii?Q?gqwgUO5VGQfuhFzmC2rwyj73eVT4e9mS/Y4QksNSyLgQ9FOuaA4NtvW+hMqA?=
 =?us-ascii?Q?YeGb+9o+CExO1PE8b81YRVBKuIUtRvm312y04fAJB74tDpDClLwY8yPqdFOA?=
 =?us-ascii?Q?VgwE87TQV90IY/bJeMW7bbIboIvrwGQApmS4mzCSUHpYgDTLNu//4lx8qH/r?=
 =?us-ascii?Q?20bpEdr8mCThQQ6VCBXzxWrM+sEHNHqVgZAqa0Tf2XUqkX5KS6NfZQICNvQ+?=
 =?us-ascii?Q?LoH0ZGVgDYKfKEKTCwDD7bzN1g8hf6mZ939BOwaIGfgouoqQL6Ralli4Neum?=
 =?us-ascii?Q?ub8KDbDJPQm3lgdtBqIKE1QWTbHI1uxO5m1n2FbQj95gjt8+eovvH5983p5y?=
 =?us-ascii?Q?NYm3D6UTIA5GiW23K24aEPyMgEj2Lh4GNXc2kizR+WjckW3L+D0zV4j0+GOW?=
 =?us-ascii?Q?13soTyyLmAjF8EHbN9sg/Lrm8weqCkqq4ZPCOfAXHSMY6uZFd+Txgyv31EMj?=
 =?us-ascii?Q?zzWnranHtp/0Cl5OYuUwqKHLbg9DrQNQuq+p77sBQi4ksepHaJICTsmJJ6YD?=
 =?us-ascii?Q?yi4excudk7ZtPuxSBFCxK952QfYG8okhfRuEimyoiop5KGCPBhu7Ra6r8fu9?=
 =?us-ascii?Q?BofT+DQg4niUn6cK/65b1ZEQsYn6jEwMFEjS3znH/EzsEse2LAPEQtdMrd1p?=
 =?us-ascii?Q?lF9+lycjMHKXMrjgyuKNDXq84No8sPhVtAKxtNYfH/chl6jXAmWSea6T1g8q?=
 =?us-ascii?Q?4zvnRPIU2eUfQ6Hi84n+RFmH9KYscr0TCgz61NldAm1iu3xVkBGaCKhCJUnS?=
 =?us-ascii?Q?ynIQEtM2CbH3c2Et4JZbrlPFaYgj/WLvrRdy98rLqI+9JIirZfX64DCRDuCV?=
 =?us-ascii?Q?exdXJrUx1VGJvtGUOiVq3cRsBAWYgNIW4JilTigFPbYlgIBqNs/tEnaUSetP?=
 =?us-ascii?Q?vE8jMsbofBkBzo9VDWnwjy5OdS2PKlzTT1f901omhao7jFzOd0HHpNKbdkhi?=
 =?us-ascii?Q?7+HW5zX73HRj2/LYFjiUWON9GSGkHq+RCcjJbJnGsK9jQ+UXldpRijBoTnV8?=
 =?us-ascii?Q?HmoWVpY8wtSgxmMvWiqXdvmOk8xzSEcAs8U0F1dU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99071b2d-d96f-4b1f-3f89-08dd98335ac2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2025 06:47:28.9537 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FKlb7DyF04amBgEbaGv0iXkUU92rfk0H46ceSsBCvZFkgGi33uyj9UzItixVOpu3pxcVMbDMFqY4xNbpVA3eNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4529
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747810072; x=1779346072;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QMc+CDKQOo6HeKlWukKJWdY5WubG7378iaRZSoLEf0s=;
 b=aCVXZkBl/aEAIo9b4cHsPqfarkxwZAvp++loTlEf+0TyKMt7kDgg17e+
 6RUmk3gIf7BTi2+xXqgR//chpkvpQOwb6U8zvjfUGZw7IUOfLeYbP48Bz
 rT0FGSCMAUqL3gtIr2QC3HvwZh7s5Il9iBApk1AbDrTNYzK/15q2No07L
 3ZRBTlHNWZdj26PHN6NquWMWPUL/KgJB5EbzaCTq/w10nZmQsRdipILtv
 kFZfhdqDowvIPvGTaoh1cE/pRVquYqS5OqFAwi+NzJqv+tdLdKptt9/AW
 uo/gUY8clMPemGheG/NKbs88eeOzX0ImaW4YsphdCUJndXEOxU+hTH7tR
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aCVXZkBl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 3/8] i40e: use libie adminq
 descriptors
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: 25 April 2025 11:38
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Lobakin, Aleksander <aleksander.lobakin@intel=
.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kwapulinski, Pio=
tr <piotr.kwapulinski@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov=
@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Zaremba, Lar=
ysa <larysa.zaremba@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.c=
om>
> Subject: [Intel-wired-lan] [iwl-next v3 3/8] i40e: use libie adminq descr=
iptors
>
> Use libie_aq_desc instead of i40e_aq_desc. Do needed changes to allow
clean build.
>
> Get version descriptor is a little less detailed on i40e. To not mess up
with shifting or union inside libie desc use get version descriptor from
i40e.
>
> Move additional caps for i40e to libie.
>
> Fix RCT in declaration that is using libie_aq_desc;
>
> Use libie_aq_raw() wherever it can be used.
>
> The libie aq error is extended, cover it in ice driver just to clean
build. In next patches the libie code for that will be used in each
of intel driver.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/i40e/i40e_adminq.h |  12 +-
> .../net/ethernet/intel/i40e/i40e_adminq_cmd.h | 155 +---
> .../net/ethernet/intel/i40e/i40e_prototype.h  |  16 +-
> drivers/net/ethernet/intel/i40e/i40e_type.h   |   6 +-
> include/linux/net/intel/libie/adminq.h        |  19 +
> drivers/net/ethernet/intel/i40e/i40e_adminq.c |  68 +-
> drivers/net/ethernet/intel/i40e/i40e_common.c | 754 +++++++++---------
> drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  10 +-
> .../net/ethernet/intel/i40e/i40e_debugfs.c    |  46 +-
> .../net/ethernet/intel/i40e/i40e_ethtool.c    |  14 +-
> drivers/net/ethernet/intel/i40e/i40e_main.c   |  31 +-
> drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  16 +-
> drivers/net/ethernet/intel/ice/ice_main.c     |   8 +
> 13 files changed, 505 insertions(+), 650 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
