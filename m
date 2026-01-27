Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MG1MOReieGljrgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 12:31:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CEE939FE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Jan 2026 12:31:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6732A60EF5;
	Tue, 27 Jan 2026 11:31:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FS9D-ZOrMZMA; Tue, 27 Jan 2026 11:31:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEB2060F72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769513492;
	bh=vA3WiRV99KbJMOmhH1eMPUFpYCl4sk0A2t+MWRTRX50=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iPNGrtWPxQqEC68WJTqSOwCScMedKmvhjRiWd9YT7Za11UPMTLBtnOQE8qjCdQulH
	 QPvSbNTdVJvAulw9hFAKFzyfEI83expHOs9mAip9ZSQBotr10DIrVzetA9yujIYUXS
	 9ZPwHzo+ZKFBnisF9/f6ADY1Lo283+wV3tmolFrvzuRp0zv5xXywcBiEDaVbdKCG27
	 hL7vUxxhWRCeIUNwvIFGH9UhahS19DZQTrBgKbum/a4LGOmV3Qkrg3lqYfcJJ/PzCH
	 Q0R0Oqlk7QO8kc3Ez8Q8r1eIfmuabooJyXDXeqDXCIiqAKrI22QxZlw4JT6KdqXw4g
	 hsWz9TGWPKNJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEB2060F72;
	Tue, 27 Jan 2026 11:31:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 841E3118
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 11:31:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 728E8821C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 11:31:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y0Gf0oaYTVsP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Jan 2026 11:31:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A37D0821B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A37D0821B8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A37D0821B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Jan 2026 11:31:29 +0000 (UTC)
X-CSE-ConnectionGUID: cOlOF/X+SHKSN5kWjOTc3g==
X-CSE-MsgGUID: YgbWGdVOQhSGBwBS2dPQ0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="93364215"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="93364215"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 03:31:29 -0800
X-CSE-ConnectionGUID: 0Ot7jaQ1TKazvDlV/fOcvA==
X-CSE-MsgGUID: j9+AOUnVRNqukNo0ioVfEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="239219512"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 03:31:29 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 03:31:27 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 03:31:27 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.59) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 03:31:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gPbCsEtQA83w72AKTvnoevnRMcFw/YN7CIRX57YnujNfdSt6+OY/dUSeq7w0Bfr8UnTXDY8p5fOHZEi0h23GwJ7rI5VR/gv5GFWiv/6aGNb37NIPFsJk9j/sl2c+ljJAx7a0BtCIBDTAdYjNG+Bj10BiSp/DrAhm08LwuBV06o4tCYqhbjK+XxnCLeelkid4jvh4cq8bqjjvcFyxysHIQcCMju4oh0m0mHBUMJwpxql8UDsvpzaTZqusFXcoxFw4yImeI18Gan6qWfbo7/s0eLL6W6VyolZhNboJBs2HJH1TbY6/nYwoL8VMrPOIrCIKxbYbgN+P2BW2xS3rJJYfog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vA3WiRV99KbJMOmhH1eMPUFpYCl4sk0A2t+MWRTRX50=;
 b=dFbFuZpsz7/CthqqVshh0VbvK1XIxymgWl7lXEW5WVMHJYL1hyC7rfKX7cyLynWM8F4Y8wcNDBmsZzFNACF66JIG38DecG/MFK8jt3uAVL3jbqeg8u8ROOZa3P5vjlhV+1KXftUH9cWn9cu4/a1E8AmqiL38GCBeV6D5LzFmvs+rZlYcDEDhfwmjVwq7ogrg89p8Vs+92aYHrHKwrK9hXNoMrdNdO5kNAG9HxWmW8Ave4re5nVDLO5lEtQGfij3RMxOA4I3AoGzaZsFhoXFHfWtEIrQuI/3o7DUIfnJxV3Z5UZ3rsM5mWM0eMWRGic/yo4lii6oE2JtE1SIhLUNXFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by BL1PR11MB5253.namprd11.prod.outlook.com (2603:10b6:208:310::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Tue, 27 Jan
 2026 11:31:25 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::246b:dc12:ea88:b19c]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::246b:dc12:ea88:b19c%4]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 11:31:25 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Simon Horman
 <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "dan.carpenter@linaro.org"
 <dan.carpenter@linaro.org>, "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [PATCH iwl-next v2 1/2] ixgbe: e610: Convert ACI descriptor
 buffer to little endian
