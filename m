Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMwLLQaLhGl43QMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 13:20:22 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5E0F258A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 13:20:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B69DA60AE4;
	Thu,  5 Feb 2026 12:20:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OA3lh-T3A8gl; Thu,  5 Feb 2026 12:20:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8A8960DD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770294019;
	bh=1Lk7LpulnqdjQcY5RWQDe2pgFyfCTni6M0VYdx2fHGQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3lGbpNvv8wGTZqJ2pASII7y723iwJp25/ngYnB+lM+zZSN3z1FTS8hGJwe+tpUiMx
	 iMqocpohBXqsyA+o+d/TFtNi/zxumYvVyJDZaQnBGxomrNC/p48V4Mqh2tf3qzZDes
	 dmyB9bsHhuOaPITxx1zDq7ZCTo3BzQ0hTNFFUhGWgQOLTxZFhVZb6+RFvLmb84rx7j
	 1qtSdD3pM3K3Pk4pE+RHnBf2Xm04Hc5GOdwVASHKbyTesuT6i3La7AlUEC090T3oUA
	 dVyOBVYam7UvNQZ/KkmC9mqysbgEg7/Oo3kjKWQFenF1JcG3Sg0zJfwycu9HzpRIIt
	 a3vLsv735cciw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8A8960DD0;
	Thu,  5 Feb 2026 12:20:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1BAE5117
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F4110400CB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:20:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NtZ334lrQuBM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 12:20:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 004D040DF2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 004D040DF2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 004D040DF2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:20:15 +0000 (UTC)
X-CSE-ConnectionGUID: tQluEENbTKSikX8ehJ1mSA==
X-CSE-MsgGUID: NDbp8R5JQ5+Nrq2uSvrLPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71553087"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71553087"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 04:20:15 -0800
X-CSE-ConnectionGUID: xiw5wBP0SfOCQ4vRUQn1kg==
X-CSE-MsgGUID: grQtI31ES1iN3xhwq6AeCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="209594593"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 04:20:15 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 04:20:14 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 04:20:14 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 04:20:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hqjvYD+BYOGUMhQ7aDo5b37j2eXMChiCVFbMzEgVgHaLxtiBLzrgO/3h0NIQ+Knfc6mfCrcjyhc3eGGrgozuJK8U2qlcmp+v+Zh3hvr/ytTNq9cm3MJnopj0X5B9lNt2a2TacoglpPFZKVnpXnOqx9VBU/NYsMH1dg8g3R21td5CT62/pGGD1cTQaFzLda0IcVclgalFXu5Ab/b52nIqd1LhlT/a1dkjsT8IuLrWNmOMiyNU21t+gc51sGTUQKzNxkTQiae7DcepNStuPmqAR8NJq3yKahPI4jrcF7TAqjtKaL9ZIUp/X3WsvlGNoHFIPlJDD0AD01cX2x/sTYEXNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Lk7LpulnqdjQcY5RWQDe2pgFyfCTni6M0VYdx2fHGQ=;
 b=dn08XAMBZpKSXE4giV2thERTuavwOhXYTSplchfPYtk5SMqu1TbLD38FtMXHgREUdzV+bMfkQQhLsczew+RhFzOfOXMuqM+wCgUyKlhHwAI1/HuTURPzke/NsdhN9zEdBsV6zD9vB4t83H2m3L19/ZlbRomaxCOsn/B4u4axlmYNUJrstENkOq2kuPMgKPi08qzxw0aEZpHhdRLKcJO0E7OkXdFyBXfybK2Iu1KPzTrIpl0l5gkJl5RXPiF7b97xXEbbENfBm/Gxp+yGi7jNrCQmSn3eCEiQ4vV6ytz4XYw/6QwSxsyqOJLj1crbkkaN1EnkEmqvUiqWbnIVw8V+Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM3PPF78DCB3A49.namprd11.prod.outlook.com (2603:10b6:f:fc00::f30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Thu, 5 Feb
 2026 12:20:12 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9587.010; Thu, 5 Feb 2026
 12:20:11 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Paul Menzel <pmenzel@molgen.mpg.de>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>, "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>, "Sebastian
 Andrzej Siewior" <bigeasy@linutronix.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx timestamp
 directly from interrupt for i210
Thread-Index: AQHclnYXhLud46uHAE25c+QBK+gWd7Vz204ggAAlOwCAAAPL0A==
Date: Thu, 5 Feb 2026 12:20:11 +0000
Message-ID: <IA3PR11MB898682AE39689F854F3BA178E599A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260205-igb_irq_ts-v3-1-2efc7bc4b885@linutronix.de>
 <IA3PR11MB898652699383BA265C5747A5E599A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <87ikcbwgf3.fsf@jax.kurt.home>
In-Reply-To: <87ikcbwgf3.fsf@jax.kurt.home>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM3PPF78DCB3A49:EE_
x-ms-office365-filtering-correlation-id: b432c97f-dbd4-49f4-92e5-08de64b0e8fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?i9agROeAvqmyMquDPStyFh9p+1ZKaUY9IdS4IaevxXkFfkx4TtLdpGCTCnzK?=
 =?us-ascii?Q?mTxc+k6H52fEHtrKxandyB7uTOkwtG+H4NDqK0SyQsib+n/gFcUf3lgtpc41?=
 =?us-ascii?Q?q0CZiZbCYQpKWiNYVeQ9t1PgSCkpQ1FJE4Ea+6CzI95sfHH1AuxbNs/foYT/?=
 =?us-ascii?Q?oveGKfim6P9ORibmiP+F2rQ+Ek85mD8TSXpN2JHvcYXYndy/ImuH0X7H0vhQ?=
 =?us-ascii?Q?WxJ+xlvC5/9VUqixAuC0dovr2S3aKOJAmdQnSAb8bugatM0gW32rt76jeQru?=
 =?us-ascii?Q?LkmM433KowlBiQiapbwaGFzTvnVhLxD8Y1quY76JHKAy/P6WbuABh6VAxT4Z?=
 =?us-ascii?Q?mKswIuTiQlUc2xM3JiDyyDzRv1iV7zIsi0ozMc6gf6OTr5eOWd4cDGyHpNY/?=
 =?us-ascii?Q?XbbLNC/k8fAkZTnJ5xWjNBkGeRonVRV9XQPWHxeGNWFXxdoF3/aIzSCWG+Mz?=
 =?us-ascii?Q?laaBpRWR+YKX7261WSk3CofnIPm9vv3f/0ei/7B0NCT2ej3zGA8cfTqk7/Gx?=
 =?us-ascii?Q?hpB6IU+5+ZiqmbGl1j+xHLN5/wJQFvq9+aM31XlAt9N7bShYZNDibBlX6p2H?=
 =?us-ascii?Q?rWiEeT18bWfcjMN3MfBE9LnhwdKLwkHvHsuctj9dPwVG7pKa4OeSbnydsPtW?=
 =?us-ascii?Q?GxG87RUtVyCzWYmUXbBP5XYywgsg8ZIxkSrQ4rk1OWFC4+cymmsVNGPd97dM?=
 =?us-ascii?Q?xU8b+cXM4K/DslYxyPDa7LrUN1tR/i0cQmgaOCecQDlDhLv9fPWDUC1EbJHZ?=
 =?us-ascii?Q?sXPIKx4BgfsHkstV9wp6H8wHEoamDS+X0DWzQ2xmRaBdwPAeaFJ3rq0j7GNM?=
 =?us-ascii?Q?nb/QyDpZY3m/KT+jRS7+B4pSotBqxxrWKfYAh9hMG19VIMBB40Nfh+7WhZFR?=
 =?us-ascii?Q?/MNypl1U0Q1YMRrNO4qbstC9q+Gz/cGb01Aa4sqckgeWK1h8EQ/vs03nI4Uf?=
 =?us-ascii?Q?/KY9mP3Yzd4RfFCXSYOrW1EkSv9aStwT3OV3GkTL0Jq9YEyvnBAD4VBeC4v3?=
 =?us-ascii?Q?EbpxGhM6ycxJLCXofhX0riMgK7z0U/3w1be4+yhrhjuGvaVjk6lj6kx0qyDW?=
 =?us-ascii?Q?IRZn9mZSmHhDBaYVnRa/nnxJ3bvwUWDVjTQ9VzY5Vew7wKdS97WwNvLHn71K?=
 =?us-ascii?Q?ItL3njPUbz2ejUYQdQuZVnvL0Lvw195z3TPtn556BrjDdjz6aPBHpuYCVVbR?=
 =?us-ascii?Q?/lV5R+uF8R04GjvEKbnbvXQOFURHCGFrl9noSPeadgPLjt7MnA+DpoaMlmcR?=
 =?us-ascii?Q?2jV0GLHmiaHmf3eguhTdwWYjJqsksu0DLZFNzZnyVwqqDK2te4M3WxK56wiR?=
 =?us-ascii?Q?BrLsJXOxDK7h5bKtDtnC+GgC8Cpo7v5Smx2iToPU4KZogImRJWuUxT/scasO?=
 =?us-ascii?Q?6wiOuJHX4zgqVXcnFaT8Z52MKv0d/j8zMAm/lS3u0ZVITaxUzVsrjmHyifah?=
 =?us-ascii?Q?1UhwWbjbZqyS5ZyDVb0Ya2nCgSv3JdJ8IyzlCZhjzf2JT49+chW8cx4Cbru6?=
 =?us-ascii?Q?cyHkfHd3qREAIg/tDwG2c8O8aKjSwWPBLE9vXacz1+kLbsqR71pT0xFtof0t?=
 =?us-ascii?Q?1l0ueOmVk6WZiC6wA8ZiHIr60pG6nR4Hs0QSxSH05KsMpkvSmFaMaOBHv76R?=
 =?us-ascii?Q?9nifc7cNh/X0dDTds4mRpgQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4ndEeTzsHwBmaAJu5VMPd2oTUNsaNSIiPGH4AT3QyW7C7atidC886EZygMae?=
 =?us-ascii?Q?bd7Bb77Mx/8kNJvHr8EaL+ikUTb0bXRRdCzapy1OchY5Z9DnzvLKMeiiwfP2?=
 =?us-ascii?Q?jN2aZ6LfvJI2LV+G4B3wXebXJZm2PgrDsRxMCAS5pr7UUDA8AGljktjnGkIV?=
 =?us-ascii?Q?SfmAFuEmR2aL9L+Rl9NaF53uq74zQRxIWtEOm07sQMxBbENFWwkRAsgxCQzh?=
 =?us-ascii?Q?xBD+uGj8szVh4hySz3jSkqKz42/Uq4+TZPkQ9InOqjda6PAqjL9uz5y3w8hu?=
 =?us-ascii?Q?ss2KqT3rqEQrMJW3j4KX6E8QyWkibooKgZJ/AkPmLpxQ5xOEe6amf5Bcfezv?=
 =?us-ascii?Q?ghppobVjmbQrTmQwiFmWADJnm4QOSYJE+O+GAtB9nnAE6Ua/x9RRYpoRqJF+?=
 =?us-ascii?Q?cAY/dXVaQnSaqDz0i0U4vuzjP6/F0cXWla2wNJ4m4C9OCC8BcLYrueg+uWo0?=
 =?us-ascii?Q?yJz38D73URjD7KwfPhZ7SQ7yacU7AB/PWCZK+JPmjLuaga8Wfsy92+Zaq0gY?=
 =?us-ascii?Q?21/jaonwvoXuG5Ok/5W1rUumlRvMRybzQGoJphAHear9yo4OLS/T0hrxwN1G?=
 =?us-ascii?Q?cUJiTKd5RwLIIIz95EoY7/0Y1TH0UHi7WjFazwJRfOJ8mX1g8toaESkIleSY?=
 =?us-ascii?Q?0rvgc3JeU2uzvuoSn1KMsilONMCC9hwVRhOsbfgo0cdnhJTFEUOOvAIhMUpy?=
 =?us-ascii?Q?wCg2b4PhsOwXrpeAIjaE91BcKIjROqohZ9f69py2Qo9RfldQpMn4QCQLEFLw?=
 =?us-ascii?Q?2mYfgvZ3PuKwO/jesIM4TIHBC24fWI1w6c+yQKz4sQT4OedPEwImBGfjtnO7?=
 =?us-ascii?Q?oP6aB4KRtONF0NNdD30AqvqF7SqFUkZOJPOj1OHDy1lcpF32oriyexZCJ2c1?=
 =?us-ascii?Q?bQKoNKVousljp2jNm9OW4PNPwG73cRYXZfXCljyv+pvw61+Lq6yJ0BgWMtiZ?=
 =?us-ascii?Q?jjwaSSmVClqL9LvAsJd+m9Ws8YHYbpi/Upy/VUEhbqPTWuy+5O/IUTs4A1gZ?=
 =?us-ascii?Q?BRf7HGAuJwB+cWDhEIrvWeEt4Uo6eZ94ydcgEiLnHI/iUPlE0444KTPpu0cR?=
 =?us-ascii?Q?1SW2XFZRUwr0VGqPRBv5T6Y7JaKMmlKTnoZnL3hKtDsBlbZ/NHo1OPwzLV/U?=
 =?us-ascii?Q?Zl9EeMo99PJBSTvaCe79u45FSlges8a6Ejb98bE8vfd718vNJ/nSMyrofXRv?=
 =?us-ascii?Q?B8UiVBnrLFCNPiB04g211Om+92iSiZbXum8cU8TJkSei/mjx22WBlp3cDfT+?=
 =?us-ascii?Q?8ZnHtUKxa63C4BSnQk9fm8vMgQgBfrex3P1VrOoQI444pMAbhYK9D0R1KQkq?=
 =?us-ascii?Q?MVuG0nGDSyLnwCj4X219HTx4m8lE3cF34CBCtkybyvuxZPHa/Jhmsezi3l/T?=
 =?us-ascii?Q?/ieq9dIQamF9FQE7nOrFczTVj9LrFM7JMm8xZkdNrG+BN0EuRnUZLVy4nJ+Q?=
 =?us-ascii?Q?djG11NQatanWKfaDpnjenha5oMgaUd9TQmBOTpkhY7wvvjsmGM5FuWvkJlZI?=
 =?us-ascii?Q?rfPBCcCWz67LLC94A8Uhy7szQbOdgbDjVfg8zM6g2MHoKf2holgGCDyE4GXv?=
 =?us-ascii?Q?7CAXDgWlJ7MhDgM6yiUwdXbkBXG1z0r9/sCT7/0oVOsV/qtGMPACLBcTOj2r?=
 =?us-ascii?Q?LgqwbCjZDfSzEgNH6JWaAkFRHCRDbIGa2kBgE+yqQPe49GK2JiTjG8GXBwC1?=
 =?us-ascii?Q?3dhrU1HgQd0nEMlgKQB+0UknDv1sD4TsKsWz1S4MAMA8GvGo5jZWkvVliok4?=
 =?us-ascii?Q?vxSlldpAbofi3F9eEuGqR68649DXyWo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b432c97f-dbd4-49f4-92e5-08de64b0e8fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 12:20:11.8221 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: clPIZTLshlgBmW45AnVKhaYHCuSa/7HO0AEOVAQzDN1sjGme4qTIew98fhF7KwuoMIzSnnHUMLgcXLGe5/o7l9gQDpJDHVLrZ3EWZKA87uw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF78DCB3A49
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770294016; x=1801830016;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eUCw6hrn5BSvBHhZT2HxcyoIPXyTan+YzIXO5DkBwdc=;
 b=Tu+Kl4ft0esrq41/30f0JpJdSlikLhLGkXk1OT7W/QEawh459Yl29L7g
 lBjfsJOL4mmXSd+Uocj6yYtShaStTwb0P3JrBwFrMQPGXpt1M40oVFjpR
 d9EXCL61LD/M2Ekwni7iPCJmP3OTiYCWeIhW0Uj7fAFHgVnrzFM9Y46HO
 umccaRCb428NvBq3GFW5FtYXflWKTpRaige5qZdqJf1JnTeQKtpZD2mNc
 WyfPsHbQDsVE5dAnRilBJcPHENQaM+Ha+UAOaT0y0WyDCgASqQk/mw29Z
 RHm6sJFdHC1XeeQ3Nl25V5GlxAKOddNiLRfBociYybX0BoU32tk8RqZAn
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Tu+Kl4ft
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx
 timestamp directly from interrupt for i210
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
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kurt@linutronix.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vadim.fedorenko@linux.dev,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:bigeasy@linutronix.de,m:andrew@lunn.ch,s:lists@lfdr.de];
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
	FREEMAIL_CC(0.00)[molgen.mpg.de,linux.dev,intel.com,vger.kernel.org,gmail.com,lunn.ch,google.com,lists.osuosl.org,kernel.org,redhat.com,davemloft.net,linutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim,davemloft.net:email,lunn.ch:email,linux.dev:email,mpg.de:email,linutronix.de:email]
