Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F07C892C3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Nov 2025 11:03:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8867C612F2;
	Wed, 26 Nov 2025 10:03:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P6K5V_FJ-MrB; Wed, 26 Nov 2025 10:03:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D06E160B10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764151424;
	bh=o+jLXEyOtHddC6EDXiabWo/7b20IdBGMGuRty/C/M24=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z6w08wVY7+HiTa9LFaiZXx6+15up/+ig/k9BvSXigoa6kX/aHr+QZFVff3UA+WmW/
	 11zql0bMrM8/WcXBDCnYaHvXwIKWVB2f9eKEeTFSudKrwlkFB3eDTlwwUHRs6uGHqo
	 cmSiJfAZIQ1XokE6kNxyBmzqBxEMAc3z599k/ohNow+ySqDFSfqAoRwoK26YHLppIh
	 qYHaoj8Cab0L6jckhFQiHtCgGnNsT439UGT7eM9hKTbBqchjOgpne5FEqpKJ/rwK6Z
	 5kIVRoulVcsX+JlO/6s8uiZKnZGN+lRrqpIeun0T/fdLmp17Ndy8/lQMQFZ22DRmPp
	 zO3Ep+gEMnsNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D06E160B10;
	Wed, 26 Nov 2025 10:03:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 42D2923F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 10:03:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 29BF540687
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 10:03:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F4_UVecW24AC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Nov 2025 10:03:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6989C40575
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6989C40575
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6989C40575
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 10:03:41 +0000 (UTC)
X-CSE-ConnectionGUID: oGvHyptDT16rAFG5j/3V+w==
X-CSE-MsgGUID: tr0XsrpsSXWX8KJfzgmR0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="65185427"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="65185427"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 02:03:41 -0800
X-CSE-ConnectionGUID: mNtbrmXFRJ+dbYb8zJ0xbw==
X-CSE-MsgGUID: qGJogSfXSr6qVic10dWehg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="193325601"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 02:03:40 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 02:03:40 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 26 Nov 2025 02:03:40 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.23) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 02:03:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wDBVwemBtYb6oHM4hhsO5rYTLVix/c654Z6w9E9JYDEhvLrXTI5i84TTFJqhqjejnKYynl/Pn0Is/QM1zSbdwk84Eqy0oOyFkEAB6awkzffaQ4ZoheF+h8OPnMUcuWao1qU7JJvyRJgOrw7S+3fnZmoxQiBYVi6STyp9fuLDT14kOD1VYRd080oYFPyBlIX2UjvZvlxV83vdYJiK5VrhgxZxNiGq1MhhfkXwckK2a0M3A9pdoQM5E4BewPgTIRkJqrxtGINfbTYvau124eFD6HNfQRhC5Y8XSU3xjwYQ1pfiTWVlKzB2j83RqHXHV4gZaH8MT6YW2Oo0ZUEdlDRZPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o+jLXEyOtHddC6EDXiabWo/7b20IdBGMGuRty/C/M24=;
 b=tXYYv7a4ALGFeK/UDyVIQauFk6hjPI2e8zzdLiRitmnPgKITROtBhFtmk49w7C8Se7HM86KH+Xfm4LoZAYyBbPfWLex+7XOEioqEWN9Y3qSckdyc8XCJqMzimkozXkn9JCv5wGkLKlxE+ibflzEBR1js6ZWEnbuMUhAZX4RVcjlg1wI0SBCBpTrsitNtcMJunT9v3YQK6y1tGaGJLT2B7j5sy5EcGmG8NAbyCkuBz/d/1G4mXyNodbolt9oaNIlmtcvKc7AWwLdetYEiNfcGii/K8UG1+Vs3E9ZiVlgnQRxVcG4D2ixQcYO8q7dBgyTvzTKrX/mJzOb9yAwMT1ReEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by CO1PR11MB4771.namprd11.prod.outlook.com
 (2603:10b6:303:9f::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 10:03:36 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876%6]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 10:03:36 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Schmidt, Michal" <mschmidt@redhat.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Sai Krishna <saikrishnag@marvell.com>, "Simon
 Horman" <horms@kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>
CC: Tim Hostetler <thostet@google.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] iavf: Implement settime64 with
 -EOPNOTSUPP
