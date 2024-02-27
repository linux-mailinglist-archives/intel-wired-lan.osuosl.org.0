Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC64868FA0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 13:05:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E19180C0F;
	Tue, 27 Feb 2024 12:04:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f0Ad99mjmYRo; Tue, 27 Feb 2024 12:04:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA48180C1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709035497;
	bh=g+tWnR9KUmuBsCRi8f7lVqoyMkSSXys/E8itunR84DQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GBJIPgkDWzOhqSw3JOGz4GGwZQH+/b1g5Qps34D1kKQTM7mDhphV7dqRkGiU//C9K
	 Rza4APgwk+GcF91Fj7xmuo86IkJwsweSHD3myuaa51ucQGjATgeXzVjsVegyTUR6pM
	 8iAWIuvpVM6IhGXk9VXwXofnQBcW1jmV4wE71zf9E7Mbzzr6GZCpQPzdzqUxuo/HNf
	 FYpkaxSq+xXDS64A7Z8gdE0t/adfvmQgcX8bQleoQpydBJiFqTpFamxrW0knPXLI1/
	 qHB/klch4QDVypLpolwHkP2hu3icDNighJt174S/jHnFYp4mHE8e3OniLuaxBl0snh
	 urxZ0sA7/lWgg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA48180C1F;
	Tue, 27 Feb 2024 12:04:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0DDE31BF345
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 12:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 05C65405D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 12:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id klbpY9IXyD0f for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 12:04:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 846BF40459
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 846BF40459
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 846BF40459
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 12:04:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="20914273"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="20914273"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:04:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="11689214"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 04:04:51 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 04:04:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 04:04:49 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 04:04:49 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 04:04:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l3d0uVJhIzXN1dos1ZRZHtqlXZQyjkFqld8EIzyaL+iXnUE7XuSKUQkaMM7V8Lzz/VmZHcYwk7ts7lbPY8V0QsijV1ma1eF0ScrVspJ2coLLIrEYDG3ddm9z2/gcKfICTKcp3dkB2MDGLuudofUhvV6V0ic4sD0yJboq4WwOXcnAoIYrebkvLIgZ3/Iwn+UH2Ek1mnBNjUuCeN13TP68UOltsnwLWqPhn4I6Fs+xzw6sunyYXmZaa/yh5c1W5e/L93+WDkR77etelk8IqqNDkKCHF1BPhSwLceiBvJpBKp+HMzvDZexYTOJ3YYeLxj6PllUtQqJx9pE1Vcjc3ssYTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g+tWnR9KUmuBsCRi8f7lVqoyMkSSXys/E8itunR84DQ=;
 b=Hu507WjlsT4b/Cqnq9TV1wbSq/5fogc5cIqHDmciEix+5ptuhiY+X5RoaLdOH1iRuRnudjVE0SwzDjsCqApn9kac07uteRLa2t13S1zF7RPKIhuOl514qjgNLKmWWd8eqS6efv8IHwqEvr1k4n721k16x79fkh/9vHra7kz0rdR7UrJNitrr6FesFhsyKZJdSPSsHMVe1ohn7dw4s+LZQTKSAksytwVG7qMhRa/3GsG3AG9AGTxcRg1jaYGPCkflPF0CSTp5kFnfwepIeL2B/jlCFYfOgJqjD46gWYOiwkyfbmLY9m/5rMP4t3HWJDl0dcTHb94H48Yam2hJCaQqfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by BL1PR11MB5304.namprd11.prod.outlook.com (2603:10b6:208:316::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Tue, 27 Feb
 2024 12:04:42 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7339.022; Tue, 27 Feb 2024
 12:04:42 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-net v2 2/2] igb: Fix missing time sync
 events
Thread-Index: AQHaZFicYiO+YWPXJ0KsPZBJcKpe8LEeISfg
Date: Tue, 27 Feb 2024 12:04:42 +0000
Message-ID: <CYYPR11MB84294B0232543C809F7B060FBD592@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240220235712.241552-1-vinicius.gomes@intel.com>
 <20240220235712.241552-3-vinicius.gomes@intel.com>
