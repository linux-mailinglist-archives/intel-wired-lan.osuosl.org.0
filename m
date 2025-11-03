Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FD0C2CB88
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 16:28:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A409605C7;
	Mon,  3 Nov 2025 15:28:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6tmvrNUuWKFW; Mon,  3 Nov 2025 15:28:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D062D605C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762183732;
	bh=5sUMySqkhYoQQ0W/UeoyVS4aOy9nGD8/MCLDX+WXmOs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oqopDjEh/YJZYFpjoRaKHyisNLileqCfVxytAjGks9wq5B/tZmOTBO+FfbufkiEUR
	 O0ltDbCpLf39mPiHG3ZRxnoqRUev/a0/ZBO0xP5M8mVqIIVSF7ymWRDoI9ph71BpXB
	 cSxUf7ibb14xeIaELsLKStcjaASpLkpOi0irHOOY74C9LqAraMYGguWMrfNKDDJLBL
	 +XlN+PcIUus/i009aJdpPN3cT4ohQnhwAmiy9CwgdgYFWyA5Vsq08PUsZSsKV0DNgk
	 ir2mBpOjgnbdyIemfPj94KApE7oVrKnmmUqYN5RpyUqiGvl6HKx69X0XyEbj3PNOQa
	 jyxoXKdDoRsgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D062D605C8;
	Mon,  3 Nov 2025 15:28:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id ACC8F278
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E8A0605B3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:28:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UtvefDxUMey7 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 15:28:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F36B4605A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F36B4605A3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F36B4605A3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 15:28:49 +0000 (UTC)
X-CSE-ConnectionGUID: ia0qWdF0Spe3gqfMb5jOuw==
X-CSE-MsgGUID: LPh0TI2vRm2WQXE32JPRDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64356876"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64356876"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 07:28:49 -0800
X-CSE-ConnectionGUID: IXyXRpwxRXWty3nxDyrn3A==
X-CSE-MsgGUID: Aj3yQAgXS0iqUXsp+BATpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="187040667"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 07:28:49 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 07:28:48 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 07:28:48 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.68) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 07:28:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RkMIHM/BshXMIbJTqs3T8cPOy54zeKwZuGD0P99nZcuVRgw1KH3D7eylf08pyybcpPx425v3MgV8XJPDLTXUWOG+zIg9T+wlnkiRoxnm2cZIK1HADhsux9RKJr1g72Qlkqw4c1G5TuW4C7SJZZUatKSYwI0kJyoyYpkbIIc+H00KTN4tK0Xow+P6Dg5jTYfiwRzIlmM8LG7w+bZdp+V34OvT7un5YwHPvIL4OpsfAbC0H9gXqE7ngzVys3q5PqtsrwvXvl9zJvRxkdv99aB/gva9PD8VoAlTiSSrXyFw471UHUt11PWp5V01y7tcKifIzLctEAjnk5ZCHm1dYwuStw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5sUMySqkhYoQQ0W/UeoyVS4aOy9nGD8/MCLDX+WXmOs=;
 b=mpSnacBCHxc7T4IT8uHJgJAixzPUubeZdxu2ZI5ZrKY2NgUMV4l+WWAzvDyY8+14n0dh2y6VNdEuBLJHyGGB/jXgn1q0cTj1nyhIg47MoyYTn0Mb0+NcncQERs92WZBDeSShvTfQYk/LVISkPrqXEf/XufieFj8bTzvj+p3RiCApLU6nyBvgyKYUven894jeF3SWQ+uF+0GT+CvYd/23ztPgqkRYe2k6lRpLL6lerjwi0sgDX37hgReJQgm9vmUapuKEsPkYDC9Hgqu18AeQUCbsiWSQ6SiJ+gGCoiceIcMo19QaUFIwmEVogFjArQyo9AUccLObjclu0m6pu2mqbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by MN2PR11MB4726.namprd11.prod.outlook.com (2603:10b6:208:269::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 15:28:46 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 15:28:46 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v9 09/10] idpf: avoid calling
 get_rx_ptypes for each vport