Thread-Index: AQHci7vFHDXLLq1MZE2JCE1M4M75RLVgMC+AgAA77QCABXnGsA==
Date: Tue, 27 Jan 2026 11:31:25 +0000
Message-ID: <BL1PR11MB597993D5BC80645017BF6F60F390A@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20260122164632.112607-1-piotr.kwapulinski@intel.com>
 <aXPU4YQi73T088lS@horms.kernel.org>
 <CO1PR11MB508945D598B6284773B6E9E4D694A@CO1PR11MB5089.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB508945D598B6284773B6E9E4D694A@CO1PR11MB5089.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|BL1PR11MB5253:EE_
x-ms-office365-filtering-correlation-id: 2b678a6f-f0bd-43ed-a80c-08de5d979abf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?7DYwkAjXv0+ftI+379ACba+7BzPLruQ8L076A5yWDt4ShsRzeQPo+QlheDHf?=
 =?us-ascii?Q?odN/u8BKcjVYmhfAaD742PmTLL93/jItb4BN+ubSSbNMemi+z2Fi1dUQIX8J?=
 =?us-ascii?Q?8I4572WpryOfHZeb5uk79slHum/u+hK0uCNTv/s15NulJoBH6ULukcgLLNyQ?=
 =?us-ascii?Q?0Xt2+PPeCW7L2fNMc/e5NUv/JFSbis3frQSubF55jQl+xJ+HiBGLopF0vBlj?=
 =?us-ascii?Q?bnuEKlNO22zSqr5953d9m8HU8Qmbgogr/VSXf2wr+GnVfGpVO3W/3lMPpbcz?=
 =?us-ascii?Q?xfQJLskl4NweJKZV6es9QcIxj2V5gW3tOKzhVhGcSh/VkgeIJa1/RD3WIPeM?=
 =?us-ascii?Q?nWqwMvblVlyNnRBbFTLjR7n5H36GSIK9JYskfnoWaLACBZrLc+cdXS8x3h9h?=
 =?us-ascii?Q?1MnEHBjbpd20AVrYjtpY47s+vW0WiSAO5feISiOuX93QvmzYHrEXdtB38QEp?=
 =?us-ascii?Q?T9Gd8eRI9l0gCrLf88UIwDE3lay1S6UOiIYR4Ch/5hl3xM9Vuq7GncD3Rz3m?=
 =?us-ascii?Q?TV7Q55iF52SUbCtYDW5CWwQMe/rEeJxAtxs08b6SUh2ghc45nUx/muQ5KNBa?=
 =?us-ascii?Q?ODiAPH0CsjAUUJT+lCTKoUt42DyeE8V0MNQ7j8MBnQ/YjuEkjF4w9cLAZTj6?=
 =?us-ascii?Q?ITjoOQikwE5l0zmts66WvNmFWYqndWjKHurQF0o2T313S6VNOVckxfz7XNS7?=
 =?us-ascii?Q?khoyfpI4hxhvsNqo6IJm2Rp6sDc482BPfNssC8KgBE9KRFD9haQvNrHNsS+A?=
 =?us-ascii?Q?MingB/OEK2j5gSCgHuTbSYcLXy8oAKJbYogbU1kH1yQAWBi8lJ4Y+ndmAEV6?=
 =?us-ascii?Q?3xJzOLl2rqCwq32Pb16bjR+lOqRBbPa1H13/jAAt3nLJVfvEZomqF2Dc/5cD?=
 =?us-ascii?Q?kOajnz/0eyjY1xwtl2LqFZAwJDztluNKuxxrjx91QO6DpLYxTeUJ1QAazJKM?=
 =?us-ascii?Q?2ulJ0hHVJm2/70wdSI0QDJcKy6qSoIxFf1bDT/aAIO6R7O+pj3gzRAQAjzuP?=
 =?us-ascii?Q?2TSSmUjqXY2mwgLQnrhQEq2TgjG6Dv4CkFtGs+jy8Qv4cQqoovThQmgm0309?=
 =?us-ascii?Q?XdIyE/wiMtjFdAVXGEUE2bJVEf/kRHkGJ9ETLIRzg5lMnAFqkRwYoxp3AMUA?=
 =?us-ascii?Q?3TidOWZeal/1QkCTmASrstYOFkzspX8ki3+A09/dL3jjlBsTidoqei405boL?=
 =?us-ascii?Q?YaEsVMcSs5iWDlGEkBrGuhYUWLsbzll7CkwsAA0UH4aDjoDcW0zdaWwkI6XE?=
 =?us-ascii?Q?J1wkweGjwTUxrAVCFrxrHz+8MVlrVLXF6hTCXa4EaLxChZidTbm0NgSRmCpY?=
 =?us-ascii?Q?+4zK10SpuD/3FOtDqjZ/hhXhn75UO9cd3hwjosfR35LthMzP7L9Wj8i1iohF?=
 =?us-ascii?Q?3s0cw34OTM5aGn6Wnchk+Y5Th4DWXnbbFzOWzGPu3N1dMl9TcKk7JsGLXj7M?=
 =?us-ascii?Q?6+86ng3henKYGPG28fWf0dZ/iWXf30SZH+IzcKMX4OAkOiG3uXPISqkiIyZA?=
 =?us-ascii?Q?z1X9DLF1EvYxN5XMmEM00MlG+kjG7bEzFGIyJwfw8mIe7FShUy+zVWfAUnJI?=
 =?us-ascii?Q?7OSnR2GBA+dpD+yh3wQUaqOTzXghV0jxEasRLwO6jkdRTKe67lr4WQzDLFtE?=
 =?us-ascii?Q?BLW8oA77sxchJjrQEHK/l5c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ukq/zQSLpzlqgGkFUqti4UlxP7sjVnoH0b6H1GrgIR3n4UAb3qNacqnwLNQJ?=
 =?us-ascii?Q?sncrIO8PeISao7TUQsNO1UEPzgzBhf979oa1sgOQ2jRykalAGDY+avubvB8f?=
 =?us-ascii?Q?rJf736/KD+P5Tx+HIV2dEZz1hFkvCM9JL6Yw7ZJKX8ZWV4i1tlW6U3YC8BGI?=
 =?us-ascii?Q?RRI8tfWyQfhIUBm6qLNOALIoE5/NiTLENBBX5lIfYi6w02GGlILuv0oHw1g3?=
 =?us-ascii?Q?wxSd1/JOocqd5LwzRMGhctYozaK7SPxLlcekyBLXGIY2SDpqV9FUeuDxxu3l?=
 =?us-ascii?Q?6LSVR9azcRBnf02v3CvH7QgkzbijoW6K3mW8oaw0xkpKo5QP8XJOsc+cuegE?=
 =?us-ascii?Q?muzA7Y4rU+n5WpLj1VTk4ZSYzGky4seswyPq7Qd0sCzGHPt8kjfpjc7Je+rk?=
 =?us-ascii?Q?W1Vcx7F1Xn+yeOFVIeT2Lyma2M4CHB8EMmrxZ2CBk5S95Q3QTNTB01Bzb4ef?=
 =?us-ascii?Q?ReT1NcpC1ehAF9cbykor5fsb1vcFdKcQ/5gqa5KYz4nfn9lQVExD5U01+pxZ?=
 =?us-ascii?Q?Oj4wXLfJ/wbv2hDtZ6q1S6MlR7DnsienlRYVeLGaS82ZdIP3ssREYANucPHP?=
 =?us-ascii?Q?9JnQowCWC5xjWozyO+vyPZMKXgEWrGP+H4Q0gUUs9JhOidco5MVAZo94CklJ?=
 =?us-ascii?Q?4aj1TMFfKp7TDQF8DMBr2bEx5lUKhetPqZIImjfQWMwTTSYpx0iUGEYd7QqN?=
 =?us-ascii?Q?niyQNpmC/FTeEB0QVK4ayUiMfd9PkGQCfvCcLnQwlqyL2EjXUrhDTAuSba+H?=
 =?us-ascii?Q?mTNIFLtFpmA0tjPZ1TXH+50gjmgkqht9WPq/Xgn8oypTTPWQhU3uThSD6b/8?=
 =?us-ascii?Q?m/bQqjpl/2ZcxyJay5Pjo7bhN7DCiz6F7oCtrWEJLyE2LoyHodstgjK8MDlV?=
 =?us-ascii?Q?f3o8x3DuBjpWWivQJ+n/f2hjJYssNsUgu6YuOaLo00AhR8TSlC+4Hs6boh15?=
 =?us-ascii?Q?rPyu2ycX+KmOsvnQw1cSVSiw2MBBF1EF4cbq3uw8v+chNJv3pqSfcOyZsG0a?=
 =?us-ascii?Q?Te2U22px+9nxi4bz72k6jLEk4KjGrquYzpWtXoUTANF6BOLgrpWc4pdmoEcc?=
 =?us-ascii?Q?vRl6kUoDuAkiXRerjUNRf4p4MYSDmSDNLvvns8fPtodRKBvKOdpMTKDEZaUP?=
 =?us-ascii?Q?U/ufVtfBFHdY66m+XT75RCQh34j7BpadYQehtyF/XQOTalngkDS3w1tLEchc?=
 =?us-ascii?Q?l2+0mfMZW1CCdfhaDAj0F1y/WrzuqLYkLhkPJWOoEf1Ep/rnlJ/ekOxcZY6I?=
 =?us-ascii?Q?ERsBaiaeLn7MZ1jklwS574vCPz+rdxgMnagYdnx7sSKOmYIdXVd6qzSmTMqx?=
 =?us-ascii?Q?AEve+AczzBOwr5bk1YFZ1cpTzE+QMyMURxo2gA9smBM9bN+DJfpEFQEseqb9?=
 =?us-ascii?Q?YRMIxKo5xuYkOQieNGErXc1+OubvsemoHovB3N5VOk3E0dpeHUb00RCxcQpp?=
 =?us-ascii?Q?xIzygVOUt2rcKHQfcNp9dPaeaY3RfTgV6ho7KfbgU+SjJE12+zgBgOmpPgxm?=
 =?us-ascii?Q?/7x85aZqpk3nxrPbKYbIuCm57TuWshklNPbP9Vk4+7tYgDkAKdo5q2CwF28Q?=
 =?us-ascii?Q?4blnku9/F6/gkOzEw2Wphkjq5DdQF+aSvQafPB4eu8vHfhl/XHhkKZ3lgGqz?=
 =?us-ascii?Q?JCleA97pUJzNo/hEidkv9pcqQHMYkr3836hNp3xL9Z/zFXdy2Ra7tjG6rgSb?=
 =?us-ascii?Q?M+wNhIsA8vxvIVGI0soJcaGasWt1PMmaGInokfviHg8rodPvanFyP6FxTyet?=
 =?us-ascii?Q?n/m3VWqvaw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b678a6f-f0bd-43ed-a80c-08de5d979abf
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2026 11:31:25.0633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /7O1MKG5FIs6pRPvr9+g+EvpcoyiyYvKvxzO5ixmtd0IHXCMuTqdtap7VR70/gucNFYuQVwrLWuR2RbHP1Y3O2TZhxhXFbFIA7wzYM5qDQk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5253
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769513490; x=1801049490;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S4wiefKVb+7YijlTavKkOV5huRnbuG6mmxhaYz7Unw0=;
 b=QOsCA8dBBXK07m4MhhYZDX45CVXDmgxvDVYG7CYJrcgli1x+Kfnha8j3
 ylGvhuN5O3iHXxvSCzSEiBRpdG86+K4UffLHQVD0sGZnIOyEuv0WK+fjr
 AaPf1VqH0dpJ9+chdDCEkGcx+HBsxcamHp/vCVGNLdRvMaYR4P0yIJfWa
 P+bwDQLTiOnZfr4lixHrXiLNJf4v2VoD6cmXg2n7zIRJR1reDyI7KNdLa
 l4dVvQwerR9JVxatt+Qiq1bU7v8kDK+HVrw6foDxodBN9VIeFqaLYaxxp
 FG6TpWYsvqtEznJV+O1yxiwN49rUh8u9b05exLs5S1ZjFG13hslf+1t32
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QOsCA8dB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ixgbe: e610: Convert
 ACI descriptor buffer to little endian
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:dan.carpenter@linaro.org,m:pmenzel@molgen.mpg.de,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linaro.org:email,mpg.de:email,BL1PR11MB5979.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: E9CEE939FE
X-Rspamd-Action: no action