In-Reply-To: <20240220235712.241552-3-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|BL1PR11MB5304:EE_
x-ms-office365-filtering-correlation-id: 2d142c34-480f-4d50-720c-08dc378c4829
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JLPjFruzPyQr3KQL4TZBE1E3kaK1upS0/XCSKqDWG7EY4pBx16hFY1g62ufQA5ZlYQdoTb2f9S+39tDqYHeXV8u6CZEBH9YdwOLCS/JRKHv36YOtrVzQ6bKKxnHTjbzrMtWZmsZ6X+4sbAWCDATygtIDXFJk0LLLc2HKuhy2duu66obJT3wobBYkaPpOt0utdO9BrEzjGBuni2LtfI321hI+AMDGRs9ZxXSvE9MtuaYBDDhBP2sgFz8HVhm+jT2CPPf7zK71caHf1TevbqG8HORejtduU2T3j9XYts3yWsxPytB4RznK9PH509mTMehE2PtDuN5ih+Spzi1XWvesA0SXO9fsx5nWNnHdJSGIk+JR/FWzDyEr3bN2MUUx7DMwD/9vw2KgmdlkK2k0PMuwJibQ0Ef3Wp/V+cC0Tnd5cMHIi8Qjl1pEYXm2KmvhjGyNn9DrFpg3jfeHeqnl0jAJo2n33l7WBocXDZrZDcRJr6QbcrdApYmhpyTSIsGM6l3tjcQFCK88j986A5+BWhR0yZK1Fwufp/w2gGbh6vZVdSquHGLJqyTWNddy/Rdz+Z8zOBPYQsLRQBJgdUGB2oNtAzbMcT2IV1DVtZasTmBNgJmdQ7qCXGZA6YLikyXvFLwtuZl4KTsbRs+04psk++L+/NdZNxkai8I6sXx4qbA0c5RKwSKr9zaOfcIbef+uXSIHl699J6FYi/Ay3LjK1Qt0CA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(230273577357003)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R8639r3p4zMkUT/kKTtUPi43jl8aWRnJpzE9ucccPgWlLQszIalnjkDeqdF4?=
 =?us-ascii?Q?w7Qr/CtBEhP4QiMRPok5xvZxR4f4nWUq8CQ+pPnxF4LkClsO9uWjyTdFHDkQ?=
 =?us-ascii?Q?M42Mi6O5zXvzctSWTWafJXnQPJlsJdnMhlvnD6rtSTU8GT7W38uT7LSD+pjz?=
 =?us-ascii?Q?tetD9nO9+cmiWUYNzk1NJsa9N2iJWHZ6rKvUv16dgl+ALayI2LmSqppn0v2N?=
 =?us-ascii?Q?ubAt9ZlLUI3q9ClER6wVoPM207P1EGQ5SdA/imtAztijF0tYpsf2Ytj9pUTt?=
 =?us-ascii?Q?li2lXvHGCV/t6xB9M9qxJyfqAS/5ftqQJxe00gqstrbTxnkcJlLqSCnuDJfB?=
 =?us-ascii?Q?YRjmnlrO+uqpfIXfHhCQNm+rKEzjfBUjiuesARjorY+XS6gRqB2BRnjNd0b/?=
 =?us-ascii?Q?WUFshprocSq1Dt5dJsy2a/Si+doiT5dUanaC9rr+m4MN01aCgbFrYufbF5dB?=
 =?us-ascii?Q?qIgNVeV39yMLwciLR51kZ57qtJOEK5IA/q6AEsmU1D4UQSnFCDGY2QXZDWCE?=
 =?us-ascii?Q?mznNM99ACDK82AicDDw2JvMKFAmOECr9sR0V7IDR9rT9JIdylgTqMTo8bNYA?=
 =?us-ascii?Q?vt6a8gRxQdElWUKT9BHqCE3GjQX5LVYbyo8smDE4mCVIRNzRdqJoXc1We453?=
 =?us-ascii?Q?A9772Z9GWjfi4nOomBglK5mmPP+/N9+ApTBSncerskRPBbj0AkjfjPYUxArA?=
 =?us-ascii?Q?2ZbScWtM5Gp3Irea6ehFyivw0UdFuPInwUXEs2bBYHTFsXc6866ql7zdBtJ3?=
 =?us-ascii?Q?ZWUDzShmm8pWqwGT/n/Rba8m0HAar7Q+QvbOHvFt2M6fwAMNw4VOJqx0oZgj?=
 =?us-ascii?Q?XMH0zGj5F7D4YX12LA4wm0MYwezsmbuBGkWHjJzK069gMm8WgZMkjLFf02mX?=
 =?us-ascii?Q?zlBYoRFCNfQm8I6cmn12YDDjqacS0WwpxD8uVGjv7AD3TH8R2pHjsxAfapoy?=
 =?us-ascii?Q?+qG4RhpOuevPi9ZUFCRc4XNrir6qibcyPuH5EglgT/aRCUeqO18mwtWoNda/?=
 =?us-ascii?Q?makwEhv2Uj1YZU4SQyiODJQlXGhSM6S1nB5xfvLSHv0fFiLo+07UXiqTM89l?=
 =?us-ascii?Q?2FQy6ZmVsQI4LYrT23N7cCX6+ss6IO5VTXkbJEM89ef3Bg3OcWLMrYP+z2Qm?=
 =?us-ascii?Q?cRsapIKg/l6WHdOpd9YyHFnRhqHGi16jjqWwwxUch7IwPDwBLh8W4Vrsc4TI?=
 =?us-ascii?Q?Ml4Td9F0LGI2mKdxd90iBoH6nCdHCb/UcOGeH3mA1YxhSmoNfrNQBiAP/Cgo?=
 =?us-ascii?Q?yb/UujoBPDssVdeB6oKAR+885Dv7G0tXbTUIVTUhI5g8E+QsYG4hE86D2uvX?=
 =?us-ascii?Q?8BABrHL8R7gWAM/LmaZGpQUhetg1e6pTOanBCbHx5n81lGcXAjd7fvx/HiDq?=
 =?us-ascii?Q?hXFDOXReOXlxWzHZp4/HZ5S3oppaOoOsLDs0NB7vFJOKxhjdIy8gvHBXMLIu?=
 =?us-ascii?Q?lrGzKiz0gSpmDpuWeDQuNKcUOMzwXlok6xZEuQ/yWe7azNYfqhgo35FSBJAu?=
 =?us-ascii?Q?jngCpPlFysiyHsuim0Uv5BHw3tbuS8IzPK+nWw6X5zQDH7/8DI0S+hlPdZmE?=
 =?us-ascii?Q?Gf/iZegwP0FJX9B1w0HrfjU3pM2MsIuKv3wvzJQJ7oUaJnmgntZsESZExTjE?=
 =?us-ascii?Q?UA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d142c34-480f-4d50-720c-08dc378c4829
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2024 12:04:42.4937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AsR/tFEIxvw0B4kYc00/EKG86uZTFUCSNSOna2CHy6ijMPcon8CcqptNp8/SA1RnXNRfQlS7Q2UNYxf5wGInPMZmxL56W8f6U8+wlO81cgddaN3mqCR3bxU3aHtqLquy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5304
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709035494; x=1740571494;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VsICZEZ6j4ujaZM2ST4XZi3nOnMQT8NfynUBjzAlr5Y=;
 b=Of9cffMSbLHrQsZO4NQOwIdBwOp6pHf3D9X7J472s4qHtstVz756iQhZ
 nZXkW5zIQEk5osSR6roIK5GseAu/G8SxwA8bqe6uQ92BGItV83AYWlsfx
 oS+67yXIvK3gtXkGdTauc3qtJoihOhZl9thug4M6nfPmHZaoJNLYXAPDK
 /fEsgz/R41gy4JceI2ZUhHIUuaZvTDrJP6xMVOCWBuhs9auSlm9rQeB89
 co5uOX9y2Ab4sr+AjvskCwcCAfT6cVZJLkSy7FXAP0+lHZCT6dq0L/Igl
 SSTLaDN3+iuGGFU91DG7y230djATqa/XTRtebhVK8PqcgSbiwLVFWHxcs
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Of9cffMS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v2 2/2] igb: Fix missing time sync
 events
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
Cc: "Neftin, Sasha" <sasha.neftin@intel.com>, "Gomes,
 Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of V=
