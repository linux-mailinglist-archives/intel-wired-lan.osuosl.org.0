Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EDBA9180A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 11:34:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F4D24142B;
	Thu, 17 Apr 2025 09:34:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o9KdcIZAJyTR; Thu, 17 Apr 2025 09:34:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95E0B41E35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744882483;
	bh=OMORza2RVC3h9paMvsdTD7eMFOpie3nqLLoI4wD09Uk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U1a5C4tYbvlEItypFOkptXQxC2ZoTwlZG0z8/gGPlxmi/ufuF6odpDSDqMPK7A/s4
	 fdIlyoQiJhaT+ouegchE+537ClvLU1XS1oxjSOgncsFpMZxPToRM2I4mkqUroCwNSO
	 01niQ4lwDwwzOmnzBpxwz2b/+Y+VjJyc5MXoq0wVZAQktWYc/mUCqxZ7hiUDF55nHN
	 qh1j0CAM9qfAXSTOZbQ6Y0K5BZpKRLnX+HjgXEsVGRNRTBUGu9QG8qRg6W4C2gu+zW
	 ayLZGmCLnzVSltVKRyQj4icWzAL1dMUPrPM1Rejg2Vrb5w+nN7TFLcvEZ0BZrjnS8V
	 OKxACjUphK12g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95E0B41E35;
	Thu, 17 Apr 2025 09:34:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id B4D281F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 09:34:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9AE0F6F50C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 09:34:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MPSysJJblTke for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 09:34:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DE39560826
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE39560826
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DE39560826
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 09:34:40 +0000 (UTC)
X-CSE-ConnectionGUID: GFJssznpRxGO0t3dPmAiRA==
X-CSE-MsgGUID: JrQVdbSvSoSaNOQ1CISgQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="57831872"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="57831872"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 02:34:40 -0700
X-CSE-ConnectionGUID: mR1ZpZT4SrSGI1+S/vo4OA==
X-CSE-MsgGUID: hUqJWRkvSLu3tPy8lMzXvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="130740408"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 02:34:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 17 Apr 2025 02:34:39 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 17 Apr 2025 02:34:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 17 Apr 2025 02:34:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YaAIu5iOEKjuU1hV1N7Cz5AHCOEEiOgya1gHrXVcTkjdF/25t8qU/92xDOW+c+eRcZ7sZkF63EdfGQZvebOISa7LjFnW4z2/rQqsrnsEGS+pCb6wcwTifycQ0uGFAwXSKQqXCO6jOzQw4kgHj59QgjuSG6j3t773LGCcyNGDA5IwjS5oS+acXU/kwA5ZgK+hMkTcC9SX/M1JuT+Zz5ZQXYpDpO8Vl/7cSIl8sU0d2jqOsmiHtMDk0q8k3QN3bvO2LWjTtgNno2R4tBBheZsKA5WSy/LX4gHmDKoNPYtPoE7JP0QzSlne6Jj5SzUBlqkozS0oRAne6TddI7vqySeOlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OMORza2RVC3h9paMvsdTD7eMFOpie3nqLLoI4wD09Uk=;
 b=FS7QhVgScJn0QC+wN6+yAxcgbrhDuHDFpd1pAwvUgnqNFO56DTfc7KyjwSiXtp5WOx2+/HT0yV35Ppr0Bg0lSBCC6mOdoQUNUSgIVJZr1OJX2G9bQPhNeJANEBzdeiCfz4GOqSu/YxucRK20CbVoiMnAdQeY4oYUIppEn/qQOUkXaDOxkbQvKUpj8PTjyqPyCoELPEEeyaDOqUdINtBmTcXVbwFHzM6/m0dg7V50DpwrGeJUVvo132qcu5fH9c/RFO4s9u/rlJ8g1ke10JrP7WCQLkryKRvAVN6xFn5kmtHvuevGzBi9b+UNIo4Dj0Yq327tq3HkacpQeD2TE064dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com (2603:10b6:a03:574::22)
 by IA3PR11MB9400.namprd11.prod.outlook.com (2603:10b6:208:574::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.35; Thu, 17 Apr
 2025 09:34:36 +0000
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38]) by SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38%5]) with mapi id 15.20.8655.022; Thu, 17 Apr 2025
 09:34:36 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: "donald.hunter@gmail.com" <donald.hunter@gmail.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "Dumazet, Eric" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "saeedm@nvidia.com" <saeedm@nvidia.com>,
 "leon@kernel.org" <leon@kernel.org>, "tariqt@nvidia.com" <tariqt@nvidia.com>, 
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>
Thread-Topic: [PATCH net-next v2 1/4] dpll: use struct dpll_device_info for
 dpll registration
