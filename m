Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D010956213
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 05:58:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D85F540447;
	Mon, 19 Aug 2024 03:58:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hU9hRu2QHomk; Mon, 19 Aug 2024 03:58:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCC2D4046B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724039913;
	bh=uKyQoPcTnz1hNBk3ZvWp3WjKDSwNNhgIvLUOByD4UFg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lva6kJUTan6aPwOSKVxPWp8uVES73fzkMhhaFkAw8RttLNqyFM5hy4hvG3n1PQV6U
	 J0QsESQ/wuLxJL0tkBqBR8dlDSxH8wxhJPrilg6/DK6KM8ffzpb1I+aC46rjAUMVPb
	 kv6ZtuezKgwp+9OthLWIU7Drovwwwg8VVdGuC09B1cpGbyBvVNRiGMAsD2Qjpdk6SL
	 9nVK/xc3EzYTY0r35nu4hyxaY6llxF6IpV6oSuu/rrwtt52pzPuEitBtw11LSgn25u
	 Au93rcgwT2g1wxYfPKiyA2I5FfW7Bjn/Hdbz75QG7/AGJ5TXeQqEmxYTdnVkKFndoE
	 or/ccol0o44CQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCC2D4046B;
	Mon, 19 Aug 2024 03:58:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C98EE1BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 03:58:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B75D780E6B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 03:58:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZqKJLSzF6SQl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 03:58:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0A41A80E68
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A41A80E68
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A41A80E68
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 03:58:29 +0000 (UTC)
X-CSE-ConnectionGUID: zWhnCkW1T1C6AYKIMKuGOw==
X-CSE-MsgGUID: UmRK7w15QDyDBjlFE2a+mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11168"; a="32932490"
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="32932490"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2024 20:58:30 -0700
X-CSE-ConnectionGUID: ed4tl/otSXmR88yF9S+Jxw==
X-CSE-MsgGUID: wmurSlk9Q7OKhOu5XR3qIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="65205212"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Aug 2024 20:58:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 18 Aug 2024 20:58:29 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 18 Aug 2024 20:58:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 18 Aug 2024 20:58:29 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 18 Aug 2024 20:58:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H7MEubF8e9BgYwo9+j+SqEY6UZ0AmkN8S+unBvrXKYliHGw58j/5Pg4E3zw5CQl9j1fT56viGvGqot6RoiOp85QzJL4D3YQ62VSd/+IDzIZ0clADIgMdkjlhQ1bHK4pgLVQvF0qtj6kB0UyNFIJ7XD7mFj5rD56N2IxmHApW9wHFPcyYjgzVijpHKjlso+fylQ4wPXLvviSwomv5fTdDcNZvnzp/zIgI/thxPD9FgFzScCxlkRlD8TbzLlyLUkO6AoZZx6iE/GrkMBmQ7d7cygGlFrzJTKXnRiMxs++mhgkP1QGn74J7r9edok4DOoU8H1XycPB/KCJ3wMcbwK0vLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uKyQoPcTnz1hNBk3ZvWp3WjKDSwNNhgIvLUOByD4UFg=;
 b=IMdeqAUr2RNCm/UjIhlw/DQi1p1t3zvZOOK2iUYVE6m/+5m9qBktdMTVhmIkKebpmLOaTQi4xhrm3gBNOPbxRCarAyMAjditk8oyoHH91jJufEmN2BgseLIoFEaVzy5QEbwk9sngbe5+MlkWu1HDAyzPYcZX80tmkmEUczALbrg8a8jnQM4oK/U6w06epe4W9v8yA86nP7QzhOmxFol9Y3cTVtfUdPCzJkwmIzjij1mvK09oRACjs8hP8Vf8pqIjy8xfQFRDq+j32u0K3Y42LDIZqORcSfWXKz3+SQXTuHakOYT+UFhIgTgx+1nuWhY1NUO67AULzx356mF6khY6XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SJ0PR11MB6792.namprd11.prod.outlook.com (2603:10b6:a03:485::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.18; Mon, 19 Aug
 2024 03:58:27 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7875.019; Mon, 19 Aug 2024
 03:58:27 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-next 2/7] ice: Add SDPs support
 for E825C
