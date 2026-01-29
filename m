Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIIZL1UHe2maAgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 08:08:05 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB36EAC6EF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 08:08:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC13440B72;
	Thu, 29 Jan 2026 07:08:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U7oLA0XM7iJz; Thu, 29 Jan 2026 07:08:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35D4F40B6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769670481;
	bh=UyLfm41Sz05mRL/d/PSSndPOFIaIkW32NrGo3oGtzfk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PPRdXP5EIo05I7tvbdhIFIMds508cSjat0ykw5WytZhuYFFrOAJgXIFUBbXB5VlBl
	 f0SD6gXYItzJAEf9IjA8RwOGLf+reOqlesF6EY/wCM1K5zIf4++7Onx0Cw8IM2CWBn
	 W0GOdr3Z/Qgs2Ez+3yrxXQslxWbcQ450LKlOTdPfREVtMP6crlQKdgEAbkNDAQz6sv
	 XcqW7o2jY7FjTXAfCTFK8M/no/hB1k2bd3Q3t4K4skD3UMfz4lNWHwQkpA4Tq1IHQz
	 VLJsoyAodiY1n1BC3qpfEm2zZaKF4loo+kuWSTSf5cczM3SRBBLQIWXOL24OA9fkt7
	 tvs2ysFehYNlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35D4F40B6C;
	Thu, 29 Jan 2026 07:08:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D419118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 07:08:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0102683CDB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 07:08:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C-sUmsDaZdQQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 07:07:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DC0EF83CC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC0EF83CC4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC0EF83CC4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 07:07:58 +0000 (UTC)
X-CSE-ConnectionGUID: B3Sbeo1TTDuDwOf+ROM7Kg==
X-CSE-MsgGUID: bpUdPSQlSJ2IeZynrI2wEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="88473668"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="88473668"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 23:07:59 -0800
X-CSE-ConnectionGUID: rPGMiTUJSc2Gcsa/N3APjA==
X-CSE-MsgGUID: QAf8HPQTQdyHadMswf6aZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="213362226"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 23:07:58 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 23:07:58 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 23:07:58 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.29) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 23:07:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=auIOO8toE29Ob37bw9FOzag/+H1OMYUSCYAMXkdfqo6DeuGlgNTJVWQ/LQAlKAMoKYK5YfuF+5+iQ+cUJFlYi1B9ZyCmKfVM5G0sJBh6Isy2+8oykXBwm5WL+XfKr6VENgdowScgGI+JByqDQ2H4CR5XuUvsPR4wX5AChLtQRERWSny53AvfCoTQ4hIY8X/O31kb1FJbTY633UezEHaBNi/xTQFEiMsSeWN2IG7UwBQUVzWd/H69HvaU2Oh0Pa4fLIa0A4I7CcEYKSnRQOVPnaRpnqfD+OgIa00aiGZT738DUXnBuhCmH8LCJqn2GDd1EWoaVbhDGUd1VxjARQEu/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UyLfm41Sz05mRL/d/PSSndPOFIaIkW32NrGo3oGtzfk=;
 b=stlttMK45sdnLEuGFyo0ryIDv16Z+tGxcsn8ud6chnAsWzlNe5LvMh9nhIq10AIkphsCCbF4WfRElcLMxVoj9Hlge1VyiiTilOlP/Ni/vosNrzB9PeTLBRcStVOQO6JKuZF5ZeSzKi9Dwc684PAObNbOClHZshPZ9+V0JYbHNKOB5zSr/YgUDYt3v1OJm9mqwdWGcbKFmIy3Jj1rezjVizbRyEjysoGRORbEVUqSMwVIN6pK7supjhcC2wJjrD0XDTxT5P7U+0oyxaN040Q6rvqqYKq9ePzi+7uhZ7x728FjsQo1vEj/V1K5F8ae+xt0NnKRiqU1k28rlWhoVZX82w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH8PR11MB6563.namprd11.prod.outlook.com (2603:10b6:510:1c2::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Thu, 29 Jan
 2026 07:07:55 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9564.007; Thu, 29 Jan 2026
 07:07:55 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "mheib@redhat.com" <mheib@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "aduyck@mirantis.com" <aduyck@mirantis.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v3 2/2] ice: drop
 udp_tunnel_get_rx_info() call from ndo_open()
Thread-Index: AQHceDH/tyqIJ0Ej40SzwAD2qaO8kbVo3JUA
Date: Thu, 29 Jan 2026 07:07:55 +0000
Message-ID: <IA1PR11MB62416C0EC736D64EB075B3F58B9EA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251228194021.48781-1-mheib@redhat.com>
 <20251228194021.48781-2-mheib@redhat.com>