Thread-Index: AQHcXrn98QjMXEEvqU27dsiQk2xrqbUEucGA
Date: Wed, 26 Nov 2025 10:03:36 +0000
Message-ID: <DS4PPF7551E655202B3D3E09FA4E6B07C59E5DEA@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20251126094850.2842557-1-mschmidt@redhat.com>
In-Reply-To: <20251126094850.2842557-1-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|CO1PR11MB4771:EE_
x-ms-office365-filtering-correlation-id: 794f1848-0fec-4ed6-1eac-08de2cd310d1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gj4m6EZsAmxiYD0hrls8eulrUCtVuir5HOfIu796mNjJeCD4Ss74hRYOEDg8?=
 =?us-ascii?Q?PaYYpJmZge/Y0VbHsofX1eStguH3gbAZW0+5SgB++yF9+E7vXkDlmi2xr9kD?=
 =?us-ascii?Q?vZyyp0iU6cZ5k8u5MTapk/X5pbSvoLL12ALtt9ltdwttehGGijx/eNDwUWjL?=
 =?us-ascii?Q?oGlMoCeBQ3GGCWo0U2G0EaWitnBpPf+pONSATBkwee4OGtfwwPxUa82OTeaw?=
 =?us-ascii?Q?I8lpv0o0MhJHMqWqnkyQ/xWoQ1b0K3T1kYFFD1kNTe526Wrbht3eb1riY5xp?=
 =?us-ascii?Q?oqumu23LWB/189SkcSg/o1H+PAx8q+oBYe4wMwhDomIbAdTxBQ8RA1t8ksNU?=
 =?us-ascii?Q?BG1J8NcJSRdHD3nJRm5i4agGhbcfDxQDXExdICjn9C1DLE/BHgyHeSnT+tTF?=
 =?us-ascii?Q?5kenO9Y6/a8RPpcMhIezVTuvia2Nn/9qS3aMxppqrGBO4obyjzt356Og/N2k?=
 =?us-ascii?Q?mgHLl+x9ogJC22bZ3NN14z+A5BE8yTM8tmta0XiNO54YbCgjZWSsCNJ8OJ8y?=
 =?us-ascii?Q?8YKIybxPcESFhTgrBc3QIWE4pzP/JLh0S4h3WRmkRgdMG8x3LamY3ygPgpJT?=
 =?us-ascii?Q?5t6Hg3EM8aaz3t1QIzLleJswPh6vHJH82sxpt+3K/HizoTJfmdxnxNcdJJlE?=
 =?us-ascii?Q?qk4H0m+cjsPJ9kz6hyce8MzM9PWT/5Uo1Z15/UDdheomHKYfC4/qzQ7zC4zK?=
 =?us-ascii?Q?uz4RUwCAkFCkdxv5NaGcFiXSJ7FfIyIfQ/D4QJWNY/iImhomwpoLyyQq8MDh?=
 =?us-ascii?Q?kybZg33gXcUVyftKmqS/SVxzxyRlZAcj7HNP6u3sNY+c5ago53LYYcIeBZF/?=
 =?us-ascii?Q?nq3+Q8Aw8nCGsBeN6fe4PQL4nTw0/hr6hgraut21tQVAFPmmbYYUUQBlrFuI?=
 =?us-ascii?Q?BrVj0HqmKZiB9XPiIesCIbmXLjInKfLFiXF8hIFU6/LcRUAEVhAuijiRQYYI?=
 =?us-ascii?Q?u/anU/v+ZxYhS/JYUxeqsd2UDav9mvOHWXOR2Talf6W/b/zKFlzXAWS9wpjc?=
 =?us-ascii?Q?azzruSUG8F/NSiqOqUULg5pI5QBnOSaPV1mpGs09JJS9K096U4o2wsxyzmAj?=
 =?us-ascii?Q?avXs/HFQJdXxY86sV8QIRXSd+auZZGb1T2YG90UoqWcq/sOUXQuQ8lEU07wW?=
 =?us-ascii?Q?7HacyUGNHP7U0eZwyI2+RL9vvTPdJ4PSVYuKeja5ocv0np4/nJmlWyzMlX5J?=
 =?us-ascii?Q?FX2/LWuxaTTTVR95D7Fuewig2MneHIXeLfM2xJ209XNiXye+M+rX0l8EVHDg?=
 =?us-ascii?Q?ypD2MGVN/riucmi2vhV0rgr7Smawg8u6IGivahmKByr7cSWfqN/a+Qck2D+l?=
 =?us-ascii?Q?iYDZEEOUwOGNlUAjRtqsxRStk7WgnwR8KcPs8/zUuZtK8mb+wSgJjyKq8vTj?=
 =?us-ascii?Q?VtMWzo6BWQSxQf1ymp8iuGk+hiHjd06H3bkKW6M1IMsF9ypWQ5S9QR2RyK2F?=
 =?us-ascii?Q?VSzSp4V/iC8RLQkeNatDbAgXhAeL0CKZ+tuSLRHtEjN+yIbUQJATrF6b+V/H?=
 =?us-ascii?Q?iOfBY4hRz9uT395jFw4s+NLGpAL+8Q8S3o2pbS2p2cuRAu+j/ktfxoIRjQ?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dQzqYWkzfrWuJqwH55wO+2M79ln8eknUqnLAw7fNaV/m8Ga6vNwXWLXy7ScQ?=
 =?us-ascii?Q?hDQ5mdVTxXuM5a/omdd+MV7uvYcPko+xqcYScxNN/aDjT6rmX+kJwxzh77t4?=
 =?us-ascii?Q?wjSpBC1tsZsEBEiXBIjo04cApggBaexupsGOKbct2dk0skIkrVO2PeDJAy/A?=
 =?us-ascii?Q?Xlb0/3V23hGQiatkYOgURTpNnTeyVSuxkDRKFZEZqIyBdvIIzMSCazfYZ3bv?=
 =?us-ascii?Q?vsGISqXq2kFNweyNzJ5/J5ZnXGLa+XvtPxSeeyrWhAk3ZPKmnjTLMqAn0bGV?=
 =?us-ascii?Q?udwHIPDP8ZEA6IrXedYtKiFJA6aRYPStzx03O0rdDuZyVAI+HD1IdiSRhvB1?=
 =?us-ascii?Q?q6tOsj1h/pioem+7Kln085O8Qn4L0HM0Siudwa8223rxpRrOZG03wh9CvfUL?=
 =?us-ascii?Q?80mAFLN+4LGy1uPyBdAN+5ewiIGarhyaVs/0sUj2f4lcvmWLmHBXYsuyjLQt?=
 =?us-ascii?Q?4gUAloWewPNxSOWjhUCKCYT2mNeqqrHD5qmmgIEskXNHuIuBVYf2igoaZP67?=
 =?us-ascii?Q?XRU7r1KWXUfdHiIEiqEfrSErrdQnP+GHZHS8THfBsaKOcg8/cAGi9rt7hCVj?=
 =?us-ascii?Q?Cl3WEjuCifHwuukfNPdICrWv6ZrEULkq2QZkGr2QBr8U3IcqErxR34WQfv0i?=
 =?us-ascii?Q?1ebed1GNAqHvNVDjYlcqiL0RMKA30sAxIXWlxLSxGYR0ST4JA+kFX5hG0MKV?=
 =?us-ascii?Q?yG22CH//SDZQyWqN4X1ZAm12YlMeijwpJzWADcnALf63lLp4uBQ9EodZYgn6?=
 =?us-ascii?Q?czOiLrISk4GlIBQfWQxbi+r1JNGnMvfmH83Wucxw3aUuhCaVk3fJHEflDcR3?=
 =?us-ascii?Q?hGWmPhITFtX7HWDB+RoLmmSWgHgZD3o4TCQek0h/rZ2tZj1SG3dgDQ8P8Ccr?=
 =?us-ascii?Q?Dr076i63ensFG54WshQczQt43qeKl9VNJtW3I5PVf73BQ0PLW/V51ZZb4Psu?=
 =?us-ascii?Q?7uje1nxquyWA8hjJZQGcyrm1whzfoMv7AZK7OalnrrQyDwrmtQAjREkM7Z68?=
 =?us-ascii?Q?DceUb/qRNaZdMXZgtcC3yu0I3Y+8nxSEgsXxqVXs3OLyejEfZ1bKFC38vLQq?=
 =?us-ascii?Q?Jo8tE6E3b+GlMzpsLx4LOXbCZdEi8rqwIsyJHOln4NPVxiuCOG/nAfCKOr1Y?=
 =?us-ascii?Q?l0nF3d9Ulq31YI8SXJhImlD9yxzfzD+Pss4K701209JpLuOUVsY1FGYC20uf?=
 =?us-ascii?Q?R2M0siLQJU1bKkK/6bE4V5WMhTJlS2GJrwjFQpAIQMO4x+W43dlvOynR6lO0?=
 =?us-ascii?Q?FxetB0JUUYiymR/p9uIsuCvUKHfYkrqiDU6clv6qaZflyUpRnzRW+JT3WsYu?=
 =?us-ascii?Q?VAVJFE1PQIwGL7YKQ3FZC/+HJi9saOPsoBNJl10UePZoBJXTmmGQ5dqcXFcK?=
 =?us-ascii?Q?/zhixCrznAXJH5KRJQlG3IErfc4XWa+vzkig+3MYzKuDvq/+U44EXn9bL9ul?=
 =?us-ascii?Q?0aMw2N4xkt0j0Mb38c6Gkpt9d0Ql7u5V5Vj6zl1i/3olRXpM/PqVtz8Y3O66?=
 =?us-ascii?Q?EerzvJ5nBKIOIlgZOTGroQe+GOMTT0pyFGdiJc88dCbeGuQJQ+/UYsuMkPkZ?=
 =?us-ascii?Q?TVAKYMabaqf5UHYujKkXSxza5VnomnRueFM00vf1jPnCaElFSsczLqquJKSc?=
 =?us-ascii?Q?Wg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 794f1848-0fec-4ed6-1eac-08de2cd310d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2025 10:03:36.4402 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pKg0XhVVpcsWsmjVyPRxfM6DzwD9U9oQNjZBk0jbkM7EyiC49FgL/rVIRbHX7K7hTrXBftiiLPcBwWY+LvPXVGFpclxx3vDWXQmRqhZ0lSk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4771
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764151422; x=1795687422;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oDoXgKZUtxGKAg+IpVe4s7fpZ5BF9b0lLsO4TJJDA4M=;
 b=fk8DR/QMrdUMBDmJFCwTBfrLFtYmb2ICGLeuu/Jo48SMpId4CvFPpzM0
 nCtm7hLblxhc2H0b9zNq8vaycJ0LqbX8DsOrhmjT/ERMFbzYtFN9giSSS
 UbEophWnGMYJ7pj7uAPl2o/RSEsHC6y+yLWEAy5E3LWowxx/89Q8Mc+vt
 f5R+fCu9PvbTJsodjf7u2c7gNOj0ws1K+9hYSgs1gJ/w0IDVc3uIWpMjc
 YKhvqBNA6KEAuFF4PQ/fvGOpXH5ijRt270WlNDulBgTGJZy7+dmATyq+E
 V2ZmHWWIfbemQrC6KVsjgXwbvyHeAD9Bi6N4QQv+enloXDvJUoKsQ0sFu
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fk8DR/QM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: Implement settime64 with
 -EOPNOTSUPP
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
> Michal Schmidt
> Sent: Wednesday, November 26, 2025 10:49 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; Davi=
d
> S. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jaku=
b
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Richard Coch=
ran
> <richardcochran@gmail.com>; Mateusz Polchlopek
> <mateusz.polchlopek@intel.com>; Sai Krishna <saikrishnag@marvell.com>; Si=
mon
> Horman <horms@kernel.org>; Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: Tim Hostetler <thostet@google.com>; Ahmed Zaki <ahmed.zaki@intel.com>=
;
> intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net] iavf: Implement settime64 with -
> EOPNOTSUPP
>=20
> ptp_clock_settime() assumes every ptp_clock has implemented settime64().
> Stub it with -EOPNOTSUPP to prevent a NULL dereference.
>=20
> The fix is similar to commit 329d050bbe63 ("gve: Implement settime64 with=
 -
> EOPNOTSUPP").
>=20
> Fixes: d734223b2f0d ("iavf: add initial framework for registering PTP
> clock")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ptp.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> index b4d5eda2e84f..9cbd8c154031 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
> @@ -252,6 +252,12 @@ static int iavf_ptp_gettimex64(struct ptp_clock_info
> *info,
>  	return iavf_read_phc_indirect(adapter, ts, sts);  }
>=20
> +static int iavf_ptp_settime64(struct ptp_clock_info *info,
> +			      const struct timespec64 *ts)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
>  /**
>   * iavf_ptp_cache_phc_time - Cache PHC time for performing timestamp
> extension
>   * @adapter: private adapter structure
> @@ -320,6 +326,7 @@ static int iavf_ptp_register_clock(struct iavf_adapte=
r
> *adapter)
>  		 KBUILD_MODNAME, dev_name(dev));
>  	ptp_info->owner =3D THIS_MODULE;
>  	ptp_info->gettimex64 =3D iavf_ptp_gettimex64;
> +	ptp_info->settime64 =3D iavf_ptp_settime64;
>  	ptp_info->do_aux_work =3D iavf_ptp_do_aux_work;
>=20
>  	clock =3D ptp_clock_register(ptp_info, dev);
> --
> 2.51.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