Thread-Index: AQHazIYhSA2M4nzfQEm5YbXfzX/tDLIuPGkA
Date: Mon, 19 Aug 2024 03:58:27 +0000
Message-ID: <CYYPR11MB8429A60C80A24FE0EF13291DBD8C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240702134448.132374-9-karol.kolacinski@intel.com>
 <20240702134448.132374-11-karol.kolacinski@intel.com>
In-Reply-To: <20240702134448.132374-11-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SJ0PR11MB6792:EE_
x-ms-office365-filtering-correlation-id: a7c92d6c-3971-4d7c-3164-08dcc0032e46
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?+CKNKd2ccXLxe1UjlXk6OjYRj5CO8cUFVI82z5g/VsH0mh4Q184HJeCe2yWs?=
 =?us-ascii?Q?rRIbXO9D9ugCU4gt9vG/2DEVES+uhQEkZyIftvlPgiRQERMQZIJb3p/UWDoS?=
 =?us-ascii?Q?0i/LX/Vjd5u8eT2JcuDLIOqGU3Kftc60knQ/T38/q7Mf2a6eKSHe7hoPEt2y?=
 =?us-ascii?Q?CdGyHe2fz1cCUK7akosGEXHd8v/TX93Wg7IpkGI7TdX+0yNgwBzLI86LDNId?=
 =?us-ascii?Q?i3hf3y8IEZw7F4PM3opfDISvOA+q/+n8Y3aNcEz9P2ZBwPtX4JzdvhPrbCYN?=
 =?us-ascii?Q?3JlBdVH1zTFD8YJau2Jr2BzuczCFSFUa104Dq/ZX7hABvkxgAfL/eHSIvsQX?=
 =?us-ascii?Q?x4SeAhyjn2pFLICBS0DEB/Fn5rcy7Rl3yXwWzWM4YaeeAHqEy2OCzX8eF3z4?=
 =?us-ascii?Q?W2Hr4TGB8/q4DOqTtkIqMqGddAPNqfQs7+/AwSTLm3uSGFaYcOT26dq7bilO?=
 =?us-ascii?Q?O1K5uf8TLkYuESLtW9RkleSXVzxg2ZLbSIHbEeLFYgaM2yR49akaf35EtA7R?=
 =?us-ascii?Q?N3qhJXkNBJk3Opy1bkVX7NyWJaeZJQUIZZ1k3JAIDyWwkbdZedIMkUdfw1i3?=
 =?us-ascii?Q?3owGO0Ja2qJckoraiL5tIiP4y4nxj+6xjNRHDp4dtSo8eJUDTXZS47tQtqjy?=
 =?us-ascii?Q?G/8ZeJoDCJLJIm0VxE8yaeqc6JDfstBIQwaQNqwVxxwpg6p1Ja6Nzn1JHiNG?=
 =?us-ascii?Q?ou1CHO6lkd8u+0TOgqZSwBPeGEHeLy8VDuw6szosuKhn3HwVjDzaup+ep93c?=
 =?us-ascii?Q?tNtOyyQ8rp6vifhIxnc/nHiFUeglJke3Qi5aEwPdCOjHFNg0mS0CC/MTnBUW?=
 =?us-ascii?Q?D2nFKpDRdihwi/BN5l8krsFpoerXWJ7KV8drjPYCf5FyIl2OGtzAlKOEda1Q?=
 =?us-ascii?Q?TKfD8lWasQD4X0f0yK1VdR+PiaFeZbzwGbqKPUIKpg9+vPH1nmfwReSQmvNa?=
 =?us-ascii?Q?3l2W7eYSa91eXaQxfq0hWb3HKdSPjgFEPmerHQJUrLv0xxZhDdZLdfL7wtaJ?=
 =?us-ascii?Q?Kcp5QXJw1xb9Ybi2JvRzNSzLwj1epXsqTXEJ8FT+OKF8lesRCWRTdSJPdjxZ?=
 =?us-ascii?Q?AkXPENW5diGQpg10jOWQD7PWkfGUqx2uyivdVgfJCNnDa6yurlJD8XToZ4Mx?=
 =?us-ascii?Q?ahCmnyGm/JQULM+HAP3woR1uU+FcEZtU0JhH8F3yqJanBVoSjHXAzPomxiHR?=
 =?us-ascii?Q?Vw1VumCAi4mpMhwJs08Nw735ksuQI+4Y9mLbm3k9Br0aH6LQbNmCrfyl3yX9?=
 =?us-ascii?Q?dV7U4VK42WWq8p0/S584CY5d9gyeEIBS22IK7BDXbCXIg1jX4ydCy1yIocDV?=
 =?us-ascii?Q?LqxUWLAayYG6p5eo8h1IujwcwnKS+fzkE3wNoeWqXQ8sHj7vy5PgjxP1VL8V?=
 =?us-ascii?Q?oPqAIqPmCWphvxwe2vcrlRk1xlBvv+XbbKrjvbo9lRoZJOlzKg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?94yvgMEZlkRiG98AE8MUeDOnPSR4n3D8s+YksMD/Mp9lSkP/vIqDESsoKwbF?=
 =?us-ascii?Q?GyUSfRTAVay8NNCJ/9rZdgUsTkvK0Q0UvrN/d359yi9rx35+YXEjf5+cbuPA?=
 =?us-ascii?Q?3RJ1Ch8DzVvNH84S2bwunILXc16uKVIn+3osSyo1x9I+lUFV1q55hjdG3zo4?=
 =?us-ascii?Q?FChN55bRhGepWZRmQAIUSV7I6+UfiVCabQ2VO2gmGVsYvcWOnyKb5HljDFGa?=
 =?us-ascii?Q?QeTmdk6cxvhq9nozrpK/7rfVoxm3N0rxLrPhjicl7MjAy04hD1mLJO/c8FJt?=
 =?us-ascii?Q?2eZbMmIilWqI+/FhjForPq7/F6RpP79uSxEJO/Sd1TAC4y70n07kYdiDRG0U?=
 =?us-ascii?Q?f73zSANlkW/FbRzIlyjMlZXa/zH8PdPkCeBHpSdDCpBWjbonQA4dcbbnsxOn?=
 =?us-ascii?Q?0vv1FSs2kGKyENOpf4t/2CX8AQNz5e2FTO+EB4tAEqZp2JjZavOlQc89bPdD?=
 =?us-ascii?Q?uK5oUUjDIkR43crfZqolRtFnpwdYBC2Nf1U/qcqH+3m7cHChYxS7Vqx5dq9w?=
 =?us-ascii?Q?3FfsReS9vq8irdNnj8/N0dc1ZFaPGBN1g5ZuJoB/k+DOl2mqT1/ZCZ/nk2hR?=
 =?us-ascii?Q?hEXP+X/c2sAdKjZSRRUXr14dzlnkPf+OCULHYtsuayPDVU2EoLvou06hc5Ha?=
 =?us-ascii?Q?CtiCh+VMH5KUCqSNWKVPObSqiBgxkGT8JcKEhPlyV5+rL2vjaIB6aYP5UrJt?=
 =?us-ascii?Q?ejIZ3KsT5pNOhQ6zr3SbICXlNLirGCeC4qImDm8L8N3HFIFgcyw5uXKs1fxq?=
 =?us-ascii?Q?QWnqV2AWoTEcabuFy/xKkgjt77NJ77660TNsMPz+lJVB2Wf141kJ49O3DAye?=
 =?us-ascii?Q?cn+KV52w14DYJCUwc9oAHyrW9R2CoALz5Egb438G9MyuJ3wsdfp3et1hJpAW?=
 =?us-ascii?Q?4VnQhjXqkwFiawoU2j2j6ky/7A5uJLPZu1WYc4W0r/aN4oRc8QVBZYUq0Jlt?=
 =?us-ascii?Q?Wk+fVa4bWj/2aGqI8v9cc60DKyxZWnqsAgIXTyJJ7AiNU7uT60De4ZjlP3nM?=
 =?us-ascii?Q?1huKHylv2/kta72xwkIWdWwiqifdxCbCFzJmk5SMSXl3wSNFQZQPeIz91WK0?=
 =?us-ascii?Q?e5grzPv1LKb+TWWo17EB9efhs31salLAQptR5easGf3FHvCA6sth5izR/pTA?=
 =?us-ascii?Q?MothvDJEO1LSZPvhtvsoJOGCNKMhMahpi422KFWEzOSK2kZ89EAwiB7cb2Tm?=
 =?us-ascii?Q?xqZQMjI0iHrvnfxbPJmVND8QyN4+Gyy8iBD9xpUx64qUpqytHkBWp4FseMbB?=
 =?us-ascii?Q?R49F2e05paj2BmtVlIiFi0atxltLcVjGGSNCsfkxKR10sRRTMKPPf/FUzBVK?=
 =?us-ascii?Q?HFRob/IZHj6lNEcWGYdKntoCOZjJvDdjvtKBwzEcJuP5PzMKJutvQLOuoY7Y?=
 =?us-ascii?Q?rOD/pKNmnkwB29CL60UKKD2bLwyjLp0vxx6aOEOS1fROscO4L6Vh+g4ImAr1?=
 =?us-ascii?Q?/hLEt0Xk6l0wb1nwEOlK6yijjQ3VIFzK/zdRbrOZuOAO0IhpIpOmWWnPhG8A?=
 =?us-ascii?Q?digl0JpQDGCeQJPyXZaG1TZguxksi/oUGTexEfDjGrZlU91+Eh0NaiD6vUPq?=
 =?us-ascii?Q?anVQKmOy6Vs4D4mEGvJT/ZxvZDeGXDvaNY6l/sEP6RfEI0rkp9cA6jHDYWY6?=
 =?us-ascii?Q?ZQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7c92d6c-3971-4d7c-3164-08dcc0032e46
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2024 03:58:27.3036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1IhR27ZbFBnf/0gSJhWTnW/1jQttt9aJ7z1RCzqtBRwz3DZO6sHiI/slbzcMwYTwhp2rrna8n+/WaYl7hBQsgjw3wTDZYhBLAWwfvkOEDyMpvkLZxT2RBoGbD5KLbKdD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6792
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724039910; x=1755575910;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mVmefF+pLMoaEZOYSCrEflwsSJmIIaVAwpVICUs+FJE=;
 b=YHUq1RtFK8cFwXB0MNftWwvJMT3FmY0GH5goGZkdQdC4Q6HrkZWLNQ26
 2uH1tzAB6l81S83bEs3OBf/RHgBldsWT9aW0qewEP1vGTNXY06RJcR8Sl
 PX4R9cgyPYwSOYSx9KqKC4QLJ7l8lxAk4bKXg/AFjrVSseKXFmPNpM1Rq
 i9cVD8snhmdtamxum3i73ApW5qtSRJwbRVnzwYMPW1klIkUMQYuy7BGf+
 UxMHPwSrEoy/SdbannxiMtrckhbGg/3Ttu/bhfQF1QY5ZXmO65GkQymD0
 nF/NrVBr+idfTIUs7paHMnhC4P+7P5E6fIvFSBmP3P/vdDBjAppgs58RM
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YHUq1RtF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 2/7] ice: Add SDPs support
 for E825C
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Tuesday, July 2, 2024 7:12 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kolacinski, Karol <karol.kolacinski@intel.com=
>; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; Nguyen, Anthony =
L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@int=
el.com>
> Subject: [Intel-wired-lan] [PATCH v2 iwl-next 2/7] ice: Add SDPs support =
for E825C
>
> Add support of PTP SDPs (Software Definable Pins) for E825C products.
>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V1 -> V2: Removed redundant n_pins assignment and enable and verify move
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