inicius Costa Gomes
> Sent: Wednesday, February 21, 2024 5:27 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Neftin, Sasha <sasha.neftin@intel.com>; Gomes, Vinicius <vinicius.gom=
es@intel.com>; netdev@vger.kernel.org; richardcochran@gmail.com; kurt@linut=
ronix.de; Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-kernel@vger=
.kernel.org; Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony=
.l.nguyen@intel.com>; Jeff Kirsher <jeffrey.t.kirsher@intel.com>; Jakub Kic=
inski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <=
davem@davemloft.net>
> Subject: [Intel-wired-lan] [iwl-net v2 2/2] igb: Fix missing time sync ev=
ents
>
> Fix "double" clearing of interrupts, which can cause external events
> or timestamps to be missed.
>
> The E1000_TSIRC Time Sync Interrupt Cause register can be cleared in two
> ways, by either reading it or by writing '1' into the specific cause
> bit. This is documented in section 8.16.1.
>
> The following flow was used:
>     1. read E1000_TSIRC into 'tsicr';
>     2. handle the interrupts present into 'tsirc' and mark them in 'ack';
>     3. write 'ack' into E1000_TSICR;
>
> As both (1) and (3) will clear the interrupt cause, if the same
> interrupt happens again between (1) and (3) it will be ignored,
> causing events to be missed.
>
> Remove the extra clear in (3).
>
> Fixes: 00c65578b47b ("igb: enable internal PPS for the i210")
> Acked-by: Richard Cochran <richardcochran@gmail.com>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 23 +++++------------------
>  1 file changed, 5 insertions(+), 18 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