Thread-Index: AQHcQuFZEsgl+pku8kKQ9+P0fJTjpLThJnZw
Date: Mon, 3 Nov 2025 15:28:46 +0000
Message-ID: <SJ1PR11MB6297C190A139FF26260522519BC7A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
 <20251021233056.1320108-10-joshua.a.hay@intel.com>
In-Reply-To: <20251021233056.1320108-10-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|MN2PR11MB4726:EE_
x-ms-office365-filtering-correlation-id: 4c69da91-fd00-4a8f-d713-08de1aedadfa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?lFLZwx1fS88Nca8CQGmKrm+JVJzTW/B0gnjAj3RrgbH4EYsExfHslHZ7tx0V?=
 =?us-ascii?Q?FsinH/v6C74VfksSS+TXEptGF4Z/2pwFDumIB73zR1lvQ3J1H5AJOQPZx1ic?=
 =?us-ascii?Q?ieidQWouAyJJTG/dZlfEe9wAYTlM+5Wi1F+Fnr0L6Px9SsnrkvNwI9BRBdms?=
 =?us-ascii?Q?07ZG7Zrq+EZ/tyrTF+uLGJFyHvx6T3X8laPLTsdisdJvBIoCzVsSP96+XFCM?=
 =?us-ascii?Q?zoDMrucDklYBY2YbHfh3C/keyyyNdk/Ip/T5szIWxwvK6X7YWg7mCQiTrQ15?=
 =?us-ascii?Q?fNS0A+q05ROD9ttCInBtKRT2BAbG0RpRPOCB4ZMywYyOULkRvqLyIJr/nv7y?=
 =?us-ascii?Q?3tZxvIrlriPvriEscGtSPSPpQtyJJ3uXYUimUdr0MUGsT5l/p1AX+1AMUr5I?=
 =?us-ascii?Q?0PpU3zlegHjRlqREOCf6aKpAYoRBcxPXHsZtbKHD3TuA4HEy4djudTu9QmF+?=
 =?us-ascii?Q?LbLKqkk/2XqNzIQ5/ENIPOaehKXMcVQnj8452q6SaaCa2ipSUgp6CTn1b/oQ?=
 =?us-ascii?Q?3LeRGuNmQM+o1U8UgW09W7feCikWVL3UkurcmWNYiZB+gdjnhmv021KmnA4M?=
 =?us-ascii?Q?FzUu5kLiMCk5dc/MtgraligqkfwpfuL5tvEAAlQHKcL5fjPaBjx2dEVOemXH?=
 =?us-ascii?Q?96yD4+cPP1GWVeKh+cGCSFfiGvbPHdIa6BXMYGze1Fz/v5Lwiq/KoxFyLu42?=
 =?us-ascii?Q?1TQ2wgQOI9Q4tPCbeMMkYNqDR1dJVS2HJmu/xIDA8yHkLd9W499uFw7Wm7Nb?=
 =?us-ascii?Q?lFpLNOhRb4alvmmDDnl923qE9/BXwIaRH/EXwOBOR4SpYxq9WTMqlx16PSdb?=
 =?us-ascii?Q?IIjox3PBfeREaXiEPwYFoYqQFJ1qpkoJENledMoOP/tdl2jYMAhNfYo4jW3N?=
 =?us-ascii?Q?AtQP4SNEzO7iLrCIbGMmgqb55jMzVv20cNTiDZ7twSqrFcoZAsPFJDuT3S6t?=
 =?us-ascii?Q?TiNmyOY4EVjpCQwqe53l60whLqzkTeS1HfTdwbafuNerrKuoMN75ESoHgwsp?=
 =?us-ascii?Q?ZWGra5at/iANFypvGEVkgdHXDq5oj7uKmMgMBuLnvxdzMsHsepzl3nqBy0UG?=
 =?us-ascii?Q?7u7BuOPREqi74sHY15zokB8q6e51ePEMiCvJy5B3ystNzblAbr4Tk8+LwxlN?=
 =?us-ascii?Q?C3Pkh+WAJcGH35UUdxeYUw/olKmwFlEbp22hjEVxo4gvtKWskzZt9aCASoSs?=
 =?us-ascii?Q?uguySc+4B6UdyzSgOqB7HpJ4JkWBScH6lWo10BmKacNczq3b9uDGtxOCZuNu?=
 =?us-ascii?Q?ct2aYjLns8LfLxwzHYUHKsiAcr0LVWqOcXntosITv+0PlbqTCxNKlWmv1oG9?=
 =?us-ascii?Q?6dSo+Aan+YES0s8XIws1jeSveWToQn0rOIh6SdQ8RnLwceGf63aF8PQ01bL4?=
 =?us-ascii?Q?L0u+suaXPQkFfuWqTgvJ73lJt++6VUckn9t5cxJi7WfUqpmk5yLvq8NW1+Du?=
 =?us-ascii?Q?PI3YlqJjtYZWulBTLcVGUYs491t7sI6URxTmJ6fGCOZxPUmAUncDZkE/VN4J?=
 =?us-ascii?Q?TOV/4FaA7FbHo9oIn/yk2wtv0sVnEBcCCl8f?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6JHVMxvZviNxvVDnK327A/uVyj+WKHCnuDU8sWNu0IT0QyNoGCY8DyWXC/cd?=
 =?us-ascii?Q?TP0GUSFNrYEaMaU17dpwXDtZ72WFzmlvVYHaAK4790XAEtMaqNYSTUQTmQy1?=
 =?us-ascii?Q?33wa3M5RPGbDpjGoudSH8Vd/piQ14pe3k2q0OMXoo3fb2p9MdcVPlriMe59c?=
 =?us-ascii?Q?BHbqThfLDbE6D4/Jpm3vdzY5N0JBh2xgl4/SD3YIYl56vEW12PYzodiN5vqa?=
 =?us-ascii?Q?tMXypkjw/9zZ5s2TcILUacJB/TvhVvQPs7+8yuw0VPKX3rWjVAvzQabmVuYw?=
 =?us-ascii?Q?fdn7B0GdnGEw8seHzGuUi+hu6UkQ31DKyC6rh1DUqRlgiv+nuboynT1J6/vZ?=
 =?us-ascii?Q?3BjiPwJdDAedT4NInPvu2yzxV+ZHMR3qq67G8jHRqGG/NVSSvGMsoA8qWUxE?=
 =?us-ascii?Q?nhxg+rlFkBfO2Ju7mpHhPo+TmCS2iXp2hr0grzG369Wq1/jqmy9vqKrD023+?=
 =?us-ascii?Q?i8zLupax5jMoWf6pHMV2jb3bDLi7u1jBoURvNVjugrYKVmOlz4T3yYmPDLaq?=
 =?us-ascii?Q?J/X0Lyu4vwZzYLXqkunhfQfiKIWWpI4Nfk9OSRHA+ZbXYecgTzLDTeIbnvd8?=
 =?us-ascii?Q?Y9H4OJwGcvmk2/TPx4aHHBNiN8HxaaPyglO0bZW953EZrPWuoL7E1HuZi5VM?=
 =?us-ascii?Q?Ml8TrkgEVFhz0BJ/Eo5+6dYCVosdoqaW9GhkwV5oXWcUzLD2RcjBgM2jVNdV?=
 =?us-ascii?Q?ZfIPNA71kLrqUl3LCxrIlmJjbwwEc1GnGdgsnzm/uFQOsAnEShDzDSUs/aT9?=
 =?us-ascii?Q?JUCSntuT85CEe+JOugvFcGHWaAOcmQZhqYfnhYH5/afkdCKbtbUfmTolC/bZ?=
 =?us-ascii?Q?HA6vBh51OBW8BSQiqGbq+LzsOPMpYMYbGku80finruyicAh6kJ7R1zZNQZcl?=
 =?us-ascii?Q?soClpjFmpjqN303XMk6kyhn71gMrj0MOTx2HDSlNVSRqmTo7HnCN1tdfgS8V?=
 =?us-ascii?Q?W4kYK3aKcMjC2ExHpOKS9oqruq0DdGKRdas2Ub+DJCpHaIXXlmbanh3T53ow?=
 =?us-ascii?Q?l0dZ4r054qjpGvFslKZT5QbVSOwwzlN8MPW4Ehqwse5W3QnGHtvOGbSG6yJo?=
 =?us-ascii?Q?u+IN0fCgMsCwvfEszjmq5xX7717qjToRwhzNbwjpWMDh2GM0bZSTMEB7+SYC?=
 =?us-ascii?Q?F7Q0zX9xwp7y2mouu908WP/WSyk/io60+uS0yGuJPHv4pDu1/QfNsIQDjhN+?=
 =?us-ascii?Q?0aQZGYTxza3RSoYFx/WCdSO8qSOPNzaH66sRxWmZ0Kt1UwrJYRizWDx2FLLA?=
 =?us-ascii?Q?BG36ObBgviW9UvA4r6J8Nabm/3xi+ZEFEVL0HfEkwUeLh/qJAycg03N7KStI?=
 =?us-ascii?Q?Rq+ACeyDUkb0fmdyvRy5PQx7PWHz7AxmAlEO0ov+P9Uh3wBo4jCr5jk1Ap/p?=
 =?us-ascii?Q?p8s3UiUb5+6u5V1WhKNOT158Ey8/eZRhSfO0kuRvDrVVzJ/42Oe58fSPT4OP?=
 =?us-ascii?Q?NNFWe19/q3hLj4Z9VMpNA7h1iK3pa3/jChs42b9v155TN7fwS2cS3Vm24RCB?=
 =?us-ascii?Q?sIcH2jTFjjd27IjiW1Wa8JYJUG1WazPRn3h6fg/ElJcyhBTWsB2fQpNmTID/?=
 =?us-ascii?Q?8nWSc825tuQxk2YHHQC5R70obR4CLnHDOY8JIoK+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c69da91-fd00-4a8f-d713-08de1aedadfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2025 15:28:46.1168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WotoFsI8Uo/RrA0JgXr2U7yWpDlz0rFaRvhb5luS/Yv36D6CP1Lpym9+XXBIuHQnWisncizNvm3i6eZBtVe0Ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4726
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762183730; x=1793719730;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5sUMySqkhYoQQ0W/UeoyVS4aOy9nGD8/MCLDX+WXmOs=;
 b=JaM2yY8nazaXurI/Wlz972cDtIrBttQnSVGs49HzkS72+dKGr57fBgeh
 ofMUACTYa4s+w3Y8UkGAidqklMNdUPum0J5MBjTcNPF55ayk8Ax9EXeI3
 1Uk5tjgfXffQBLsI8oJHsU4tXgkZmOIUGp/x+WPWna3P1Na06yE5v4w+s
 tf/x9ANtkGWiQQX/8koj9+Hm2inTzOaMm3ouyyrLKPCYPyiaZnv9iqS7S
 bcBHlmnIgObBYQQmF5ch9mTxmGE0xQ9PJKpLvTR9LSp4g8MuwhIM8Sn2I
 tnwpXiAHy6n4J1cWBr4svoEwq6hqQUVHUERy3+uNIXpLKmApFCRYcDgDm
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JaM2yY8n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 09/10] idpf: avoid calling
 get_rx_ptypes for each vport
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Joshua Hay
> Sent: Tuesday, October 21, 2025 4:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v9 09/10] idpf: avoid calling
> get_rx_ptypes for each vport
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> RX ptypes received from device control plane doesn't depend on vport info=
,
> but might vary based on the queue model. When the driver requests for
> ptypes, control plane fills both ptype_id_10 (used for splitq) and
> ptype_id_8 (used for singleq) fields of the virtchnl2_ptype response stru=
cture.
> This allows to call get_rx_ptypes once at the adapter level instead of ea=
ch
> vport.
>=20
> Parse and store the received ptypes of both splitq and singleq in a separ=
ate
> lookup table. Respective lookup table is used based on the queue model in=
fo.
> As part of the changes, pull the ptype protocol parsing code into a separ=
ate
> function.
>=20
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
> v8: rebase on AF_XDP series
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>

