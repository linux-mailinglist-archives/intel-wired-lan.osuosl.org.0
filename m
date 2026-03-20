Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Le9KIHvvGme4gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 07:56:01 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A7B2D65E5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 07:56:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86B4D61ABF;
	Fri, 20 Mar 2026 06:55:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QgeNiubRmUuV; Fri, 20 Mar 2026 06:55:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BA2161AC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773989758;
	bh=T1Q+5XucSBKWlxVjMNRtEw5dKhHsDxiDsgt+zWvtI4s=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I/oObXIt3UCxWLUfkmlRpowLsUL5LqtKAF1LpFNQyhtIro34MOa5sg2mJ5fdG5l6s
	 gcX+EvCcnj/ky5icH1/lt4NG8yrsTYXkIfgtY+DYGlAcAGgXEXeMKqR8qTna3KsE0h
	 zrBJDsRIvul9lVD9KtVz85l74ZNRyRE6TcD0MhQWCgdoKrbsYOrIDdigyEQqdgQkdQ
	 HRXLZV4Q93dPQfNFP4Y68+yZMwpb7muwZ6SzoN4YM1qTg5eiJLl3hb40jLlxHzJ4ze
	 iy3SQiXNkv9O9gM9hUVexjzRKH237KMQ9BSv4rpFi287RZYnpE2NbrEJJavt7ukHpR
	 mJLdLezdEu7Sg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BA2161AC0;
	Fri, 20 Mar 2026 06:55:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C29B2265
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:55:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C06A8846E9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:55:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p905pcCTedv9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 06:55:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A2E33846E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2E33846E7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2E33846E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 06:55:55 +0000 (UTC)
X-CSE-ConnectionGUID: 60A8DVPWRTOPDN6nxWcplw==
X-CSE-MsgGUID: 0t+XhOWBTOG+2qet5Synwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="85698218"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="85698218"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 23:55:54 -0700
X-CSE-ConnectionGUID: FSbYCO/aQCyiO6wl9k9IFg==
X-CSE-MsgGUID: uCgZVH4uSnCd6rWSdBfnvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="253701463"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 23:55:54 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 23:55:53 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 23:55:53 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.12) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 23:55:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fZ2QLqXQwpGAQPpRdDH64wFtflUx+QEQich7j/F7kOrY0QF3mGcrLx1cAgXq3tIhql1MeMOsC8ul8KOvDDbWJTiA0Eb40vKt8lvoUps2vrwsLLNO31qx/604S27eUoiEQdgOzsxPwrUwLmTVurnD47k7TJ+IZiFQuVkhXRq6376i3Aqd98a5fL2qpvfr+9/JYam1zeBbpaTFF6EQqlzPVY9csKMETZ26GDU3rZfsRGHM/RdQZnXbRzGOvbpdbLPLOzn6n8Xu3qvwW+5Tiqziw3vlb5udTuQh58kCgOanwYS51FAnTXOoyH33906t2R1LmnSoPeksngvvso16NvNy3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T1Q+5XucSBKWlxVjMNRtEw5dKhHsDxiDsgt+zWvtI4s=;
 b=MuuFA+k+Kv66aKs0783igugrIjr4D+5pDN6qB4L6Mdn0Qt0yNm5YHABxAaxSK1EEmczFvr70DKXJTjS1e9bj49lfTbXx667aK2ye9vslSBN1Bd3YxPgmo2JGzeuQHGmp0QNkgelIZ4JXN3dkVrKqUqwhyxQqMSHxaLRRUBYTLd2WJNICb0A92QWPREQpVJ1olAtHyfnZ9W+TccympH08LT9JW/NYEVMoFYQDHcSWTNGybC0/QSM5Bem9AHHnVXQM6NYCqRvyjM6zdOSMAFzw1Fb82fupgaHfIvALHzhN2NfYEU/uHwN83+kN+sAhTfe9jvtMlcTrNpGy4NOAKKrrjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB7409.namprd11.prod.outlook.com (2603:10b6:8:153::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Fri, 20 Mar
 2026 06:55:49 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Fri, 20 Mar 2026
 06:55:47 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix missing dpll
 notifications for SW pins
Thread-Index: AQHct+J9q7VbhUtxL0iV5L9l2IZ1BLW2/S0g
Date: Fri, 20 Mar 2026 06:55:47 +0000
Message-ID: <IA3PR11MB8986D0C49183B725E245C9FBE54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260319205256.998876-1-poros@redhat.com>
In-Reply-To: <20260319205256.998876-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB7409:EE_
x-ms-office365-filtering-correlation-id: 155bb553-5572-4f74-1572-08de864db6df
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: 11b1NBk8tiQatzwVsfL/WlORVEtXegr0r9oeLCgfQeGUMxF9zZoE9vNFP7LDB2Obr5HTgJ8iUiQ+AYfOnKlk5Dr/dI7ZQj7XP9BnkC/gn4PtCueTNOuAHuR/CZXFgNndolp5lzpz08551zFhUYXpL+J42i28kF3nU013BqPCSujSRyYvuDySOAl8C7gk9wBcyxBXK7lklS/6unNYrXkuK5yP1lrtnZ39NZ2knE2lt75W8az3kl3BgO8w2xkxx1Djc5GPdIEtvRkftqqfPqQzbAsEKL5NDwbAyryAMpLBMLOLuDAh1Tv4QWRnb4f2E1KEY9C8iR3ggUEYfFB3fBU+1Bou9/P0qH6nEUebY4xMiin401tPJyVJL9EwclLmTgLKcPmNA0ckGHxgc+uL6t0aX8RyqZ0wuUFtqrOO11KS/TpZlyQ6/6gD6FmJKGoN7n3x/80FcDh+4L4tpxowfChxgB1ytqrlVqR+KDgc/BettUdjSM92y5iQXg/bu+rfd6mrSP/KG99HRxFp+3mb28Hz/PnpWzgQ2Ydyama4cPN+Ixjfk1hn8i+J7KFF78c/uMl7o6r1ajvWZHb2y+ayP2pm6CWNasQ9wSCtk8JkMjXE37m7+dBo6M74vt6BYo8JoVbyrJz2FmO61GBbiHxtjps8idBRsf1VGFMzxzKZXFqVm47YdUAEnztz8aX0J/5Qezb0wvMiam3HJ9BvgvVu9aBMMJUQTtgHQX13C5wByVr4rtkb6OsxCHum+5jKPOkVm5Wp5Nc86BCt0slaxEGp5PraXst/EV5JJIsyiURDApMy2K8sdeJnt3MBMbM+WZ/BUrJP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zYvZElVL9flEZsX0LuuqCGZVZge4BnspFwCrzutPOU78xgz20ms4XrbFRRqH?=
 =?us-ascii?Q?xZgETbvzGMkC8bzVcjnf13t+RNUg6v8t1/ukT+ORQSgb2enHiV2uVJt/sF0J?=
 =?us-ascii?Q?u5DfHbprm7fS7J/fhGxdLiz1kPRsK+NYJnaVzEkE4Qz3Pc3DdEDizepY6dKt?=
 =?us-ascii?Q?MkhHpwltCkPJpS/1Ucd1g//Uoj/wHHAvaqabVgB+b2z+GzoFnH/inbdZfMfG?=
 =?us-ascii?Q?H/NdPUs0HmdS7POvEdfrFtI7GEi8zNOYWMTzXbz0Z8tMDk8kEbylQkbW3BBV?=
 =?us-ascii?Q?IfpZDOwoJ0v3fVL/pPZB3TNsS2Xq+EhEEzHrHp4frNqUI0Ww65or2v32EC2E?=
 =?us-ascii?Q?KBG3/WVBmZclH/Krn2Tkuf36nCUGDNOGlbnkJH3nfhLZN0i2zxFpNE9QnYsh?=
 =?us-ascii?Q?ViFa8u96ZLeHDpcJmH1TwvBlKLATWylMvQ+8BmKGQST4ftN3eJ96jyxz24ei?=
 =?us-ascii?Q?XLrR4ES52Fw+67odzICoaNae2N6F74my9PRS0Oh6JSMLtCeUoQnE2uPtyCot?=
 =?us-ascii?Q?1ST4nKiQd1s5a47DBhCotTH8H/C4F4EmWbsv4Pgog0AgxrbwT/LkgflZ7eSB?=
 =?us-ascii?Q?ykdeH0bEfx1kEOUIPunl2mKMrNxIRS76TYgyEw5sniJaCkMR5sn8jexIuJdO?=
 =?us-ascii?Q?zZS1YbTWBmFHk0HKlXQOQWlErafA1bTiOszswf+f85XPqAQlRRuLxu2ejvuj?=
 =?us-ascii?Q?kEHgJJHBgpqE9rIjDMxVh5g8tjZbPFXwC6/FNSk3AL9CD56vjIJIdgKP8pE5?=
 =?us-ascii?Q?ZeD25OCTIYuFFtaN57ZHHBUTehy4s1APNnLFG+ddQ2JsPKsWl14UYbQLuOe2?=
 =?us-ascii?Q?b/NRUs9Ra9QrprNqaq1oM7163Ntb6LomPnKFb8ec3QpN11owgU6giVOKtqJx?=
 =?us-ascii?Q?9GOHa4CHWxQ0SWHjWWlT0fye3xW+5VpvDH3hTCXtZCWiZ0NXYDed+6X5ESIz?=
 =?us-ascii?Q?T1imYIDyH4tXSQzAjVdHOffASQg/yiyEU7dKdXNIyR1SxSCGtRbmWNMVarsb?=
 =?us-ascii?Q?u2xhUzP1evHSzJxwcOGTAITiD0gYRL6X2amWQepNp35zATkgkAwJU9jfL5qu?=
 =?us-ascii?Q?XoK95exh+yBJnXeafKH6e/x6QbWif2yk6PhVkwuJAAC2rGj7Ew3QOSoLmwO3?=
 =?us-ascii?Q?oIBnHc6j+YtROwq0CkKsNNoJvNPw2ZEzEwKkZIZ79sT7JrWS9nKG/DzxPB3u?=
 =?us-ascii?Q?lav/SoIMAmMapbSXFsOmA9HzquBc0lUK6d7dHi8jiigH3N9ATZwnNCXf3hdj?=
 =?us-ascii?Q?/OlXqA3Ur/P/rb0Xdt6Oy7k5lvlz3ousvlrkU0xhlt696UuGkzmmTTmPXEbr?=
 =?us-ascii?Q?3vLxt6o64FaxJxsxJbOP6z9a0f2dCwpeA2XevZZ1+lQk2ZgqOPkOujm8sqvK?=
 =?us-ascii?Q?4zJBUWl5qRqIb/5KKpIqGOiDD6uDFJfSmYsp6p1cDdBql+3RhpLJvgPYrCvT?=
 =?us-ascii?Q?5VZ9qGH2fSOZaF4kwU2N6mi7475mP+cyqqcRSQZ6Uf6hgdDQMwLXIokNXpzv?=
 =?us-ascii?Q?th36SsFKDJ3x0qsP/J3dd90tt0qZlZvjQM3M+R+2WqX3qw22HURj44MpgAle?=
 =?us-ascii?Q?TSr4UMcotMEaGqXENU4Af2LUhLgSdNA5gFzpbnBa8UXxCyw5X8JAqhaEfs+8?=
 =?us-ascii?Q?+aABhBml4pHr71bdjnvXEm82hCKU1feaIZ6CQ2gXy+zMIrn17j2SVS/w/raO?=
 =?us-ascii?Q?UgkWG6ZwF7B5QAn0jVncUXoHUe1kpFsU4gNXmQZaBMBLQa3AYJTuY/unet3p?=
 =?us-ascii?Q?sFsb03zi1D0No52853ABiSspQmbuNR4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VNWz5DFivAj55pTMMCoE/FecPgzRTYDXa7Hx5WfjHmzYf0Ct110PsAzgpj9QZKoXshjeLns2AXcBm6Z81CUzElpjCtproYz82zFUjtQtz+mJHqguc7qMHib+IRaV76zZUMQqqZYrsx3HZur5S3SInf4udl/MXhyTsxYg2h+bAdJBJMW9FjVIwymB8qPwiPw6ndmWaTpZpLANw6v+QAXE+bbLk4rJJeaZkyaurxBHTWnU/rMkyasfFVczCU4sk+3JTUlXYMihiZMkkJrCILVJJzXsz5WfQymUIPYxiaIcE/nRGDrZFG+oz2DWNJjDHSaZGom26EGilZfVrTS5xLLCVQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 155bb553-5572-4f74-1572-08de864db6df
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 06:55:47.1456 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r0QMI+3kMBCWzHwBOJ8dsQVYlvl4zuZtgNQAyrLwdpnn8UJX0IQjIxY86Aohcb/k+U27qF7PdNWAC255SP2/0PzvsaK64UL1F6weArqIQQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7409
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773989755; x=1805525755;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kncq2OGbppUMhbLyzojBW6TFbWXar0/SFFcEy0720Mo=;
 b=cWhK9PIRXh0E3kohtzvk8iA9KWZIaJg9dFV4MZAf7yVJt6TdbbCA5oKk
 abizB14gyvg2g/goBjItTJE3aZW6BLFXRRAP10vL/fqItgkc7SQHis2Nb
 3MdVB9IuPOSe+CEUMiEQo60lEiklp5QzYQ5ZyhOb44zgCbFG7Th0FeH9a
 9Kt2PN8vOfoRGQn+T8zp20VeBKr3emB8FN0mGjvefE9K0xg17sQekHYct
 de1RmKm8hnw7zmVOlh2CoUSy+rZS/xoFTQGHDPvO49y83DTlNqHid4muf
 TMmQKa2F8EnEo7i+StJ61qpWbh8di6KFPM8HvA1rEaQfVH2dpFueyY4Io
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cWhK9PIR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix missing dpll
 notifications for SW pins
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: F0A7B2D65E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Petr Oros
> Sent: Thursday, March 19, 2026 9:53 PM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Eric Dumazet <edumazet@google.com>;
> Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; intel-
> wired-lan@lists.osuosl.org; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>;
> linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v4] ice: fix missing dpll
> notifications for SW pins
>=20
> The SMA/U.FL pin redesign (commit 2dd5d03c77e2 ("ice: redesign dpll
> sma/u.fl pins control")) introduced software-controlled pins that wrap
> backing CGU input/output pins, but never updated the notification and
> data paths to propagate pin events to these SW wrappers.
>=20
> There are three problems:
>=20
> 1) ice_dpll_notify_changes() sends dpll_pin_change_ntf() only for the
>    direct CGU input pin stored in d->active_input.  When the active
>    input changes, SW pins (SMA/U.FL) that wrap the old or new active
>    input never receive a change notification.  As a result, userspace
>    consumers such as synce4l that monitor SMA pins via dpll netlink
>    never learn when the pin state transitions (e.g. from SELECTABLE to
>    CONNECTED).
>=20
> 2) ice_dpll_phase_offset_get() returns p->phase_offset for non-active
>    SW pins, but this field is never updated for SW pins.  The PPS
> phase
>    offset monitor updates the backing CGU input's phase_offset
>    (p->input->phase_offset), not the SW pin's own field.  As a result
>    non-active SW pins always report zero phase offset even when the
>    backing CGU input has valid PPS measurements.
>=20
> 3) ice_dpll_pins_notify_mask() does not propagate phase offset change
>    notifications to SW pins either.  When a HW CGU pin gets a phase
>    offset change notification, the SMA/U.FL pin wrapping it is never
>    notified, so userspace consumers (ts2phc, synce4l) monitoring SW
>    pins via dpll netlink never receive phase offset updates.
>=20
> Fix all three by:
>=20
>  - In ice_dpll_phase_offset_get(), return the backing CGU input's
>    phase_offset for input-direction SW pins instead of the SW pin's
> own
>    (always zero) field.
>=20
>  - Introduce ice_dpll_pin_ntf(), a thin wrapper around
>    dpll_pin_change_ntf() that also sends notifications to any
>    registered SMA/U.FL pin whose backing CGU input matches.  Replace
>    all direct dpll_pin_change_ntf() calls in the periodic notification
>    paths with ice_dpll_pin_ntf(), so SW pins are automatically
> notified
>    whenever their backing HW pin is.
>=20
> Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
> v4:
>  - expanded scope to also fix phase offset reporting and phase offset
>    notifications for SW pins (problems 2 and 3 above)
>  - replaced ice_dpll_sw_pin_needs_notify() with ice_dpll_pin_ntf(),
>    a unified wrapper that covers all notification paths
>  - squashed into a single patch
> v3: https://lore.kernel.org/all/20260220140700.2910174-1-
> poros@redhat.com/
>  - added kdoc for ice_dpll_sw_pin_needs_notify() helper
> v2: https://lore.kernel.org/all/20260219131500.2271897-1-
> poros@redhat.com/
>  - extracted ice_dpll_sw_pin_needs_notify() helper for readability
>  - moved loop variable into for() scope
> v1: https://lore.kernel.org/all/20260218211414.1411163-1-
> poros@redhat.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 47 +++++++++++++++++-----
> -
>  1 file changed, 36 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 62f75701d65205..5cfa19da099bfc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -1915,7 +1915,10 @@ ice_dpll_phase_offset_get(const struct dpll_pin
> *pin, void *pin_priv,
>  				       d->active_input =3D=3D p->input->pin))
>  		*phase_offset =3D d->phase_offset *
> ICE_DPLL_PHASE_OFFSET_FACTOR;
>  	else if (d->phase_offset_monitor_period)

...

>=20
>  resched:
> --
> 2.52.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
