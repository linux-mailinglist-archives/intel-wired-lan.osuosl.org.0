Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F22596B60F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 11:09:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A6CA81155;
	Wed,  4 Sep 2024 09:09:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QRKyD7qUQSOZ; Wed,  4 Sep 2024 09:09:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4E8C8112F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725440968;
	bh=lKrQDyGBr6yJjMQUOiEhJ4k2CS0xNZFgvAEaed28xok=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nvsH+I8/Qlk9+04bkPlAP2J9CTeHfBp1fYd5JrLty7nm093ui2hc76zWmAC4cHkUj
	 PLnjVF3aeg3JHTljaDvJzWzS++IZr+IfZuwyr+4maBtBD/evUxzHL6amhKepStv0LB
	 WPdq/m8/bb7hpn5IfcundM8urE8ySHu3neKfJhQDagwMxZ5Jz/wj5H5rHR8Jl3K0XC
	 75eMHcTZEhe/gS4mcllB+HxAZ4iKlUA7pmud0fTtgFpckU3RL9mwiFX5gLVCImr23z
	 NLKBAb17br9//hnp22lwb+r26Hp18fjc//MjRvWqfSnKVBM3L7iNqmvtG7SqoKUpJn
	 AWAfDOKiICcCQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4E8C8112F;
	Wed,  4 Sep 2024 09:09:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 314541BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1EAA9607F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zGr_rR61YO2m for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 09:09:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3130B6069E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3130B6069E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3130B6069E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:23 +0000 (UTC)
X-CSE-ConnectionGUID: j9cXoaYfQUG1ehXBoHiCzA==
X-CSE-MsgGUID: wKvqxWnCSDyu6b+SUN3VWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="35246033"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="35246033"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:09:17 -0700
X-CSE-ConnectionGUID: 2oWCr5zLTPu7aZ1IMkAs2A==
X-CSE-MsgGUID: W7O8PuEfQJixyJRNys46XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="96002259"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 02:09:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 02:09:16 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 02:09:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 02:09:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hKL2qIiBAkF/A0NDtzhbYszmQU3y57vgqNoiXLKENdajADG7nKphFdNUdT705aUOPNl049w2giOXfFPEuRnwk7cfRvnCf+eMwrWeEQf2rTwtCdW47AjaJBIXacxTf7f8N8GM8Kys/cElt4pMnzAxn7bIoxp0nqSk0ieauFunRnH/taHJLK+I5i7ml4GoJg03BCvNtKg0NHn/zlWUcqn4LrghK6hywYozzbXicTzRPNnHF2Gp0nkPlIPgl2Y9sxMTroJlUZrym45Ae3aWgQkDgYzWbni2u0qMqi+pEpUB3OyXwAjZhIyOdWaREA3OkY4hcSmj6wTuJ9alUUUx1FFfHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lKrQDyGBr6yJjMQUOiEhJ4k2CS0xNZFgvAEaed28xok=;
 b=DUvbnrdfTuddENP/53LiYRUZyyU4zs19EebhPfWdloW/ZyFFZdK/bDcUSgmuc6FXOQQYQRaaGwQDKgh+y6msyDwMhGj+iB1iva8R/wcKm/5Uilm08uouyXUTbZOnni3EpeuRN6ZPlOcRsnNC+MTXV0WVcyE9HrOGPDA8wutYD/KVZNPBPtT5nx/LMjt1eQy2KpCE9D43FkDFqPkjeBkPoekdKjMZYE5xS33KrHoIJU314IKJ0aUrYeZ7Y8I5/t5xAzQvdW244SR50TeM/CClcgCnB0x/wFJ0qRI8Qd5ao/vJ8nAUw+dfMT7wBlrsxqO5ynVkKidKrkw8Qd7fNq/Fkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 09:09:14 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 09:09:14 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 iwl-next 4/7] ice: Cache
 perout/extts requests and check flags
