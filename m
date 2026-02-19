Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2P9OH2rplmn4qwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 11:43:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6008F15DF2E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 11:43:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20BD982277;
	Thu, 19 Feb 2026 10:43:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GzLy5zjrQy5C; Thu, 19 Feb 2026 10:43:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 83D2D82281
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771497829;
	bh=K4/hEeHkIEKqNGZiwptXAhp7Rk1Ss2b3nrvSvizJV9w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zKqFkcla2Q/N7zY+RHEoDMlspjw/C1SOuPg7Gu+1XSPh5lE0fjLEjGBACyPaPenya
	 DHzgECuvPm0q+kNSvASAEP7Ggd/Qu+2oz8yVckxRx9aWtbLWcJ7upORDcRHCxl3HfQ
	 VaZH+/w6ykG4/mAc9WIo3lNuUnJsZgYMkGhtNNFsLe0Z8cVBcd1UIXvOjJwCKQHc/E
	 gzhCzo1u9Ws+9LVU67rEunaZRhHzf1hHNxeBnMTnCok48k9pdVDMENs9g8TAoteFNF
	 T99tTwo8q2y+GDx2wrBnFTyx48yX75NWPSnYMHn3kCvmG3pVMuKDR5aD3jkknBLgK1
	 /eLSj4KiAeQgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83D2D82281;
	Thu, 19 Feb 2026 10:43:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1BD39183
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 10:43:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0148A40ABC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 10:43:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0sEnUpDV_QoJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Feb 2026 10:43:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0EBA5409EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EBA5409EA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0EBA5409EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 10:43:46 +0000 (UTC)
X-CSE-ConnectionGUID: qBoTS5tySKGGwmzSxo+4mg==
X-CSE-MsgGUID: UWbtA0XrTiyIeRLGEQIUkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="75187678"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="75187678"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 02:43:46 -0800
X-CSE-ConnectionGUID: A6RfIEyXT1iJLgSH68qchg==
X-CSE-MsgGUID: wzkXv47MSze5+z2KaAGb4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="213604707"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 02:43:46 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 02:43:45 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 02:43:45 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.1) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 02:43:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ivTVP0nRTPYfnUgMCeS8aplfl8rWSgGj7ji3cRV6oJ2is/en0RS+cZzbFOz7W1cJeLkNK9nYVOvkASLANSWEMkWbmLKHtXf3a+GBqL8GOVQY8ZU110mcy7PIyGnnPgdpy9uCM3DCkgs8eRQGu+KlyHv058SB5uW0jq+Q2/qYtKwjJhNPGQZSRKNffHVBTPbE/5otTvnc0Zwo5O3ruhwC82gAdFzxtrQ5FMDgPkjSuXMI+HEf+7FZvWOIzDOqcXD/+KOXcTx4pkDikvneKUPoEfgc3kbehK9pG2q/synDG7DxLKXZnZrch0T1AOwlsLyf+TPeT6VUsamvdRkmU838aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K4/hEeHkIEKqNGZiwptXAhp7Rk1Ss2b3nrvSvizJV9w=;
 b=bh6mhEkK1VhRO3HX+fqweckcAvV9rFv8KR7FEZ9o/yVT2ZS5ROi7ozl6Cs5UcJqhhfYROvd+i9NEWmxpq3626BkGa9LqWncCG7EGdTRfLiTzL2bipfkdevmxgq3yk+p65G1eVp7vM42YMMY0j0Ggs+h40b1BIhKIUtTvUjLPX2DiV+mKxnveULc921S4cth4kgsbAMGFsxSbOPcI3Rxc/AHtNey20/8oAth0BosSC+Iprn73wIon6XdhzvqPJivIaEJ7vSCtkaaVPyiD5VuCgPOK9nRpyoQPxYGoeh0CiMsAcJxLkToD7+fZNsWONnFaidF+M3ygKDTauj4/H+njgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SA2PR11MB4827.namprd11.prod.outlook.com (2603:10b6:806:11f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Thu, 19 Feb
 2026 10:43:38 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%5]) with mapi id 15.20.9611.008; Thu, 19 Feb 2026
 10:43:38 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix adding AQ LLDP filter
 for VF