>-----Original Message-----
>From: Keller, Jacob E <jacob.e.keller@intel.com>=20
>Sent: Saturday, January 24, 2026 12:41 AM
>To: Simon Horman <horms@kernel.org>; Kwapulinski, Piotr <piotr.kwapulinski=
@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; dan.carpente=
r@linaro.org; pmenzel@molgen.mpg.de; Loktionov, Aleksandr <aleksandr.loktio=
nov@intel.com>
>Subject: RE: [PATCH iwl-next v2 1/2] ixgbe: e610: Convert ACI descriptor b=
uffer to little endian
>
>
>
>> -----Original Message-----
>> From: Simon Horman <horms@kernel.org>
>> Sent: Friday, January 23, 2026 12:07 PM
>> To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;=20
>> dan.carpenter@linaro.org; pmenzel@molgen.mpg.de; Loktionov, Aleksandr=20
>> <aleksandr.loktionov@intel.com>
>> Subject: Re: [PATCH iwl-next v2 1/2] ixgbe: e610: Convert ACI=20
>> descriptor buffer to little endian
>>=20
>> On Thu, Jan 22, 2026 at 05:46:32PM +0100, Piotr Kwapulinski wrote:
>> > The ixgbe device registers/descriptors expect little-endian=20
>> > ordering. Make the code aware that the e610 adapter operates on data=20
>> > with little endian ordering. The extra conversion is required on=20
>> > big-endian hosts. In most scenarios this conversion is not required.
>> >
>> > Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command
>> Interface")
>> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> > Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>> > ---
>> >  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 7 ++++---
>> >  1 file changed, 4 insertions(+), 3 deletions(-)
>> >
>> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> > index c2f8189..f494e90 100644
>> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> > @@ -113,7 +113,8 @@ static int ixgbe_aci_send_cmd_execute(struct
>> ixgbe_hw *hw,
>> >
>> >  	/* Descriptor is written to specific registers */
>> >  	for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>> > -		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
>> > +		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
>> > +				le32_to_cpu(raw_desc[i]));
>>=20
>> IXGBE_WRITE_REG is backed by writel.  And my understanding is that=20
>> writel converts values from host byte order to little endian.  So I'm=20
>> confused about where this is going.
>>=20
>
>Yes, it should. In this case, the raw_desc value is being converted *to* C=
PU order to work with writel...=20
>
>> >
>> >  	/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
>> >  	 * PF_HICR_EV
>> > @@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_execute(struct
>> ixgbe_hw *hw,
>> >  	if ((hicr & IXGBE_PF_HICR_SV)) {
>> >  		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>> >  			raw_desc[i] =3D IXGBE_READ_REG(hw,
>> IXGBE_PF_HIDA(i));
>> > -			raw_desc[i] =3D raw_desc[i];
>>=20
>> I'm also curious to know what the intent (if any) of the line above was/=
is.
>>=20
>> > +			raw_desc[i] =3D cpu_to_le32(raw_desc[i]);
>
>
>It's being converted to LE32 order here. But if nothing else touches raw_d=
esc is there any reason to convert??
>
>>=20
>> Please don't use the same variable to store both host byte order and=20
>> little endian values.  In this case I'd use another local variable,=20
>> say scoped to within this block, to store the intermediate value.
>>=20
>> And if raw_desc will be used to hold __le32 values, it's type should=20
>> be updated.
>>=20
>
>If I understand Simon's comments correctly, this whole change is a no-op, =
and unnecessary. Writel and readl already handle conversion to CPU format, =
so unless you have some issue because raw_desc is assumed to be LE32 somewh=
ere else, I think this patch should be dropped. If you do have a real case =
where something was wrong, can you please provide details?
There were similar concerns before, will drop this patch,
Thanks,
Piotr

[...]