In-Reply-To: <20251228194021.48781-2-mheib@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH8PR11MB6563:EE_
x-ms-office365-filtering-correlation-id: d7600872-2c59-4837-d890-08de5f052045
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?amYkijO6QlMm4Yo04un9BcaTGk4vLCPsnfibp2jbhGv5J9neqXVwSLGzlGzE?=
 =?us-ascii?Q?NcSmOyyLf9/4eJWofRUjYr86fgTYgv69TbUi4xIQbzu8Qz/IuUW5ewQb8OqW?=
 =?us-ascii?Q?v8TvW8jTtJdEy9yJIfEmBgYT0VO2s0c66U9adysoTGov7SIguuGAEXjdoJiC?=
 =?us-ascii?Q?gxkCBl7oXpZ2LYeEre+HUeznj4cydF8B3XGpWtmoFLbiBCkL5+InuhVIBkzR?=
 =?us-ascii?Q?KzyIzxx45KidrRw5XBhRyC67bs0z5NknRREqOnh68wCe1FeWyk2yjIvUnUxH?=
 =?us-ascii?Q?9DSlPGXcI4J3aQ7LvsrO35nL9XAsI4IGEmMtZCe7eUSZ1dMcFeP+5UMclA+4?=
 =?us-ascii?Q?bxH0Y4PapRXsLlzo6VgYhpAKZdOcmKik2qUd2ZzbPpTR0c6WBtmO7LGHStEa?=
 =?us-ascii?Q?hqmx8j5BC/cbj0r5qHQJ8wGJwg7Buf+t1avPZ7OF32pVPdhba9ghfs7gTOH4?=
 =?us-ascii?Q?3MxADvWtcLOpCVGM4pQHy2sxPeCAT2WuRf5MsAiV9UHRyTACf0LMDiTMzxmF?=
 =?us-ascii?Q?umOTos7A8EWqhdmH/WyDc19qdlP9FadAn8ehK64O8ctWRdMiH1GHFLVt+qG+?=
 =?us-ascii?Q?aVadV8teyAtrm7qA0fxhGkXPWhjpvNRTHkClc2qxXeABgNs9raT89u48EAo2?=
 =?us-ascii?Q?YZLQYtIr/wr2826SXGMVBPXKcKzS479awQNFJpkBE0OUQHft3cB+zaanP5v9?=
 =?us-ascii?Q?ofzFkwE+QlaA27mosyHB4iYo0uVIq8vS36HGHeGgFEpafWr2+nkAX/UCVYzB?=
 =?us-ascii?Q?tyYou8475MoM8+UbvqneIT55/dj5ByjaOS2tSxrGT3DlNpVbt296YwdA8UGA?=
 =?us-ascii?Q?1F15Sduf52JxPlR1ps4SpyUPQPJYhMJV8+GNn6cFZ3ASwD/+RZnsOeumvX+U?=
 =?us-ascii?Q?8tcVhJLby52StiA6ghNlFhgZJAlbR7bcU5GQONLUTMOn7iTlqQTtmZUT6I3s?=
 =?us-ascii?Q?XMw3vdw6aVFUK1oPb5TB4h+sO1MyGPXszrva5w3sS0on4QmMbF1F7cur3kY4?=
 =?us-ascii?Q?tbCBHMKhlcrbRocTmzHQdceZfvNd7lg5VllR5eZrbjeDqvWtKEnz3kAE7THB?=
 =?us-ascii?Q?udEfXU+2Tf13GnMjZDtl9fsfD1ZEVVtClcyg0qa/C1j8UUNbqjUr/coBTgBd?=
 =?us-ascii?Q?rxZaWlxkkmEVCUjYNGsNf1x+fr3+Lvyi5eRxcXaGRsjwzwlw7a3Z+xOSc23V?=
 =?us-ascii?Q?SADETs8eZkWsFmYEks3d+pesbNsamdmkhi4wSPNWr1rEp8oimFdT91GfhNzP?=
 =?us-ascii?Q?T6bKQK4MMhJViG1pdGUOcBKCI83w9y3LYm/loRLBnM9bCvEOoKbILu1k2GJ0?=
 =?us-ascii?Q?0zw7ZPb7W34F7REelKKXDgI03giNcLUz9IqHXHXESoSG61oR1aXGejdFrDgV?=
 =?us-ascii?Q?o6SbF/jwm4YaNv9Pf1B9679gkSjIpe8KZaxBVI7LuFQGYF6kiJ/GgKMR0rIz?=
 =?us-ascii?Q?fmW6D2AnLa9Bnj98PhZ5Hwg1coe4YOkNCIlRxjGrYKWB6T7qBACHmh8cBcCB?=
 =?us-ascii?Q?KIOVGOVZwzynoWK7KofAFjEKh64dM676GNkHmTkSJerMBWDGE3Rb325wj376?=
 =?us-ascii?Q?/A9AeUD1xmVYcPVwhnqfBq4MYtdMQX78u+yR1mZycFGXnzrp/SsArYsPIKVi?=
 =?us-ascii?Q?Kw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7+ffeNkdrSUNYTtiS776i5Z44VJluZnYw0Z/mewVd6nRBbPfHFI9DFZCaXym?=
 =?us-ascii?Q?h9BEteWmaY/DDUsXlR6cWxIC4GwdBZnVZOIO6nKO90Eo/937ZqV2TR4vaiO/?=
 =?us-ascii?Q?xHVbkLuTKN9iWqiZV1gR7/W6+uXJu74lY6UCHKBRZ22hdCcFN2mgOy17SnKc?=
 =?us-ascii?Q?GCNXzAO/D1lrLqsncke7iaMOyjxyJFeWSleES3IP2Sw8jscJmqKWGqT89bXB?=
 =?us-ascii?Q?u6oahswlYqFTH+nfrH6EXmiMbuCAH4wMmg8S402aZTceHqJTFLZwtyN7wyR5?=
 =?us-ascii?Q?yqo3HV8vMPQ6om6gORe3jmrKDFkD3XftYrq55rjqLlwJ883XkOtq2sH5GdDQ?=
 =?us-ascii?Q?hgwIFqOIxyObrv0wv7M/1jh8+WFBK9DmS+kLGE7nzPNZkdtjYkfW/LyUiUib?=
 =?us-ascii?Q?MSo/SI16jgfvPtE1jEOJz67vemB8JwtiPZn90//7B2bunQr+cnMncoThcapd?=
 =?us-ascii?Q?6oxmMIMpc2piS+6G03PYBonuGGZZBSr1R46w1YwkPxqd0zT70Xt1gv18UYaB?=
 =?us-ascii?Q?8v5e2U0CwyIzQ3607djeGY54Ta51KX38iURph60GDgv67t5hZir7LqQNZSKO?=
 =?us-ascii?Q?r2hzJH2+4pfztTl+WIr/p9Wp6HLlfFAeI+mC2M6BGAqbdeeKynTYPXQuFWn6?=
 =?us-ascii?Q?QixuRjloRT3BHibwHOHZgOmiuw98hCRZMip1BQPOW6mD6EMRuI+FtiafY7Rj?=
 =?us-ascii?Q?Gvg1yQRS28HVwwQ1vvk4soCPS2Wq4YqeT0fh37D8cKruhY/vYB2Z7FAPpckz?=
 =?us-ascii?Q?3vuSDDdI+VJ1btXuBUfQDLEuXPXxm3xMnvAgJJrQfW0YN3ywjcI2gO8n+e89?=
 =?us-ascii?Q?f6sDI2DKzyOMVEvv7XyTu5lOOo7i8p/hnNoYBUEmkSUrkLQIyZa4foiKHWQY?=
 =?us-ascii?Q?jxJm9WMoarr+dzCE1b08chgWScqCv6BSvCQFTmvjuQ33ztvwJpgEmSIk9pbY?=
 =?us-ascii?Q?lLl3ESMT2lAdNzE+gHPT9TwCWC9nz74YitwLAD5t2W7XyyhVIcLmoll1dTve?=
 =?us-ascii?Q?5PYmf79VqiEMK1Pnlt04BrN1LhmtOJ9r+Fn573r9q0CKPA9fCwWVBiX2BlRa?=
 =?us-ascii?Q?FYFHiprZuHMBJ8BdF8ZiXF/jyN+U3OA+9hTz9BP1pThLvFO3r1N+GFTT2kRV?=
 =?us-ascii?Q?1hbuW/x80xTGw7uAGxBt8YXcWxSEaVDpLgph239iGaVHsusRUff2iBHMRlv0?=
 =?us-ascii?Q?mLYa84+c614C3T6j6HTpzf1DinDWVSF/uYQA+aZrJOlUGg+1f131RGvsiVEf?=
 =?us-ascii?Q?XeJVD+xCXRFx9pbfDbjCSxY9PV9cJFajn0iVyYPHxJM0JCSDLmQZjErFXryY?=
 =?us-ascii?Q?OE5x1Hi9ap697X63yYWcHRz8hf3/RfxZDOjyBAaMFNzk6XlHwMO9jDmPvniC?=
 =?us-ascii?Q?GMV0E+JJ85zk6bXS/X2CgCSQQkH4gj1XYF2rNpueeE/YhWRontR50HDZtd4K?=
 =?us-ascii?Q?RoTXxmrML8DO0ntcIjdSChGyJT2lz6S9RVN81wHUoZbLGojQv7zBPypeam2/?=
 =?us-ascii?Q?2QoztJTfevVVwT+jAFhJxaMWOph0jjdC2p5Nk2ScyzQBF7Ur5Bj4ykumCkWN?=
 =?us-ascii?Q?+mY7+YnWAgK2X9M2cLnxmB2Qxu27vwkszI4D6o/82WfdSVDHuU8r9vtEYuRn?=
 =?us-ascii?Q?O0XpbQeCbvP9GThF2I/SDsbiQHhV+vK0UNqqx2cGh5ThPfynxEeuUfg5rgue?=
 =?us-ascii?Q?E9O3XTqb3eQLbvR4AdIMDjO7AYk/pZQhP4tz+oJ0yAC1RqAH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7600872-2c59-4837-d890-08de5f052045
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 07:07:55.3703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TRODNX73dlsSFRpYMeFcZh48LKSvRnQJoXxTDb+wP/Q0zav7cMpnqS4PF6WcobI9owCfDKusA/FSbfB8YWALMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6563
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769670479; x=1801206479;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BRrgTXNAVeefNQj1rLpHLzjoXkLMUlS8Dku4I1jLOIY=;
 b=gG3QDbVZRIFZdKt3ezbKxL6VvzCv5+RLmKqoxgRfw5y8PdWkpM+SnXSe
 +aBpvh2qtjlXrgK6cGhub5cA3z+LJn3cE5MAGfCsHQEqepLNZiXCyWm/M
 Tv5aGHwPZo4OZ3OFxBNUdnDUY/vKphXYDOtyH38WrrOPsvehq5PWVDJzJ
 bx6TpKA7UYZEA0kEWDPUAbf4tqjuuNONBzlii/wlt+35pwWh9vHstY/DU
 cbufnhf0eguWFhd+ukSTSvevdlbq2rI5qluhQ/peqZ3wVP2S7paxGfeXT
 klXBJviUSXyyIriRelJW7qTZI9RBhkm0RmzRqmhRhA654/IMWEou2Ezyk
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gG3QDbVZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 2/2] ice: drop
 udp_tunnel_get_rx_info() call from ndo_open()
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
	FORGED_RECIPIENTS(0.00)[m:mheib@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:aduyck@mirantis.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,davemloft.net:email,mirantis.com:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: DB36EAC6EF
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of m=
heib@redhat.com
> Sent: 29 December 2025 01:10
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; davem@davemloft.net; aduyck@mirantis.com; ku=
ba@kernel.org; netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@inte=
l.com>; pabeni@redhat.com; Mohammad Heib <mheib@redhat.com>; Loktionov, Ale=
ksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v3 2/2] ice: drop udp_tunnel_get_rx=
_info() call from ndo_open()
>
> From: Mohammad Heib <mheib@redhat.com>
>
> The ice driver calls udp_tunnel_get_rx_info() during ice_open_internal().
> This is redundant because UDP tunnel RX offload state is preserved across=
 device down/up cycles. The udp_tunnel core handles synchronization automat=
ically when required.
>
> Furthermore, recent changes in the udp_tunnel infrastructure require quer=
ying RX info while holding the udp_tunnel lock. Calling it directly from th=
e ndo_open path violates this requirement, triggering the following lockdep=
 warning:
>
> Call Trace:
>  <TASK>
>  ice_open_internal+0x253/0x350 [ice]
>  __udp_tunnel_nic_assert_locked+0x86/0xb0 [udp_tunnel]
>  __dev_open+0x2f5/0x880
>  __dev_change_flags+0x44c/0x660
>  netif_change_flags+0x80/0x160
>  devinet_ioctl+0xd21/0x15f0
>  inet_ioctl+0x311/0x350
>  sock_ioctl+0x114/0x220
>  __x64_sys_ioctl+0x131/0x1a0
>  ...
>  </TASK>
>
> Remove the redundant and unsafe call to udp_tunnel_get_rx_info() from
> ice_open_internal() to resolve the locking violation
>
> Fixes: 1ead7501094c ("udp_tunnel: remove rtnl_lock dependency")
> Signed-off-by: Mohammad Heib <mheib@redhat.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_main.c | 3 ---
> 1 file changed, 3 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