Thread-Index: AQHcZFvaTZrrUEyau0eHm8Qweh13+LWKUF5A
Date: Thu, 19 Feb 2026 10:43:38 +0000
Message-ID: <IA3PR11MB89856D58FFA2CB57CF7B446F8F6BA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20251203132949.325245-1-larysa.zaremba@intel.com>
In-Reply-To: <20251203132949.325245-1-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SA2PR11MB4827:EE_
x-ms-office365-filtering-correlation-id: d334691b-fa95-4f8c-d4d0-08de6fa3bdaa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?cRM4C/GzbiJpUU9S1+TV7npcgCt+QpHrnY51AqkR/H5wl5QrKtCSdu2MOBOI?=
 =?us-ascii?Q?gfUsN1VeQds0CWBku/otCAk0EVLD4GvhMT1jKDYl6Bv3vwzdNF+oc7WXVdpJ?=
 =?us-ascii?Q?bB3Oyv35a6vJKJD4Lc5EFDQJL8oc6tMC+Bgvta0ZxdwUmMyW/LZjFDC/Q5WR?=
 =?us-ascii?Q?E1gJrw58cWnaQIPVODaTxU4zEpDLcTfNZat/kj0pFqLawg1XQQC5NTXfUuwx?=
 =?us-ascii?Q?dGRsWYDYxzIJNdbzADJwNqq0uGeM0C8P8ip20acTJDbTXpVjdJqo/40P8wgM?=
 =?us-ascii?Q?CpgQzFFvXE/GOXS3ulqj+4G1bCBGTL6qUtAlFvNZNd50rqNxeM1u2sUsvTU9?=
 =?us-ascii?Q?KhSvyobyEltU3c6+JCC7oGyehe6f0R0pXxhhl0ufGsUQ2cpgIIZcdERfQB3L?=
 =?us-ascii?Q?hn/RoSn3HF3WV5AfPYDWWAaiTkVSOWX66fuZ6LzVKezc6vy1Jd0oig3li6Fg?=
 =?us-ascii?Q?1werurJzGPEz/nhh9Mpy+0cck33LGt5/FqIbqoBJBHX8s7LpunOcIWwo/2Tn?=
 =?us-ascii?Q?H1cbxyNlo+BBcTjRaH8S//cUgYdT7Jjed/ngSIZqfc8JFPw21cUqOYjdZciV?=
 =?us-ascii?Q?yfVT267SMCcBjdN0UxEyOFeaZQRN0qyDpw+jhSB2KjIq4TiQXw/47rHC2OMa?=
 =?us-ascii?Q?F5CotYVDFQyeYa4zv52R6ZMai8MaBNXdaN0LlzlNpsjm1plUpzuHQsv/qZi9?=
 =?us-ascii?Q?UW7g7WdDqBkYjWCokyqcKFD8pjQJ7RKTOamaPHk5AmJiZacZF343Y+muIMIM?=
 =?us-ascii?Q?hj4dIRG00mYsIrIQEudio/Nc0gishOLj255CNZvJImFuCo2gmqJjoHVfbn4Z?=
 =?us-ascii?Q?V3RUz8Qj24HEsg7HjHGAVgaUqL4D04JZcQEXjYLgIqZO6M2mPFn4ifY/fk1G?=
 =?us-ascii?Q?hVEwzvLeRqABUsMFporoHvImoODHRW98yUfJh/ERagJkNuunxEH49fkwbIIs?=
 =?us-ascii?Q?nJ7JSPabw88wuthb5a98s4dASQ+98b69JJ5diRLrQAI87YegkYif7Wa4GWij?=
 =?us-ascii?Q?WP/VglbZB9yyVZboqyiLHh2Vs4zBQqlJkpgOPw+2l0gE+HzEGZUxMG92hIRz?=
 =?us-ascii?Q?Qc0p/xmn/FdgU2JM6UcQupFIoJhWAg7ez3d3pmjCLqbTTsAzmUxS8FTp+Vbe?=
 =?us-ascii?Q?cL5zOMVSciVKugadS4uSWw80z1BtRWYxKVsMPC62zmjxTxVB7m4CdjZuLbU3?=
 =?us-ascii?Q?cItjlIb75zggFER4EymiAw72eo+ti8t8F+5RNk4DtBArxUiRWOR0mE3SzIG6?=
 =?us-ascii?Q?vBxy/35ZLxl6mNNdmwdgngVoKFmic6FUqlYTqp0VsKoueFNUkMReuR2t5pN0?=
 =?us-ascii?Q?6fjXuWQ7dhyDE/IW4uA/1eohxQXw0Hu8NxzrKl5z+0IlecU2dNbSjWj43qPb?=
 =?us-ascii?Q?GNJFxeAPgNTkn/C8IUzs5sclUOvmCpO7/9CTP8ddLoB+R2ckEtWjGc+di8K2?=
 =?us-ascii?Q?UMj4MAi5lUq1iTaRy+GqojZ/6EAs/6N4DfsN6gBkqvTNEWMIaNJ3K3whYeMM?=
 =?us-ascii?Q?zw4nBYO9xhVeF+EL+ODrENvjP1x03NxF1NxQODL8GYU96jizxOe5yvrn7ic4?=
 =?us-ascii?Q?D1CZ8nl+p9Rblbkw6oeiz6VWs9TSj+T1rxPYPJRY3118vElextZr4RoupeZr?=
 =?us-ascii?Q?VaubqN+R+4tjx0Zlv2KbLSs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9Nq6W46nysskM3O57uioEBicavDoCMb3Mu97ElrX1UQCpIOJqwk+koa4YeiE?=
 =?us-ascii?Q?ZYdCc7RqGMxJ2X7rInwBeuPoma2gu9CmlhjmdT4nhxpGzEcGeB2kdM1Rl5Xe?=
 =?us-ascii?Q?Q0iK2UfJHNi9SF3ADat9XBUhyHA3o4rgE1fOAeuWtlJyRGbvrLi6fi3QbdKw?=
 =?us-ascii?Q?DsdMG6DN2waNH4PbbWvDV5wIP6Tm0KKie5RzvsMhtEsjgXDoR+G6RaTNc6w+?=
 =?us-ascii?Q?enxwqAnhkhVtqBh8ovIdKyECbLDP5S69qeclYZy4BW/Odekl7OPkh7yDGTe9?=
 =?us-ascii?Q?wHRWijWhJW4l0ymX3Fnl0nGeMJ+wW94Owo7QyAxKp08JoEWGGEM62bKFoXS4?=
 =?us-ascii?Q?6UY9Om4410NJ+k9ADKVbAucvlEotN7US+ecTLY+Fjx3LWtNwAOg1XnZYZPTE?=
 =?us-ascii?Q?/1N40TzA98rjy/wXGdaH3qhf8ekDbiUONwKOgFgP2Z/lF5KCN9Rp0YmTOHg3?=
 =?us-ascii?Q?fwlJiSyaXAXJ+yi5SYtvB4Wr/2582u596ZTWrLcv3qs0YpdBpAoIhGZTVqmf?=
 =?us-ascii?Q?1xeamM9kSQQywGaoztIFOkT6yXjbI/f5PKhiabYtFg0Pye6cj9BJe2vSs7Mr?=
 =?us-ascii?Q?ar2pijwmmQI3PigA2D1M/IS6/F7+TV+0HNNrpJTkPHIbjVBOerD8TVDkoemi?=
 =?us-ascii?Q?SxhhuKZvl6fE98wcpRpI9UArVFkbGRIjF7keT0d0No3nGJOxF3S7WdSX8LPR?=
 =?us-ascii?Q?K0lQr+NSzEpG8v0g2dOo0iakA1ZvcGt4LpG+PfH1dXryJRsob+slNN9v47SG?=
 =?us-ascii?Q?A5Cyjz1yvBN1F0ARAfCMWOpVBGZQuAmGfhAl+vtZ5DsNV6orNOihah4BMg/s?=
 =?us-ascii?Q?aFzPlI0Dzgi4cH47yVtkNKGJj+vikFpLOLh7DHns6wAXAnZomO9ADS3o1oOK?=
 =?us-ascii?Q?DuXp8Edl9TfQh7rsT73H2cCV57XBL0ISyq2VVjXDzPe92+7guoQUHJsN9vlP?=
 =?us-ascii?Q?rlsluOeZHmVIbphdfyCMDoqZqbk06/BcvpfWwf0OAntwaroct5IwZRo45K+4?=
 =?us-ascii?Q?K0FJKRAaDUaiPfV7oGRt9Az/eiOn/861rMu4xvIaEK9zya1tY2K7FX57jkPc?=
 =?us-ascii?Q?GRAvfJQWqWboe5UUeOjF9ZvFHT56PL3zcdwl34aYhldmjP5tfUNdbSbUGEh/?=
 =?us-ascii?Q?9MmmgnTSA1FsDkZjHJNNj7ihcrIx73biQksbLQSyZhdUe55gv6ZlML4xizn1?=
 =?us-ascii?Q?pV5cOmX3CELF7UnfoY8nzsm/PAvXKfJbFbaCVcz2jGShrAqGex34rDM64+qv?=
 =?us-ascii?Q?0rWvweD3+cOiRzddmekWqueqJtVC466ghQVHO390uApixQ+MyPyxT9exwooo?=
 =?us-ascii?Q?0WVvcaukwbCnBJkFnICniauuZqQmvyRC40nH1ClxsFGYi1vVBNRrtATxw64g?=
 =?us-ascii?Q?nBQG2VpRXTYEQ77/3VnEL1J9QuLdCmLxnFvtOKIuorvl+NpAapmN32Ha75z+?=
 =?us-ascii?Q?dJj45xgcKqcYHNtyf0L3rNwYvcMqyvUQvdZF/VnVsaecKGNF5bEU26+foouY?=
 =?us-ascii?Q?qko7eomwxJ9G7adi4h++8eUL57tUnDdTtqmVkvi5NIIKwr4c7waHaFvnJ21J?=
 =?us-ascii?Q?2PB8DH0JmsuXeDwWoHyXENBK45/+mU2vC5Djq6Wd2wPaszYDhFlREUE/4FE6?=
 =?us-ascii?Q?owfLS1y+IZHEy1CBVLH8Go5wm+RsAXsQPQO/Mn+J+iRMoz5ClMMuwU8/XqZM?=
 =?us-ascii?Q?BzIlwGUeMOH+euaSQtzOrUVtGwyLBgNOs+sX33QiDqhNRAVtYagrF+ZlyG7B?=
 =?us-ascii?Q?oMGwS8nEcA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d334691b-fa95-4f8c-d4d0-08de6fa3bdaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 10:43:38.4891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zfGl0OvlQVYkeNxIEkmaU5MYAo6F2Eb2I7w0VAa4T1jLhdH6hQYp9si8jrMxVQnyhVzrZM78Angd2LQatZOx8soF27vy6d8I3TJo92YRfVw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4827
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771497827; x=1803033827;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rnCShHkj+ZP8kJxBmcuK0G4Qkz5g6bHF0T9asl7HoKc=;
 b=kChXc8vPLdwWLIjoHOM8AMnMmMoUm/ZlwBKQl5O1lr30MWYy0wBcd91s
 +RRxcPXNC6EgR8jzKasRfl75UHf4gR0oiQxM16FMr5vXq1ESysI5eFxFk
 cbg1LGCqdy9VhrDnjO7AzOOSa8E9n+TxtYQHTzZnBkaq8S4gfenDk65+P
 tlxKIuYgW5GJgWuHGlQA3Bx8Fr0KPk50i00UXB/CqkvtGPW+NTLqWfC0U
 yC5IK5r8sfEY0220BiFn+5NlGL78UmWRcId3m0aV0QAZS3sHvfutiGgXH
 q5QJTXZVYh6XWfo31QKShmQ1G7+IQkYuKbrzh2vezHFaW7nc/rlpq/iUb
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kChXc8vP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix adding AQ LLDP
 filter for VF
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 6008F15DF2E
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of L=
arysa
> Zaremba
> Sent: Wednesday, December 3, 2025 14:30
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix adding AQ LLDP filter=
 for VF