Thread-Index: AQHa+s1U72Bpur2CSEmdL1Nf15iu57JHOr+g
Date: Wed, 4 Sep 2024 09:09:14 +0000
Message-ID: <CYYPR11MB8429B44BA197E3EA8A557C86BD9C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240830111028.1112040-9-karol.kolacinski@intel.com>
 <20240830111028.1112040-13-karol.kolacinski@intel.com>
In-Reply-To: <20240830111028.1112040-13-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5830:EE_
x-ms-office365-filtering-correlation-id: 07812d96-9b98-4a22-0ea1-08dcccc13f44
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?svjxBsK3BjUpZp3BZ5Br5cNpQyzY0NNavcXw9iHkLCg35zXsRjJyWpeIhis4?=
 =?us-ascii?Q?y3l0pT10xt6J3i++CtOZool6Nj6QioDdIqB2WQRzpjlBKCPs0UMswnMyTTG2?=
 =?us-ascii?Q?cyIBkUou3iWDHClcuvgQN/bBCUPR5OOZEPnYuJr3O6FgRGoToPFuuqNj8yDC?=
 =?us-ascii?Q?hAtP+RXqw5Af1ku1FnyY9xPzYPmaFMQ1jVeTfaZ21hkimXA6+aNA/OZtNMv7?=
 =?us-ascii?Q?rnYOLjfT2bKQ9YclhbNTVvf9r2RJPc93gky71FwX7KASLj+zNbBb3xgTASkg?=
 =?us-ascii?Q?AfxSY5AeE+jC68qPzYDpNR+bVvDAdghAbMMlOjAHXobJL1pt9x21M/b/7dc/?=
 =?us-ascii?Q?fnjkbEoTdfrGtgYcpcMvaluaKs7MaEWBA6XcqPNfh9wEvlA25kd6R9dj4nsY?=
 =?us-ascii?Q?SeHIwHeBGkchaQXUZF672NdqpfqRxk6rcqw9/QKElCqkx7l0lgJwAln/GkWN?=
 =?us-ascii?Q?ohHEVI+T9B7nAgOp4vVrsjPVSzUV8IHQQF3LNNiC+Bs6kKZZjq7nY21la830?=
 =?us-ascii?Q?l+cY8AIgOe+yNBAfeYXKx3VCmsc1SX82DKcHI8Mjxf6/IGz/8Zqi25MP2idS?=
 =?us-ascii?Q?iOEATT/9vFKxweFdWk09Fykapb8ByNSQg6IhwfXOfQer1xnB9cirDHLRjMNG?=
 =?us-ascii?Q?9YNSy6nDAqmDhiBlOFqqrToxaVK+s2SAs9e+PFqvmTNa9wKNNcq5TUTiDI8i?=
 =?us-ascii?Q?6X2aDsqwNGw/nVOX6M7R3FzZblRTFMMc9I2DE27Dvko53Pdk0/RB4djmcdMY?=
 =?us-ascii?Q?L2zguFzGu0ODC/7i9xsbgkEsORonrU/Y8wCs7xhEH+uStGe9lSjhSmPJpDgm?=
 =?us-ascii?Q?+iSR5zcI/01h0r9tVmTM1JiYiHB6Zgz0+YPCBbZ08lAEPGCHhFmoccntiQzx?=
 =?us-ascii?Q?5q7g6ite/dqXMBjbB5w4wdw9Ezx1AEH2GrtM+B5N35hvTfYxVrVWoMRi9Aob?=
 =?us-ascii?Q?75mV5CNzSMGkMZyiXZeJAmaH3UtmR6RQ+/7+nVfnjaeJgvvm7RMCn5mVB41Z?=
 =?us-ascii?Q?q7iJ7jFXtWhkb0p3lVzaUoUuy2hqaHC4J3O3I4CZIMdWJnsExxhXAenur05Z?=
 =?us-ascii?Q?h2yaqnrcdIeUXJemDvjUBpEIkL9wrf5L/ZK5Pd4nl6Ltfz4N1Lx0h2gEmcxa?=
 =?us-ascii?Q?2F3Td9Jx5iOSgRmCjJvwTt7zoIAB4afPLXIIxc/uOp1FDsEZxOyx3N4vXNrS?=
 =?us-ascii?Q?bnLeHIr98dp0tHL+92KKXPRKj658MSr+N55JddSC6aTqwdi5no8fys+khnUJ?=
 =?us-ascii?Q?QVKzV8YbXC5XGNLajR/9CEslGv2OJK5xU0iYvyYr2BPfLhnf0ogYRRjKcb/p?=
 =?us-ascii?Q?e6kwH26w2RotkzP8Mksp5IfahO4TLX6rTw4rpuUmIFPi4YMveHiqlm3+z6G/?=
 =?us-ascii?Q?7SFdYRW1goigfY/yAHm5dnTv0F5oe9utbQUgNICnC9BW+kENmw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0puG7yY5JhgzIuVQTrwTHyrsQfj3YdoFYEMQIDGBFHmblRQvqJhfT2KGbcR3?=
 =?us-ascii?Q?BW9hLWo8DCe57aDYrQ748wDSTxA3H7YznmS6s4n/F4X+toZDVAzkwn+Vbvv9?=
 =?us-ascii?Q?/rG2z4r21d5xBRA2swxMm5wuLJh8U9h0JTn5/Bzk+E3nkezpQzYuv3CDLMBW?=
 =?us-ascii?Q?7FhroDcErdbA40vW6oeNyyKebAUImi5sRTnyCIXWqBs46dxPelvdUEHwj9S0?=
 =?us-ascii?Q?ZBM/3hncBrE1BbvM2A/vy3fkC0sWQFxB+IS7oMBfSACFS2LXHsmpNJkDDlfa?=
 =?us-ascii?Q?NYjcRZYi488QYjcuKfWzVjyRXlQdtdoXkvm/BFlMbVXryEI4wDcmGUi4DDQ6?=
 =?us-ascii?Q?AChzbuyKiZfuNVhG//OGtglc4Oz+pPPc+6eRfmwqlCjku3urjbu5UPAcPrBh?=
 =?us-ascii?Q?cbuME5eJoo7FB9aJrICB4t0GUaRx3INkYj/L2E6l/77LLeTdFz6AQpUpIZLX?=
 =?us-ascii?Q?GUPebUCBXUv2tpGK1IT0wfKxY/zUE6p/WWUJ46tRrxwdEAVagvIrqiH2Sovc?=
 =?us-ascii?Q?odvoj1ZoXAHU54cpsn1xZQSilbRJx89KztVJiOI/FctKfEps+7TwrM/Kx+Ii?=
 =?us-ascii?Q?LkcSzlYzIIAXEyZDmjiE5LT7MkSoUGSvrHBDndFUabBcmtkiccbWsoBn1SHN?=
 =?us-ascii?Q?lWFn7JgfhyjNO4DOZ/ache/4o2sBSp5ovyOxlkrkfCHxZd/502P+17aGz1hP?=
 =?us-ascii?Q?gcUGMD19lacTjAkw7D9T/R2CELDRsDqEKh4Lgs5eCIN8w0alsW8UJgHoXE3m?=
 =?us-ascii?Q?C3h81sXGABVZDTabI6R/WE5u13+7l+F2B824WHlSgGW5dqHAqqP26fu0bRVH?=
 =?us-ascii?Q?g/ILJCvUUGqlvoTZC1gATpf6SEuytgbBiNVQDlnir2ENa6A/STNReBW1HZTL?=
 =?us-ascii?Q?4QoSBl6ln0HfIxW532nU3MEUo2kw0hMccr5wdpGg/c7mE88FnLUiEMrsojgL?=
 =?us-ascii?Q?i3yYqrGacZz+jlcFnOQ/PsKvXggEtjo/voS7w9cFPQm4TVwRpA92y4uBrgzQ?=
 =?us-ascii?Q?oHRaMs1xQKNSpRqF0kfkbIFXtqix/Ozy3k4JuIvUy6gYsZacvOWJnxyKtDa0?=
 =?us-ascii?Q?kHR3CSY4BnUucTn5OAJL4jKRf/EmN6m6t4AV1vpIaJszokUed36GKBMS+96Y?=
 =?us-ascii?Q?PXNTcwb5WYF6jP4yYmfvpAMXV8GVRN+LV5yUSo9f2q54wOmqs/H4o46QHIkb?=
 =?us-ascii?Q?RT2YZ3aykMp7rqhHDK0cfs3ytkBCfFr5BXrTjj8EmFxnhEEajbcxIzs0cT79?=
 =?us-ascii?Q?JmQ0vyYyI3aTXetSr+HssiR0d5XrVoVTgGwWoKEtm3l36vOQ4cnpP9WVEj7J?=
 =?us-ascii?Q?rQ8EobNQzbVyj46McyxBEj8WN5XYVe6nRpfaLRnF7GL7UPB9rKmzt5yjDztg?=
 =?us-ascii?Q?9xKa+yGoMZAP3rsfw7rzewenVOfkEImwMiEswJ0Y3FqKp5JOwwn96Ohn72BB?=
 =?us-ascii?Q?X9SadNHxo942W/NqeiDgRf9Bsjtm6f9zLaqdB9sjANucEcfAFkc92LcHPFEO?=
 =?us-ascii?Q?5O5NKtxydDZ82lcewE4TQmB+MA9At1gve86X++819vjsVhjvFQa8/Ts+ZVed?=
 =?us-ascii?Q?MoV8Q3wsILzxVJTM/roN77Vzlv+AHvtcQFbcne2NFtj6vWUarxG6/hiClAho?=
 =?us-ascii?Q?jg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07812d96-9b98-4a22-0ea1-08dcccc13f44
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 09:09:14.1493 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wdl9EsV1dIeDYc1yb7rHB4YFiRFkHRlaOrMO066xbbLcS+jToR6fAk5cChLMYjemqWbnBK+SI+P3ItrWMgtOUFG2oO3fjPJr6uGCIfelWj22KVvFpa1R17buTmXAVMXb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725440964; x=1756976964;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yQ7dIqlnEvteZNn32adPRN4+1viCf0ITuNM8ZibMaRs=;
 b=lsRJobuy3X8jbrFMayzVNxmsAkNpgXMhqgfSeH93eGvB8cc7E3J3O7uH
 gQMgPe1tsQKKDpeiQB4dnfAE4aBHPT8EfuC09ab8vmXg1LzeMs0aowyV6
 XuufTJvHZZmeBR8ymVI8sIXovYb5s0/qWinrC4uS2iY1bmc2DfVBpqMYb
 Y5cqoTe34L+FSekV6WfZFiou8oVy+SKUMEcRkpA7hiEhMeV2+dstukP3s
 rVNsdTVIMRzqg66kRjrdZwdSMo70m0nMoO5lEYbv+79lC35vJM+TBfSgN
 rhMsh2MdKopNxYxu3VjLY731TGnz2Gbouz0yeRcD7sddhPfhZqiwdWxJJ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lsRJobuy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 4/7] ice: Cache
 perout/extts requests and check flags
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Friday, August 30, 2024 4:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony =
L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Kitszel, P=
rzemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH v4 iwl-next 4/7] ice: Cache perout/extt=
s requests and check flags
>
> Cache original PTP GPIO requests instead of saving each parameter in inte=
rnal structures for periodic output or external timestamp request.
>
> Factor out all periodic output register writes from ice_ptp_cfg_clkout to=
 a separate function to improve readability.
>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
> V1 -> V2: Fixed unresolved merge conflict
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c      | 360 +++++++++---------
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |  27 +-
>  .../net/ethernet/intel/ice/ice_ptp_consts.h   |   2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  27 +-
>  4 files changed, 212 insertions(+), 204 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

