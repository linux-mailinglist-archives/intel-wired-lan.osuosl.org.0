Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJ7BAP38vGn15AIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:53:33 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5204A2D6D2F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:53:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE802846E2;
	Fri, 20 Mar 2026 07:53:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ioo0KhHCA01N; Fri, 20 Mar 2026 07:53:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40373846E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773993210;
	bh=Sy1+VlE9dshVtN/h4LZPMZrQsSXB8pTcqYtxEoRKEik=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5oxOGjciFsviHQtQyPeMdi/tduzH2VCxngUwlCJvmGqggMrGnJwPel/FcfxFCkwGn
	 CcRiUdMyg3cde2WsmzzH8oBBFcJhGP70FgsWjjUhnwpkh4/EE5temRBxbK+N4OjEPl
	 ZTJGzHfKoigwSypcFyfvL++5S6Q3b3NKqlz++Or6SnxT0kFSoqKbvkkZVqUuq3a4Yd
	 vKf2Hg6ID9RIb7jdmSzHtHUUrJVAvw1ZwSEvIvs38sLdCkbX6my3KGFJOl1iNvSjcL
	 icqIiH0Dls/3DN5JY2BQvqN7jFGy10NI66aI8NiRKqB8gPQqXbbfMlNADkdHj+raqz
	 drEdRw/POR8Ag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40373846E3;
	Fri, 20 Mar 2026 07:53:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6668925C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:53:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 58167846E2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:53:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ox9rTdj_Nxys for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 07:53:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3AB6C846E1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AB6C846E1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3AB6C846E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:53:27 +0000 (UTC)