>=20
> The referenced commit came from a misunderstanding of the FW LLDP filter =
AQ
> (Admin Queue) command due to the error in the internal documentation.
> Contrary to the assumptions in the original commit, VFs can be added and =
deleted
> from this filter without any problems. Introduced dev_info message proved=
 to be
> useful, so reverting the whole commit does not make sense.
>=20
> Without this fix, trusted VFs do not receive LLDP traffic, if there is an=
 AQ LLDP
> filter on PF. When trusted VF attempts to add an LLDP multicast MAC addre=
ss, the
> following message can be seen in dmesg on host:
>=20
> ice 0000:33:00.0: Failed to add Rx LLDP rule on VSI 20 error: -95
>=20
> Revert checking VSI type when adding LLDP filter through AQ.
>=20
> Fixes: 4d5a1c4e6d49 ("ice: do not add LLDP-specific filter if not necessa=
ry")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index c0a19f232538..0271822c1737 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -6392,7 +6392,7 @@ int ice_lldp_fltr_add_remove(struct ice_hw *hw,
> struct ice_vsi *vsi, bool add)
>  	struct ice_aqc_lldp_filter_ctrl *cmd;
>  	struct libie_aq_desc desc;
>=20
> -	if (vsi->type !=3D ICE_VSI_PF || !ice_fw_supports_lldp_fltr_ctrl(hw))
> +	if (!ice_fw_supports_lldp_fltr_ctrl(hw))
>  		return -EOPNOTSUPP;
>=20
>  	cmd =3D libie_aq_raw(&desc);
> --
> 2.51.0


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>