X-Rspamd-Queue-Id: 3C5E0F258A
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kurt Kanzenbach
> Sent: Thursday, February 5, 2026 12:58 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Cc: Paul Menzel <pmenzel@molgen.mpg.de>; Vadim Fedorenko
> <vadim.fedorenko@linux.dev>; Gomes, Vinicius
> <vinicius.gomes@intel.com>; netdev@vger.kernel.org; Richard Cochran
> <richardcochran@gmail.com>; linux-kernel@vger.kernel.org; Andrew Lunn
> <andrew+netdev@lunn.ch>; Eric Dumazet <edumazet@google.com>; intel-
> wired-lan@lists.osuosl.org; Keller, Jacob E
> <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>;
> Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx
> timestamp directly from interrupt for i210
>=20
> On Thu Feb 05 2026, Loktionov, Aleksandr wrote:
> >> +/**
> >> + * igb_ptp_tx_tstamp_event
> >> + * @adapter: pointer to igb adapter
> >> + *
> >> + * This function checks the TSYNCTXCTL valid bit and stores the Tx
> >> +hardware
> >> + * timestamp at the current skb.
> >> + **/
> >> +void igb_ptp_tx_tstamp_event(struct igb_adapter *adapter) {
> >> +	struct e1000_hw *hw =3D &adapter->hw;
> >> +	u32 tsynctxctl;
> >> +
> >> +	if (!adapter->ptp_tx_skb)
> >> +		return;
> >> +
> >> +	tsynctxctl =3D rd32(E1000_TSYNCTXCTL);
> >> +	if (WARN_ON_ONCE(!(tsynctxctl & E1000_TSYNCTXCTL_VALID)))
> >> +		return;
> >> +
> >> +	igb_ptp_tx_hwtstamp(adapter); <-Calls existing function
> designed for work queue!
> >
> > skb_tstamp_tx() can sleep
> > Smells like sleep-in-atomic isn't it?
>=20
> AFAICS skb_tstamp_tx() is safe to call here.
>=20
> > spin_lock_irqsave(&wq_head->lock, flags);  <- RT mutex can sleep
>=20
> In case you're worried about PREEMPT_RT: On -RT the IRQ runs a
> dedicated thread. BTW I've tested this with and without -RT and with
> CONFIG_DEBUG_ATOMIC_SLEEP.
>=20
> Thanks,
> Kurt

Thank you, Kurt for sharing your experience. I don't have so many experienc=
e with RT Linux.
For me calling a function, not designed to be called from IRQ context is a =
SUS.
So, I rose the question about sleeping.

But there is also a question about non-RT Kernels with Shared IRQ Vectors..=
.
I.e. regular packet processing (NAPI poll in softirq) and PTP timestamp eve=
nts (in hardirq).

I suspect we have potentially broken drivers with shared vectors (MSI-X sho=
uld be safe I hope).

I'd like the comment to be added:
/* Safe to call from IRQ: dedicated misc vector + RT-safe on PREEMPT_RT */
igb_ptp_tx_hwtstamp(adapter);

But in long term perspective prefer to refactor moving to NAPI is the safer=
, more maintainable pattern.

What do you think?
Alex