X-CSE-ConnectionGUID: 56jOrvKaT+mSUaFqclRlZQ==
X-CSE-MsgGUID: XFL2adlzQ3qSb7Mmyx8jcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="86437001"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="86437001"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 00:53:27 -0700
X-CSE-ConnectionGUID: 7bN4UthkQBqzvzB2gM3cSA==
X-CSE-MsgGUID: cveJEfUdROK7ladhyJUqDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="220576934"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 00:53:27 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 00:53:26 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 00:53:26 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.2) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 00:53:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ve0XIDoLnFmJ20I8Ub1FLCoQS3QeSYJtObvh6Cx+eZUedYUYhFGXpDTxr8jABVwr9zgHBEhKJPpEX/fRbv4ZDCNbt2fEgpS7aaU/1eGYAb6zw+PonM3+2HqVIfu1kS5nzNt/W03VBTQa6jlfBCLsKUWF/xP4zj6Px24vEzgpYRVFwioVwqDQJMGxubO+WChqynMCCf/UtpU5MtrYcTIcd8muMNmeJD19Pla4dk7YvxHwBcnn8+9EBHLErz0csxC6+rAL8/EFSEudDa+YqjzLBWHUjpQ2N5iCJjK7h4nkKh2k2DgKb/2TTPaYP6h7yMxoa4YgnlhiiNHQJDUrkfA0TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sy1+VlE9dshVtN/h4LZPMZrQsSXB8pTcqYtxEoRKEik=;
 b=EFpIZoNbijnUjaeTr+Ahmzeyvw5Za/2GVED1LosDlRBtz2ZPg0ShAgCZczDX7X8x7SNn+PnQ2TsOGWsMYEvVzYAVIHHGwmZb4sA1+sV8xITEdP4FZ95hXkSIKpzekYngcXKTcL8ZpVyE2fZbJ8RDXpaLaek76VN0FWK7xFodSUrmhoJfJL/vcLBOT1jdGlPdymm32ouNz3+xyoj5Xj4+m566L+7PYYQAyjBwW+oYzR4jB9oWd/TKKaTJbUp86hNRYh3QR5Q4+zumnIspj8oFX80EAKt+EwZqTU7I4KQVWziDZbCh7vRzmC/q7zcMLTr/O31sfHXoNXTz14Bf8o477g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB6871.namprd11.prod.outlook.com (2603:10b6:806:2b1::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 07:53:17 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Fri, 20 Mar 2026
 07:53:17 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Stanislav Fomichev <sdf@fomichev.me>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "michael.chan@broadcom.com"
 <michael.chan@broadcom.com>, "pavan.chebbi@broadcom.com"
 <pavan.chebbi@broadcom.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "saeedm@nvidia.com" <saeedm@nvidia.com>,
 "tariqt@nvidia.com" <tariqt@nvidia.com>, "mbloch@nvidia.com"
 <mbloch@nvidia.com>, "alexanderduyck@fb.com" <alexanderduyck@fb.com>,
 "kernel-team@meta.com" <kernel-team@meta.com>, "johannes@sipsolutions.net"
 <johannes@sipsolutions.net>, "sd@queasysnail.net" <sd@queasysnail.net>,
 "jianbol@nvidia.com" <jianbol@nvidia.com>, "dtatulea@nvidia.com"
 <dtatulea@nvidia.com>, "mohsin.bashr@gmail.com" <mohsin.bashr@gmail.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "willemb@google.com"
 <willemb@google.com>, "skhawaja@google.com" <skhawaja@google.com>,
 "bestswngs@gmail.com" <bestswngs@gmail.com>, "kees@kernel.org"
 <kees@kernel.org>, "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "leon@kernel.org" <leon@kernel.org>
Thread-Topic: [PATCH net-next v3 09/13] iavf: convert to ndo_set_rx_mode_async
Thread-Index: AQHcuAhxTJAAytEhKEyxP74VH0eWsbW3DReA
Date: Fri, 20 Mar 2026 07:53:17 +0000
Message-ID: <IA3PR11MB8986D4E9C0E47C27F26F01C1E54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260320012501.2033548-1-sdf@fomichev.me>
 <20260320012501.2033548-10-sdf@fomichev.me>
In-Reply-To: <20260320012501.2033548-10-sdf@fomichev.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB6871:EE_
x-ms-office365-filtering-correlation-id: 458c3638-e53a-427b-0442-08de8655bf76
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021|7053199007|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: 5ainHK7IbStRaNfQ+/cWKmCXBA1nmiFr4vRxp73x05yIJBfdbIXgUxEpcVeHeFoxgpq2D1tDxUO00URjDI1PH9G5gVv9+1fjaTJpZxF+299RsTq305KRYupr8xr6H8Cq2ogcZZzWzOUi+2iXxDBoeAYawmWcA/GQwW4OnaiUw03vnS/QzyC+1xiz7Cl1qxHB+tqeEKR8rzROKNFIzGpZ4Wm3ARVh9ReEERLiXq6u54PkW278Ql3sAsDxFGhMcJpg30fgXS6HfB8KVsYGdJqnR29TSWHyFoWiZl9arU9Pu5EQyZbQ50uHKvF77vn1ZmnHk7OEfxexfPilcltX24pveiQQUiVbjWBZJeywb7uZ4yFQrj01ZjMoTAoeA2pk0aAUIMzJMuvzUZo/Pzm+JSshjtq7oZh9CSsbTWJAE+WexXqzdgDPizaox/Q3JxhQsqxjKwPLHH5zssHSJvhRxx+3fZMh+iVOAl2+jcZvXSxsDcRTJBVZYI0OrwlMn69+rSIp31F1Q/lqLWG7Rd/CaVAFIotOoOFwlaWHQ2ACkQrVQRtmNkA4uN+WtcWxLsd8CYTYIr6nM19arLPM02UrxykC7sDuKIGLAezo5eNFQ2/uDk715sKrb0hdlVkfxex5eDt5rvidF08HygXr4+K+nL2QA/EA65n+0dwczLY604xT4rw25VpNPIFA0y1I0hIkJh6L2qM5rI+mQPSWvWO6gQ8lb3+pOfwxRQOAGtLpxG2Lud8ySvwXBfzwG5kG6K6woiVB9VdETvUgME5Gp1ixyyb6O7bHn5DulqI8fjVD2eQ1Uy0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021)(7053199007)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cIJCS1MqSr8cK4xAebQx2vB96/g05Jy3s1i5Gm1H4vho4KN6e7oQq6z56JGo?=
 =?us-ascii?Q?ICaKkmjMd3AFVElgQyH5K99IRy6oXIcqRCpBDEZZ861OtnRhqunNXirpktZq?=
 =?us-ascii?Q?SJQXeX1LLwGxB7Zk4Lq6Fw0NnrMItgwyFI/yfMPCodmehtWPHW7Zc78zigGU?=
 =?us-ascii?Q?9hzV+AdOIm/1SRA4hdBExmXpd5K3QLbSM0MfXlRqzGF0DgqBpDD4b07cFDwV?=
 =?us-ascii?Q?h2wt8fN5uFXolK4WfQ77Pe2ItEYtPgYO/JIAG/OCKy0iaV+HHFhOYkzUl5Kh?=
 =?us-ascii?Q?TSOodm5wDqd2lxxPQlT9ISCwuM5LlYsYc49MXK5AYh9SJtgEILoPWgv8fw4d?=
 =?us-ascii?Q?gJ5fri+tCoWfm6cAW9LE0Xo5QASkYu513q/MhjsfRG32kwkHkDYgBasxxZyc?=
 =?us-ascii?Q?Kz1bXHJoNUTOneAcDCcTyFIbm+2tLs9XANdEo/2hSgz4UEVahXm4OuEeh9Vu?=
 =?us-ascii?Q?bfEUWBGB6KhPiFnfYbk2H8Js+4Uu0b8ydIWHau5OdslF9EsgsghxnNrMApX3?=
 =?us-ascii?Q?2cBB+LnOAituKLHAyo7jK1C7LBjHMWtjKG7hrMxTSWN0t0hUZDOK0GEt5TmP?=
 =?us-ascii?Q?ZbFP+J1hHleMvn0bqLovPgXbUkU8Hd7cYj5HLFKDN8Y5MOP/MJxZGS1yzPVl?=
 =?us-ascii?Q?0Rz81j2qUHWyJLAXMy26rSdJWj0fBNpuCY2nWnDQSbW9J/MIPYIM2/z64BCV?=
 =?us-ascii?Q?O1LIu738WcJfaHfXE99CoIXSv0V4T24b7z46sp8S6fKj7zyR0efAhAUJt5LK?=
 =?us-ascii?Q?QH0agF9SsPiCyFWwNe4EpaFtl9BFybL/Kp/ab1Q18JzirbhzIAeRkYD4wznV?=
 =?us-ascii?Q?hL5k6YEt8RALynG5wlyhtLhKorfLcutU/Q5NqiZmsSWk8t5mTCc+6liZSBi3?=
 =?us-ascii?Q?VOddGi4dA1RsjHvyPgUWTFThvnHDMq2oe8dynssM4LCcid+CgBzrwfFNphBz?=
 =?us-ascii?Q?/3r4jJtKuloKBAgxs8ijN7MXZaEVE2ijIJXGAmKpcFjz4cuOLqCBkaqSOWtR?=
 =?us-ascii?Q?THGvljmTe5iSOs9/RM66vjIzkLFc9cVwg/5Vpf5G4JSvF+Bc+SX1Y7ZOuyFU?=
 =?us-ascii?Q?mw8DV6VwfFQjTwy3LNyBsT/aPhzYu4uTkvSYfNWN6e4elyn7SN9bqbzzKHQV?=
 =?us-ascii?Q?anCqQTCWpUz8+Glj1BeF0P0hWLErquUuydMC/KPKFl4Kxf9nf3rBb4+lWWhF?=
 =?us-ascii?Q?5GR1ACP4zHbi48epn8MVzKed5ev/qbHgDGU/K/J6fatHmwYNq3g9g70Ry2OF?=
 =?us-ascii?Q?Q7nF7nUjFSc9harEFXeXNVSdlU4u3RMAFAVmghEcDWv3uc49rgDYnI2KZpnT?=
 =?us-ascii?Q?j8414STw1EAE1QJRInywMD1lSen/pYEaLLvdornWGEvGN0K466sJAbCMOyEW?=
 =?us-ascii?Q?izghQKexq0fJPriNr/6HCEvrqPi0nI1CzsNtjocUgO4gwnW7ggySFUy9sFav?=
 =?us-ascii?Q?wCTz4kH4dPEKmAsZ2sC19+lqQzI9iCUxSduje0kElOMtwVCPeoh5Cly32s3L?=
 =?us-ascii?Q?98CRBFl/tyCFLVb72sVJnTRTX12oPtw7COVbh44JsLzt6K7QvXuTGSFBe/5h?=
 =?us-ascii?Q?PuWBhkNYzqReUDPZeR6iSP6j4gLoiJZuWPWuntMmm5k/h/r22oLdfcHTdvkd?=
 =?us-ascii?Q?9leud/FURMPffzHrTmK0eaOpfjARGVfPx6yBIFSlSzNm+9kqLIUv5rF7IogR?=
 =?us-ascii?Q?uHz9xbrdv0GAqZg8lM5GbueCkflaWLI9eBo02k2Oa806ewBQ0av3USAFjMRu?=
 =?us-ascii?Q?jlqRxUvwtl5b1ejHp5fZNuQabl3xlYs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Z3PkPeVST8/0kgPav9ALttNDdwRRpTu2MyfCyM6V2idRdOwPRWZT+c1zEqHiLK2IXmMCRAZzKHmmydKrur8XVVRc9AwcxvsjFwjVPRKCYlamvXRz1tqzscaIu1uYoNG3UPTaTDxyIh+bJYMR5wj9qm3InJ2M3mz5y1dxm8tCh/7K5syX9jt6GbKX6Y68YBNZacsACjSC8OhwKK7gsMTJjsO/5NMMk1TgNo0sZJ6tlJoxmcsIKOlg8cDUxduC+jTCSA0pcS2rHUG7Pn2BNmjXekzEIoVRh+zS5ovDOCHG9SbXGbD6qFWBzV5gvaJBir988eS9Xc5mrlu9CpxLe7vGeA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 458c3638-e53a-427b-0442-08de8655bf76
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 07:53:17.5440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CgNm+R0zHPPRv2KdpRolVKa9VrbMGSlG28oZr+GeAQ8Kql7jZDo0bQJFDxKIE7iHHPjENgivHjEKFbNB83hAoon4nKaQ92//+O9i1CzeaWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6871
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773993208; x=1805529208;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OzHRlJ7lL/mZanYPOTPnJ3NPH0/mXJCbleIqsPnGDd8=;
 b=P/ThFvyrMSUZy3Q7b9fK25XeW3Hd/KOXYi5uVc26ahEUDOSfPyVMWIRD
 bYKAhNz4pb0akoUvHnUCp6BUrAAhYBx7TxFmeX3V7LjqQAPGQbzcL7pce
 kurT44M4gkvmmQv2y0qImaPvkqcJvZC/W6BAkQWOqlKy6CQDa5jgcSQ0W
 dFG3QaVEhW0//PNvytkPiMp7V5RreS8xTonC4PUWL3Yvxd2JanMulyq1i
 7QqX5F7R2ZJKi5fjAh3JgOrDsWAZrgxP6QrYqITP7PrXQGIou+WVn4WD6
 b+sfXJIftzZrmh9SMNZ5ffRT882BSH/1HaEPnFwhjkDtQO3O/HqW/dlk5
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P/ThFvyr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 09/13] iavf: convert to
 ndo_set_rx_mode_async
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,vger.kernel.org,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 5204A2D6D2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Stanislav Fomichev <sdf@fomichev.me>
> Sent: Friday, March 20, 2026 2:25 AM
> To: netdev@vger.kernel.org
> Cc: davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; horms@kernel.org; corbet@lwn.net;
> skhan@linuxfoundation.org; andrew+netdev@lunn.ch;
> michael.chan@broadcom.com; pavan.chebbi@broadcom.com; Nguyen, Anthony
> L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; saeedm@nvidia.com; tariqt@nvidia.com;
> mbloch@nvidia.com; alexanderduyck@fb.com; kernel-team@meta.com;
> johannes@sipsolutions.net; sd@queasysnail.net; jianbol@nvidia.com;
> dtatulea@nvidia.com; sdf@fomichev.me; mohsin.bashr@gmail.com; Keller,
> Jacob E <jacob.e.keller@intel.com>; willemb@google.com;
> skhawaja@google.com; bestswngs@gmail.com; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; kees@kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; linux-rdma@vger.kernel.org; linux-
> wireless@vger.kernel.org; linux-kselftest@vger.kernel.org;
> leon@kernel.org
> Subject: [PATCH net-next v3 09/13] iavf: convert to
> ndo_set_rx_mode_async
>=20
> Convert iavf from ndo_set_rx_mode to ndo_set_rx_mode_async.
> iavf_set_rx_mode now takes explicit uc/mc list parameters and uses
> __hw_addr_sync_dev on the snapshots instead of __dev_uc_sync and
> __dev_mc_sync.
>=20
> The iavf_configure internal caller passes the real lists directly.
>=20
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 7925ee152c76..6632d35ad0fe 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1147,14 +1147,18 @@ bool iavf_promiscuous_mode_changed(struct
> iavf_adapter *adapter)
>  /**
>   * iavf_set_rx_mode - NDO callback to set the netdev filters
>   * @netdev: network interface device structure
> + * @uc: snapshot of uc address list
> + * @mc: snapshot of mc address list
>   **/
> -static void iavf_set_rx_mode(struct net_device *netdev)
> +static void iavf_set_rx_mode(struct net_device *netdev,
> +			     struct netdev_hw_addr_list *uc,
> +			     struct netdev_hw_addr_list *mc)
>  {
>  	struct iavf_adapter *adapter =3D netdev_priv(netdev);
>=20
>  	spin_lock_bh(&adapter->mac_vlan_list_lock);
> -	__dev_uc_sync(netdev, iavf_addr_sync, iavf_addr_unsync);
> -	__dev_mc_sync(netdev, iavf_addr_sync, iavf_addr_unsync);
> +	__hw_addr_sync_dev(uc, netdev, iavf_addr_sync,
> iavf_addr_unsync);
> +	__hw_addr_sync_dev(mc, netdev, iavf_addr_sync,
> iavf_addr_unsync);
>  	spin_unlock_bh(&adapter->mac_vlan_list_lock);
>=20
>  	spin_lock_bh(&adapter->current_netdev_promisc_flags_lock);
> @@ -1207,7 +1211,7 @@ static void iavf_configure(struct iavf_adapter
> *adapter)
>  	struct net_device *netdev =3D adapter->netdev;
>  	int i;
>=20
> -	iavf_set_rx_mode(netdev);
> +	iavf_set_rx_mode(netdev, &netdev->uc, &netdev->mc);
>=20
>  	iavf_configure_tx(adapter);
>  	iavf_configure_rx(adapter);
> @@ -5150,7 +5154,7 @@ static const struct net_device_ops
> iavf_netdev_ops =3D {
>  	.ndo_open		=3D iavf_open,
>  	.ndo_stop		=3D iavf_close,
>  	.ndo_start_xmit		=3D iavf_xmit_frame,
> -	.ndo_set_rx_mode	=3D iavf_set_rx_mode,
> +	.ndo_set_rx_mode_async	=3D iavf_set_rx_mode,
>  	.ndo_validate_addr	=3D eth_validate_addr,
>  	.ndo_set_mac_address	=3D iavf_set_mac,
>  	.ndo_change_mtu		=3D iavf_change_mtu,
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