Thread-Index: AQHbrjNlBVggsGiidUqSYEyB0X0N67OnHxCAgAB8L6A=
Date: Thu, 17 Apr 2025 09:34:36 +0000
Message-ID: <SJ2PR11MB8452CC849EB05CC7C12875AE9BBC2@SJ2PR11MB8452.namprd11.prod.outlook.com>
References: <20250415181543.1072342-1-arkadiusz.kubalewski@intel.com>
 <20250415181543.1072342-2-arkadiusz.kubalewski@intel.com>
 <20250416190921.3cfd6326@kernel.org>
In-Reply-To: <20250416190921.3cfd6326@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8452:EE_|IA3PR11MB9400:EE_
x-ms-office365-filtering-correlation-id: 70fa3790-706b-4dce-2727-08dd7d93115e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zVl0Ir896NPMwBo+hn6kH6H6bCZ/WJwh7icEoLgOTigv/8Qco0ktgpFSedt+?=
 =?us-ascii?Q?KeI0+R8PZc8tn57ua0Cbn22Wa5FIhfbuWFe92aNnWW8ZCz7eMaDdQ4KDpxlV?=
 =?us-ascii?Q?YoYH2quEwr/OK2oEnHUHeJD05/+u3xg0+cOUQIXDUqt6S2IHzzNgmL2D6LIv?=
 =?us-ascii?Q?iTbYBdEqouLpIad0aSisJbhCWVafetD8IfB2GSUZHkoQmIUETdKtXkbiys3U?=
 =?us-ascii?Q?p08nC5glltuhwGAS+AVRoE7AROIKdhMoB/+8T8FsU+aOizd/HW1RX7JiRyot?=
 =?us-ascii?Q?2xb2k+ITOi1ZRdnN6CeJOGRK7XOi2IsGIWKlKXKRelmFvTYfDLIM1OdrHFki?=
 =?us-ascii?Q?MlStPGVBifWIR96X408WrclEI8A0oz8TyZsdjdceV26DB9SKxYJellXpBfc2?=
 =?us-ascii?Q?Dpaftopa7JuS8g3fqixsEcpRotfx0Xy5Enp0xPOJnpsTeW7rSZsdrIWCD0uV?=
 =?us-ascii?Q?YNqY0oJ4+gKh2FuVl176f+0I9qWUQ5V4U7vH3s1SnjQYxL8e6ch69M5d9gwJ?=
 =?us-ascii?Q?LH0B2oNNF1IptK/mswV1ny3Iem9FA1XRxJi8OkJ9Ot0I9Sl6UuTp6cJcU8bY?=
 =?us-ascii?Q?ZcvsmdpFPS5ac3nABvNTAVJTzCaH9p6XYwV5MZBHmiw+UjUy7QTVW7TgO6YY?=
 =?us-ascii?Q?K1bKSBpYnoXiMD2+zDmgEWaRA8FtTsFO6nAiqVsLC1AL1kbre4WhbfMhaXP9?=
 =?us-ascii?Q?ZNqio1S58WDSsP7MXP5iWVhCFYl/z/pLUwaCyeVMBzGPO+DKq3gM6E9wBcK6?=
 =?us-ascii?Q?WSfq80NjwKB+J0vshSuolHpicpa8m9FC9vVHjLDhJN/TpWBgcMb4mxuTV4oA?=
 =?us-ascii?Q?JHUdwQnuoUp+gjsZWdHRnz9NIhmsfeZsgN3acreiT+X/3kOQprHjIm9pxMtF?=
 =?us-ascii?Q?rZEljRjoUQDQE7zmbBVAu7YkA89cAwdBKpJEa2tfG31VnkDdun8V/2lN+09p?=
 =?us-ascii?Q?IFJ9isFKdOXIORy48edGbqHpKIIFYuJUx6neAdnX9wNsK/DQCGrwdGsLCNDo?=
 =?us-ascii?Q?EHDZ2Rkm8k9vyFjBMsBea+raaLhTXQJDfG7Gpjy8On5q1JK4vx73yTh1w/pB?=
 =?us-ascii?Q?L6soBrQ2bnahXHrtM/MhyRuadB0HHlBt2ae6BmvQAsRI18RQUbvQLF7GsWli?=
 =?us-ascii?Q?hTRzujR3dn7bieBNIFNbWfF7XN0dMJ6yznJ5V4UAbQNUIkeahg1jVPxT1ZMc?=
 =?us-ascii?Q?wYPHYmawVktLX8HOyiTeyCN5RIf6kMoP951k5GfxdhnLidpN7/NP6jMLohRN?=
 =?us-ascii?Q?1l8dpAYbJt8w/j8wYDDPdCjV42h+TwJpDBJ99CE7ylQ6Qrf//n7EwWDBAesE?=
 =?us-ascii?Q?fMqeDMrE+ustttb49RNnfqj1IG2gsE2f7KbLfqtAbn2vvkwSQpwulAQ8m789?=
 =?us-ascii?Q?+DQ2WC6B2F0DkvJjB/pY9supYx1i4j9MMGzrP4QDtp5+5RXzxssnDH45QsWO?=
 =?us-ascii?Q?Th0isl/iUtPwY5s2GZg64mqPHGgeiv5YHwiCo16zOZbY16TTLAYeBQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8452.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vaVLDvkfGng2B2eivW2b4bK9AS95LnjT3sbq2Yu00yLFIE1OweGg+RW8F7uk?=
 =?us-ascii?Q?njbm7IV2ki154dlM94icE6gkpFzfc20QHAcDdMop8+OoavxxJCoKru6ry9ao?=
 =?us-ascii?Q?Y8wzNmvKCo0Z0kPlE/pNf5an6yB1FnDpJm+y7TiuhAEtQAAIuBS/4rtjhkvJ?=
 =?us-ascii?Q?u9dpiW/ZEHc1LJjd8nLjF7l9BCTBDRQu2eEW8mH7ZuPyuOnfzjh8BSoAGsa8?=
 =?us-ascii?Q?xyfGvM4/2GTwaoo9woONVYUX8lN2iM4Xy1wnQ0W1I75LE3oSfc0rea9kR+lm?=
 =?us-ascii?Q?XOsz3ueszngeH/MqN5Z7+2as08KxEmeuKsEV4bRvH5UoiyMD3Si51usZkEUU?=
 =?us-ascii?Q?bi+KhTgQX8qfs5QPYMDi7AmhgVxG2ohj71C6Uz0FizCENBEGhQ85uQuA9dtd?=
 =?us-ascii?Q?rB8Yz2ckCm+oIh15mPNVt4gG1XaLrucW8+SmfAFkhHMOPT+7IcJzCBXfj9tD?=
 =?us-ascii?Q?L320Wtf0IDeY2LEIkiAPFQVuJAGNSZhlpr4ycBIApBwv6hlDpGA6AaL5Ynl5?=
 =?us-ascii?Q?ZmBl9BXNxH++H9CdVwBPWDVhjfTClVL/5LcWFvYizNLSezb3GE3EDwwX1mTE?=
 =?us-ascii?Q?WpaygxnuFj1U2tRXmQpvnG7XJDfIt2xrGpYeE/x8nMBZUyWTRI3mzJM5aIuH?=
 =?us-ascii?Q?Mr2803NTrFU/4vbGDth0WIDriiJNg6aiHyKMz9SVHeChQBOp/C98NqWCeXCS?=
 =?us-ascii?Q?H50vGDQZpjvGukZZzcTszaJWp/PLPYDK+sqAamKqRMi7pXmQGjYVa1ZR2Naz?=
 =?us-ascii?Q?WXndc+Cpoc/J/2IBJkSyLR0l8XzsgwRgGWztmGHpk4nTNAAEu4/dZ73kcxsO?=
 =?us-ascii?Q?M9CoNdpOW77KZL1VcYZCy7z7JKXeoWAMcBL9hmCNYT48t5oJD925ybvRBBlk?=
 =?us-ascii?Q?2b3Tw16SjTKSG7AzL28pSQgYa8NgvOnI8ChzPsHq9TGzgV80ESSLzo9ri0n9?=
 =?us-ascii?Q?y5w0ILP1F1f3emNLmrCPv8uM3+wJCHiOB/hASeGKNkqJtzn5czP0kxeq3dKB?=
 =?us-ascii?Q?oMBUthMSNM6vlMYC+cRUtsRRkQuGdrCZ5MXIIxUIVuyHvbzCM6w50CCS12mn?=
 =?us-ascii?Q?EvwLqhfA+Y6jnXzeXB3nM55m6pSfIimGL03XDz8/mOj/LbwJblSVS4PljYqq?=
 =?us-ascii?Q?cq3c3pm3qlCOOWeGxRI/aBGiYMUPYs1rgHQGkid4MiAoAh08cuKdyEhUnaqH?=
 =?us-ascii?Q?IdH5KNOIbffsblvcYW/2lKYX6iFkcrcANZlo43lFR0IOAxaNWzqeHCmHYt1/?=
 =?us-ascii?Q?284CocDWe28BRV0miTjcw+X9//W3Dp4ST3uBoTz0A7eWX48LVh+9gAApcpjU?=
 =?us-ascii?Q?7fszFbWXvzfmwxtpuGud+n5DWy2fGM1T91t2HmSO0nSsOXwGrSvUgHq8v6VB?=
 =?us-ascii?Q?H62f4MjapwC1Hels4wZFcVVNF7F1xwLSEYAm819Hr1F4fzzwSVmIIRWaq/wh?=
 =?us-ascii?Q?Wc2kTyVr9ZcIcwI0nR+nnp31zYqQrD1HvA+wq7CL4NmEQKBsDmMQT0A+8fc1?=
 =?us-ascii?Q?fBh8wkGi6NBA9ICLCcXOVyhMNWwkMrQ2kpgokRrdXbC3pcyFgzAXY76kYx58?=
 =?us-ascii?Q?tzyJ5KlPuKzfAJ5smllaRvcIi17b2qBuY3fXgeMSRgvoVIJJcogkXciTyGSD?=
 =?us-ascii?Q?Hg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8452.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70fa3790-706b-4dce-2727-08dd7d93115e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2025 09:34:36.1340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mGshPOl732dH2h5omPTQt0WG6/g/8lQMfnyKZ6FW+RGaJx3naZ8CNAd+Wx8N4c1BjuFGyfxHiWrOnob1jt15xLHVNgoaY55bwjHXEagsFnk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9400
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744882481; x=1776418481;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+QoiiChvsVbgK7DdhLPtHMiSCakiqkS09Gue1SGMdng=;
 b=V+mdk68dIgTRvHSfqo8C0HzZZ5VjVr8oC/JJyrcCaq7lP7C7SqoQbf+I
 oXm0OI9eSQJzSAMJKarnVbqXWyAU2Sfw19ZyALj8j4ticfNTN7OLI2x7N
 5Oaz1dp/mUVwdQQQF+flG1OdIe0ImbJNwQe7D9SS1/EpXX1mrIt8/9U8A
 PdHd+hWf7rKWfEBcy7XEEO6CAluYJdCag1bP8Yjy/a6uhTxlyyR8BrKOM
 J7QWCJwXf5dqNu/A7IF2YHVOxW2P5OnrrIYUMRS4eESiYpN+MxC6eAi6J
 JG41IoWFyErEU/2rA1BXYj0r1qTizlmdy5qH45bVJNw/jGq1F+ulkAyXU
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V+mdk68d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/4] dpll: use struct
 dpll_device_info for dpll registration
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

>From: Jakub Kicinski <kuba@kernel.org>
>Sent: Thursday, April 17, 2025 4:09 AM
>
>On Tue, 15 Apr 2025 20:15:40 +0200 Arkadiusz Kubalewski wrote:
>> @@ -408,14 +408,14 @@ EXPORT_SYMBOL_GPL(dpll_device_register);
>>   * Context: Acquires a lock (dpll_lock)
>>   */
>>  void dpll_device_unregister(struct dpll_device *dpll,
>> -			    const struct dpll_device_ops *ops, void *priv)
>> +			    const struct dpll_device_info *info, void *priv)
>
>Some kdoc unhappiness here, W=3D1 build should lead you to it.

Sure, will fix it.

Thank you!
Arkadiusz
