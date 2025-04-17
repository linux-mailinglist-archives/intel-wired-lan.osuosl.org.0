Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2934A92461
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 19:52:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E04F60899;
	Thu, 17 Apr 2025 17:52:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D56Kp9PQMoyU; Thu, 17 Apr 2025 17:52:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7241A6FA1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744912367;
	bh=PLUHU7bu3IQeLuPbnuvlwgJyc6KEVChYzwYzvBPQsVs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UPP8l96i6C4zP7vGqhpl41ZgIM3B+J0Lufb5nbLPDBkV45kTsYsYp9QbvYBYiAzcK
	 8kT/HUqTumHdAPAufEglmM7zEjZqJqGpxrAtG1zQiKIB6hOAcyVfIuyD9Xmd38Nw9s
	 RfOE+eImCfSzvKmxcEPtLT0tGmuzc6r/9dji1hWCgGNkHO1eXTuj9kwrTTk1i7hRMa
	 12uCN11I1NnUjmYzXpo3rU0KJOUvurWV9VIEgEItf9khz6ieiGXuVHSaXyqAmK5ZNT
	 /A3MFueRJWzpM731AFxs+GjB1xoP0JpEzCWT9HyDzh553DbE0Rjw0rzFvW51ZbZGwv
	 xUWR9vnHFRKGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7241A6FA1B;
	Thu, 17 Apr 2025 17:52:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EA5191F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 17:52:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE799818BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 17:52:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y5qkmQiSgYww for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 17:52:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 69E678120B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69E678120B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 69E678120B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 17:52:43 +0000 (UTC)
X-CSE-ConnectionGUID: HgjbXlwAT4qTgYnaCygEBQ==
X-CSE-MsgGUID: 3nBKBx0mT3SEQlwz972HLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11406"; a="57168860"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="57168860"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 10:52:42 -0700
X-CSE-ConnectionGUID: qyMo3D5qQkq0o3wkYM8bAw==
X-CSE-MsgGUID: XRs3a3VPSceSqA0EbTvT9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="134982864"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 10:52:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 17 Apr 2025 10:52:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 17 Apr 2025 10:52:41 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 17 Apr 2025 10:52:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fQFj1ycX0sA7CN07V9VXdmVwrF/OC2bYzd6LwW+9rkt6cwrhpidDNwuI7RX/aDfDaBgiEP65ZIh58NDMdLdjljF5cZUlLGJIfR3M8qc6zFBku8IVu9a6hK8X2A2RkEUI1G4LQCOFaDV+kHEd5RnXtwjyEed7GMH4ieVN6oQ6xUT13kyjA4THbGbvDLPpV+ANh645yzLQk7biGP5nvdeGdDKyFVj9DVr1Z8UfyKeSaxulxvz+5qP9Std3I0zvliYgKHnSTie3LgQem8y8RpFmAikG9BovxK9Bkaa4Ni/ii++9OWBrOWhBv8XGq9vv5Vv2dnvkvjz/96VMXnZcvzmRRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PLUHU7bu3IQeLuPbnuvlwgJyc6KEVChYzwYzvBPQsVs=;
 b=tn/AC5dBJowZMOI3q64OV8I9/3cB5e0GQwE7gP1ucNLY7yKHaJNZ8RMrEZ4E4nrQh2c8vc1UfSJwkz8AasBKbTdrFWM/HwQMVFkbL3PnKbiVRr1NceVM4aZCKMy+QwwkPDkKjhVxPgN5+Ygy0UGCHMw7ix4hd4vCK0Knher2JSlPpZ2Wc7aMVqoPx2caFiQC2hM13Xmruqpig1GBhfI+iiueMJhVYB1oQdtkrxPHfkkKg4MTdd202XfwpiL0BBjV9zjWgd9lqEHO7Z0QCYWW5Kuh0yoyJBZQKvI9q1Kx4ynz8xbxAfiljzsksr3KVSXgKWqN9gCWZ0EtvKzDIdFIZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB4934.namprd11.prod.outlook.com (2603:10b6:510:30::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.22; Thu, 17 Apr
 2025 17:52:37 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8655.025; Thu, 17 Apr 2025
 17:52:37 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Damato, Joe" <jdamato@fastly.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Igor Raits <igor@gooddata.com>, Daniel Secik
 <daniel.secik@gooddata.com>, Zdenek Pesek <zdenek.pesek@gooddata.com>,
 "Dumazet, Eric" <edumazet@google.com>, Martin Karsten
 <mkarsten@uwaterloo.ca>, "Zaki, Ahmed" <ahmed.zaki@intel.com>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit
 492a044508ad)
Thread-Index: AQHbrmoYFHYXzwUONkyzBwPhX3SQxbOl4UCAgABufwCAACW4AIAAcbwwgAAW+oCAASe2MA==
Date: Thu, 17 Apr 2025 17:52:37 +0000
Message-ID: <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <4a061a51-8a6c-42b8-9957-66073b4bc65f@intel.com>
 <20250415175359.3c6117c9@kernel.org>
 <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
 <20250416064852.39fd4b8f@kernel.org>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
 <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20250416171311.30b76ec1@kernel.org>
In-Reply-To: <20250416171311.30b76ec1@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH0PR11MB4934:EE_
x-ms-office365-filtering-correlation-id: 8cf276fc-c8b9-4e1f-6a19-08dd7dd8a410
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Y9gIaD25GzSKOTh24Af+LMIti34CSXx8CUX2ga+sRyW8j3e3MVLfzWt7OxBS?=
 =?us-ascii?Q?HXjKii1x7YlkwstHhHqgJyD1e9s3/RO5RbF5h0N+NCTP/jP2Q/ts41mB2DJT?=
 =?us-ascii?Q?PbpJh6mkk7RF3pewjq7vZnd9ytd4aCXE3CbUw3iTMbUipaDsJZb9KKOzoYkg?=
 =?us-ascii?Q?s9AatWLTeNHcaC0xJwqfMVGKpXNaqW/WNhST+8wLHLl7l75zPVq9lgwvG4RW?=
 =?us-ascii?Q?uDPXJmP7SPfvXApf81in/5LrE7pQqSr3+MTBXdXmhTN+6TKt2LdiKfDZc/tP?=
 =?us-ascii?Q?7ZUHjZYKNN/IzzlthI4AVJiKOLwp0cFziuSAJBz6yVpOybn41k8FwzRKookA?=
 =?us-ascii?Q?zmCmF9MUg8yo+wy0B3vxqwz6h9ILua/5YVtm9fH+xbZsU4FnoX6AEGNUxa5T?=
 =?us-ascii?Q?Dhm0SAytbK5oparN6i/RxlALLRNldhriSYlUdFUBMgHAV4L7WYvpz308Hhsj?=
 =?us-ascii?Q?RGt953gg/fGnpwV8w4iJ4zsmSuGnoVYYJLssiyrjTQlOQW120Jd+q9c4ezO+?=
 =?us-ascii?Q?jQnpVwex7LjWGkE4hC8QuP3QRp+k5JTNGEwUi9nRJUJfDyE+jQ3yjcSXz5CF?=
 =?us-ascii?Q?cuurvPlAy8FXSjKt6/7vCp0gjaPEaPsJnYjDTdlpTSFtLVPKMQYl2YuKcZZn?=
 =?us-ascii?Q?zDxiboQciyY1kTN8B7DpKWImOLBIRAc4fYOmELYI6EsIhW1Ob4RW91ZyFa1E?=
 =?us-ascii?Q?gIMENzC4X+aqwWjAX3ko5tBzDBGI5Zss9IxRRZO8qqcXNphWxia8LFIBtjQJ?=
 =?us-ascii?Q?mIW871WbeEUdjCueGYg+dHteKtk2dtkymUO0sSSte1CH+iSLdadImEaKJcbn?=
 =?us-ascii?Q?XTS3pomJJGN8pWY/EPqmAtTgCf2qNB9/T0nm/hngWNlGZE0Jvk+oeQ/nfZUE?=
 =?us-ascii?Q?YI1E3s8JgqeX92qDVKkik0WcMWYIj0bqNdFLSG0UkAHAfgjq60Ptkj/4BQCM?=
 =?us-ascii?Q?kAGkEE7sc9nV/e/w/TUjNyWaZSQth7tHGDHyuti/3E6+4mB7X3T/HuGvfEla?=
 =?us-ascii?Q?WQLphGxQUDNjJy3gbxmtQ5uer8EYAErRxR/Q3EMEvVYnig0P7MNeqWCPnAtE?=
 =?us-ascii?Q?WJzLJqoyV4VRpBp2SRPCymX0kdlB6PejSdGLdaWWxOztdtI9WPvqERpEXiAU?=
 =?us-ascii?Q?asJbIekgkNp182I8Cj5Qa5VQYS4eu4yE5qnAYfCjxUjsZRXgHDciM4cJ0Lsx?=
 =?us-ascii?Q?3baL6ENjPCm0xwSAwqMpaRHRewfEqLGC2bX/fJHU9Lj5VYGcHN2w5Aplqoe+?=
 =?us-ascii?Q?LmIA8uTW8aiav1Xvz99GkniHcBhUPzCvARA7NgZPXQIhWmiVNBv4XluZmc1r?=
 =?us-ascii?Q?7zmWKCRbHCKZu2+G9YRokjH9saqgWtQZFXDZR5U3/CTOJ8t6nbm9FJmUR8oa?=
 =?us-ascii?Q?U98ekY0CLVv8FczVgkhBmpnCR+DJEGOuSnisJNAixconwPdUmeOMwSl1HgFC?=
 =?us-ascii?Q?pI3AbiIpyFp5qQLoNK+4zHChAhcDBg01M6wqLUYmU3AiZwLo1KSZvQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CnzUuVBgVJHiIKAZ+VIDJAf+9vhMSl9VaGw9UGe1ZqdQ66GL3Rqw62V/KH1p?=
 =?us-ascii?Q?wLuhereadmiBkiTVuCS4ideWbqINvTNxxttHIAjwD5mCrgtbm3Vtr/hw91jm?=
 =?us-ascii?Q?+yYA/kIj0kgTFenUTMfYeBZDcFkOF19YqO/0Y2TLgzGyqJ0b3JtT45doft74?=
 =?us-ascii?Q?O+NYxd2CCxSOh7t6t0zDmh71397g1pcZha+KteHlabzbbrbmpNt++xx0GOHc?=
 =?us-ascii?Q?jxz/UUPKtW3QBOwpGgGyYyblFFAbevZwNLa6NGGBOHpkj63EBvTnRCUqilXY?=
 =?us-ascii?Q?jy0QMKF6Zvtf6j6/w3lwlu3/QbdMlX1kj4iZx5k9dPR/YNE9EHlIYrHcUMYA?=
 =?us-ascii?Q?K8kV/lhx+Zp4cD4hGy1FjhaOTloj72gjKuU6G4rFstH7UdUdon013uPOMjSy?=
 =?us-ascii?Q?Rl6prwmWGkZGGA7g0aOpktEiQ6YisxmQvp3wEBB5QEFhuaViHM4ra/moUrAX?=
 =?us-ascii?Q?6Yw/iq25PoU7Sx2f0mNWh1R2EJmUmYTp9NfLwrr+pHn/QYJVHR+Jpe6dUna+?=
 =?us-ascii?Q?H5hgSaVM0iNnkp+PtvezQo3P8nQllCOW5498e/NxftFOOy/gU7kxpTsjLfyi?=
 =?us-ascii?Q?d17LnvXa/VSP0hdFDLt7ExiCvd01nO5xMYBfF9r+N72Cq5XxrsfEi+EUPX7w?=
 =?us-ascii?Q?/xs9vEa2S0ikTeqr9+7ZoA+ZHFnung7dQlkpiPHnHpQ8haDMGkUjYNIj/pNM?=
 =?us-ascii?Q?bxZqgdMLPvtASDhn9z4e+NdAFFLFJyW2Pcpcev8EhzgSCTY8oNLPbZi8/Ufu?=
 =?us-ascii?Q?THf3+K5Bxc9vU24mJWXMGfDAU8exIhMLG28SojeCQlu2ta4jJowE3RkmxPr2?=
 =?us-ascii?Q?QZ28b89mLT7jLuS8xozF51tjADLrkNpq9tK5H9zpJu/MjeqS3ICrLF/ONeBq?=
 =?us-ascii?Q?NRaB70PkvQsuMGunrjEco3JyY/A0/Xz80M/pPmOLwGvEFnQI03gnr8jSC3OV?=
 =?us-ascii?Q?etf9/uCVZptGYaajCCwxJX8EGrEX/FgDglYgOodOwNVmNSP3uEi9Ykbi5p7Y?=
 =?us-ascii?Q?bUdQd/XZl0OnNBxVSKyT3ga7BQoGLXY8x+Ok7dzF4HjhF+52aaF1+GNmGv3N?=
 =?us-ascii?Q?xeEqjV/JsA7XcV0Rslc9AWJICS8+8jkFhCF17gLWMw/XypI4ef9t5R/ox6gu?=
 =?us-ascii?Q?wbjtkdzisltf+WgJIIz8TesRIO38ZBT1Hmv2YkN6OEm2NWnXw0OxdPt1m6V5?=
 =?us-ascii?Q?t7k413izvOHtmNouWaoOGRPRba2p9FNH+lXZ+lzUpNiSafVWL3RnAyeuAvUJ?=
 =?us-ascii?Q?ST3KGIEM55qEJVXktXMUXbjBx01Ybeoaw+V2IfdERyogoJac49dWGYeUaQ1t?=
 =?us-ascii?Q?dTt9fo4zbLXmokCPkqL0YtXYxdZhTdyYBegkGMkdVBw6Dv0S5TmVy/GjV6Ob?=
 =?us-ascii?Q?d1o1Wla0x9Ie5GTfehz4sZZG1jRUAqiTpjnoNPXTXMI1J43TtiH2fs2vKW4k?=
 =?us-ascii?Q?7L3ytVntc1Tb0P7bFadSb9725/NDbH13bS/H9Lk/6PvM7xUXK/bsn9u4bd14?=
 =?us-ascii?Q?hW5YkUy5JXTHkL3ehjOySerPgMcfaCthm/w4LvXroIeyIk/9tB2/uUr2dFg1?=
 =?us-ascii?Q?6dI1MxV7Zb3N8WjGBxH5/m9JSl5JXqph49iwAa3/UgErhTTUNInJBeNhqchC?=
 =?us-ascii?Q?Ug=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cf276fc-c8b9-4e1f-6a19-08dd7dd8a410
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2025 17:52:37.5327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4k35749da7ClwmfxPpQhWxqL/G9Zbz6AWLqYd3mnCzBtOlPIjQuk777v07wF2dcNUPPDU+x+97JNs3sV219Yfa3CgpETGNT7KOP2ydyV/2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4934
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744912363; x=1776448363;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PLUHU7bu3IQeLuPbnuvlwgJyc6KEVChYzwYzvBPQsVs=;
 b=n215sn+jVOg5Nrt8SJ0BD/SvS04ZAW7JVZXu7UfZ1tRf4gFGCcKMp4dU
 ZJP2nNGfjOqWt5hFRI6pznZEm3zp0bqaqeMYm3TbW3rAz/BxnVsyJ2pBJ
 HNJXp0Gr6CdOUPMME5kOlCALPYWpeRaNqeV35JPlW+8vGu2o/row/4g1Y
 shEMyMm7LH8rGDavjw80/uskge8GOMldgkbnhjIQfRLLqcrkmUPv8terZ
 NzC04Xrx+of4gEcUfqHX4NAEPsY7Sb/fD3sDCQ/cu7/7VQZRGN7WznUi1
 Pu8wOzX/Isx3GlZ94S2IuPljLkVJgZIZ7MDim+CuctYF15f9jBW9/wNOK
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n215sn+j
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Wednesday, April 16, 2025 5:13 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>; Kitszel, Przemysl=
aw
> <przemyslaw.kitszel@intel.com>; Damato, Joe <jdamato@fastly.com>; intel-w=
ired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Igor Raits <igor@gooddata.com>; Daniel Seci=
k
> <daniel.secik@gooddata.com>; Zdenek Pesek <zdenek.pesek@gooddata.com>;
> Dumazet, Eric <edumazet@google.com>; Martin Karsten
> <mkarsten@uwaterloo.ca>; Zaki, Ahmed <ahmed.zaki@intel.com>; Czapnik,
> Lukasz <lukasz.czapnik@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with =
ICE
> driver after upgrade to 6.13.y (regression in commit 492a044508ad)
>=20
> On Wed, 16 Apr 2025 22:57:10 +0000 Keller, Jacob E wrote:
> > > > And you're reverting just and exactly 492a044508ad13 ?
> > > > The memory for persistent config is allocated in alloc_netdev_mqs()
> > > > unconditionally. I'm lost as to how this commit could make any
> > > > difference :(
> > >
> > > Yes, reverted the 492a044508ad13.
> >
> > Struct napi_config *is* 1056 bytes
>=20
> You're probably looking at 6.15-rcX kernels. Yes, the affinity mask
> can be large depending on the kernel config. But report is for 6.13,
> AFAIU. In 6.13 and 6.14 napi_config was tiny.

Regardless, it should still be ~64KB even in that case which is a far cry f=
rom eating all available memory. Something else must be going on....

Thanks,
Jake
