Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uF0mKHL9vGn15AIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:55:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 067622D6DBF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 08:55:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98BF484762;
	Fri, 20 Mar 2026 07:55:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L5Mc8NlTc93V; Fri, 20 Mar 2026 07:55:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 079D184763
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773993328;
	bh=bEZpGfNl+sAzWUfz2Boy6I0GjZK4Adin0PKLxSbQoPM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DFah0ohlxDOmoYY+NsUGjkNMyfPaCmtJw5NYjdSVQvN6EOOAoA1CObp0pU98FJNbA
	 WBKtAymSI9Jy68cGu4zeISt3CgnTVpjTEx9RJPclCf7JHrIz266gpDLDzF4B+95hkj
	 5s0XOK/PFCyj9CPtxZWtu19/cdWNUsduZHrVk5pDT4FerP36gIl/dkFFURadJc9nY+
	 QKb5aKelfY1yjV615dUDIL7f4IJisMvZZridyI9awxMIpT3J/ujk8/FTfaC34hUnQE
	 6Imb2IdIqozXv3K+zaiYV09jSR4vVnubjzza1TvQcfx3Dd/isZZlq4eZY9CDULVoaQ
	 fnBGhHTjJFc6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 079D184763;
	Fri, 20 Mar 2026 07:55:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CC5521B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:55:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD56C617B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:55:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9EpeUcWftmKN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 07:55:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 02DF3617AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02DF3617AD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 02DF3617AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 07:55:24 +0000 (UTC)
X-CSE-ConnectionGUID: zIT+kojqS/qlwkoJMFzuGw==
X-CSE-MsgGUID: vBJNanM9T6qOKA/9iOO7sQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="92648939"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="92648939"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 00:55:24 -0700
X-CSE-ConnectionGUID: I+QFUtX8TnurMAs1oHPqug==
X-CSE-MsgGUID: H5sP1LaiSpeSCQoIc4byeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="222308746"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 00:55:24 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 00:55:22 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 00:55:22 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.0) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 00:55:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N/XhzxkVCfkXFD7+JmkWptVOi7xaM745upgesu5wJS0hW4XzlqYhZWAMA/mf9Xgafrj6SNWBOMSc7j0eydKl7Bqs85u+09vNFUOU6VPOC7qPupeJ+ixRVuvtsjU6oWr1xWiGs3EoInS3HMeAJsTKbVFzXQ7nKXa7w/wvSk2EA/Z+Eq53fey7piNAgTJAz83zJBdYBeHDTDrW8ktSrMhzfyp3yrffGC72Ov8bcBJcbkXwGJ5/+TvXIaZdhRg8s27HvM+zbAHuVGPHuzSH6vrxqNUZptstZfIAkq9YmWjJmwhLsrboeqdGQFoo5QiEjG3V06CgJYS2aeV+5zIffzFD9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bEZpGfNl+sAzWUfz2Boy6I0GjZK4Adin0PKLxSbQoPM=;
 b=d+PhgwoU2UInVDXx8cpVCduUHLkPR1lxmOZw3a+rqVDuqvwMXf70VLwK0vIonXmKMIrszQE4X+ZaqJIIsXJ6VCqCvtI1mk6AwaTMOziMT9/2dPx2mx1DAqARQ9eECKNnc5r/8lqUPTznLjG9OPuT9C0LCiueLWYScZlQhpnRiiRn87Z44ISUOSqvCKYW2xcEZx3t9tYf068orMgHtVg/ZIYBTMKdAAbUDMrn2940yN0EIyBc3JjL1JFeI7/H2qmGu8xWvC+FXurNcSF2hJGjZFm5+dR8Spc+OB8HC3UQ8tFDgjYnZSkRdwQVr7RlGM24H8TuXWGWmKsCOsrZrhJKKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB7938.namprd11.prod.outlook.com (2603:10b6:610:12f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 07:55:13 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Fri, 20 Mar 2026
 07:55:13 +0000
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
Thread-Topic: [PATCH net-next v3 12/13] net: warn ops-locked drivers still
 using ndo_set_rx_mode
Thread-Index: AQHcuAhxLxV0+I1+hk+gEk6gdhgWJrW3DaGg
Date: Fri, 20 Mar 2026 07:55:13 +0000
Message-ID: <IA3PR11MB8986C8428A12288BDB1CBD3DE54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260320012501.2033548-1-sdf@fomichev.me>
 <20260320012501.2033548-13-sdf@fomichev.me>
In-Reply-To: <20260320012501.2033548-13-sdf@fomichev.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB7938:EE_
x-ms-office365-filtering-correlation-id: b3bb27e0-026e-41cf-ea78-08de8656048d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: EHaKwHKOT1FRn0OCYN1mBVOCxeRCmlLU+aiiAArX5759zK1G3UuvTJvmszvhIytutfqAL3u3LNAUUTdi1tnYBNFS5EiiqQjdobqNBRJKxJd0vygRjL9TE/OFQjw+jWrnIAH7kNbLPwT7xZnLY+44NLK8EUpM490gBdy4J8MID5oVZLf4ALTjMXhSU311Y3pNRCbZLthKs1J3eApM+KbgE27+IbktHoYImoZXfij/11KgfLgpKtdZ1wuzz9JPFTVoviiOqMaRojVfST790wY1MV0lIRcb9odf1UstYqfDialNFcqyZc71oPNDZ5i8p9fL5SV4R40vRcpfkb+qL7VtdIGM7E4dBG+yIhzLqQ1Jt9Ozd+niv+fvpXIHGmClKrfVabhtQ1JtXYO488/rhLJg6HejLiD39+57g/WJ5vhGXx2w0YAnz1or3nOnHvQcBLiyuPcMnZMoygfhyc/JqCP1yRs/pkrUOBFUHyPeFNSrzrn9Py70g4mjDsv1JtJ5t6EKDtKHazBiAFTudyeraqsTcH0XXtxIMhqOtSstDPrvN9YhgxsQ5nuulnDETs9UVLmLl4KA6/LUnAdNVTcQW6z3s0K5e9G7Yjusf8uWqiVJpG4NbmD4Z6LnFEkoiNiAFUXhFb19/Hf1rebZ88mbJ58LgZX9CTdJW7z9QRAmE3xspAR1xttCAwteE9Ay8SSjNmsI+gPXMAnNs1xYs+ZD9PMrrFM7skabrqOcaOIQfTarUfrOPf3BsW2MDfN8Hh5/0BtjH+BirqeDVc15JBZXapw7svFESrjHnn/lno1LSQEEBBo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?djeMXjqSGyiTv1HC3j6HnopNhJzPaOPayb0M8Mqfq/xP3Y2VgBq28NTeMOp2?=
 =?us-ascii?Q?BU6h1BdYTZaElBMoxnlv+dEZ67njnMZDFKfKE48Yej7GPgFXfoTNMoqjBYlV?=
 =?us-ascii?Q?4OYwfVpXFkNOvJxQ0CXRkeQKdaoPL10sBcFLONabsc7C6y5+qbr8Ak6XitWe?=
 =?us-ascii?Q?JiLTthHJZdIQtpMV96WApDy9O6xSN2kTh3ICIFE3VVgMappwXCpXVqMzxtLM?=
 =?us-ascii?Q?4DkPHO41/Pe1OBBGqh+Hc1j2UElHKD8HJA83FKqFzHktJQjBsRAGxk42oNKn?=
 =?us-ascii?Q?swqJPE8EppEMQUzynfTLN8S0UvnKprEfRmR5BKYK1GfQuk5Q2AH0VPuT9k4Z?=
 =?us-ascii?Q?LRw2M30/druphRctePSSxpjPTrvoCX/zRLkBLp/z80F+Lvl2P94cZ5o6lLEr?=
 =?us-ascii?Q?j6eqtLSWDqaywYLTtwXeO4OuY097Lr3Wjup8YO/t2R6ymnxTKbTM2ulvpK2e?=
 =?us-ascii?Q?PjsjP1dbYMJDZEFCKpdoWSw25jGJDxC02pBHbnHAvyLMCOCp0jbST3267yF1?=
 =?us-ascii?Q?iPk82ItQnS3UfkkTxkPBhuU8JC8uZKZ7Op14jbGx30K6kx9oxqXDtk8vt5f0?=
 =?us-ascii?Q?yyhY6BMHkhm4HfBJI5uuFZi4oxp74Uw6mdl1KHuapndBRh1LJ8bs7v5PZn03?=
 =?us-ascii?Q?QCQNCBY8eF/vl+LcuGvcsli08eofZrApOy1QBbp+OQm4dsbfyS6Za9PNHRza?=
 =?us-ascii?Q?GpXRp1ksZoXkH36oTnY6HC6Xx8xEbg5V0LttSTYLwqNd6uhvV00aL84cXLWg?=
 =?us-ascii?Q?wqcc5V6laxm+EyTytiqRIdD019WCEfkakPwNUkvNUbjBCQu5x0OnTMWmwK8O?=
 =?us-ascii?Q?NuEfG80+SElEY3bgS3MgO7hND49poAmoy4TXaRUcjE+1zirmtvy6LDCBnNjS?=
 =?us-ascii?Q?sM0i/Z+w4d7MIS+fddTdJheSbJ4K88drkEqWqUBw5dZFMRP+jkhHIL4NIfEm?=
 =?us-ascii?Q?7JddhBLDKwIiQ5H/mgwVpD1IiumH1Zltu7G3nkMGzdhfjM2gj6NctJFSU+AQ?=
 =?us-ascii?Q?UVXfdxm+knOOeOnJQh6lIRTq6Qg4ltuv9KYLVSRQqLzSDNMssnNdaKynnj2O?=
 =?us-ascii?Q?n+7ztZ5bZHo47nqXlxx3xetUp7MFgKx8tUekvU+MvbBrVA5zL339yGjsZHG4?=
 =?us-ascii?Q?QMvoMjTdp/+ullGxF5oxJvLOhzScrJRi1LKbRktqjOli2Lz5wvtdlQkVlDGw?=
 =?us-ascii?Q?XRh+H9JI4wUmeutjFa4R4WYAUdAhyf9KWRC46/m7obdrd0fF5pJBbPKKILjT?=
 =?us-ascii?Q?yn5ZrU+WpEPufuvWETMm5RDE+3A+zE0et6y1LF48NTlXBUfmgxlGi0AKFUml?=
 =?us-ascii?Q?r2kiyCZMlnibTRU4a7/OKJlf5owdhneq0oPGCkOsNuX+UkVzoyJZeN/d/uDA?=
 =?us-ascii?Q?TMkso4sKobEgs77r7hiaimEL7dxpQq6nzPXGac0ZCe9c4qD2/SEZPu5rujI3?=
 =?us-ascii?Q?+8I9IUQtJf8MvpRFME7KAOjUNrkFuLMxG/WW4/ussS3LjGebiVH996AyJmML?=
 =?us-ascii?Q?BseyUvDN1XPoGKxvdbseKo1Oz+uHtwcewUFU6JCvRPntisQdm/lqZMaDAVft?=
 =?us-ascii?Q?5x4SJ8Vhr7kaeBnVG60I/RIRstb9++yqb1fn2tgItzjRNEBo/adV0Afp8BIL?=
 =?us-ascii?Q?VoKHxp9YC/peFVrWtTbiQDtSysgc8z3KVlfZ/zU3JRsEr6CAL2IfgHMdQMi/?=
 =?us-ascii?Q?49cSgfKjMBZgq6n3+zrfMhyZrdnqtsoDYb5MiWCDVUUJilCbmEzYg8o8UPgs?=
 =?us-ascii?Q?JgrHLKquCMPoUIeGQFp+lvLqL7jxg1g=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lH/FEMT0osjQAyaOU85yvhrC8T8faHIJacfgIufrKgfzCM4TznYRHhcmrJnjLoobW2k2zJonWXNpCaSplUyrpwyGxFyXd9yh9SkogBiDJD8JREBYuRjBzKhIXIbGHyKGkQMANUmWxfwRba3aSxu0Rru/aV5wLs7W0BQZtdAua2ujYjv905XYfLYhcKYgegFdNAhZqOoCw5Vo1193hTMoH8F9cOVsWxb1WMzijQ9WQWkL4pn3AVxG0FPGdGbrD2jcPcaqMJh70wKdLuRF9gC5/ebyvDzKIrbPoYVxHYoJ+RzMbRLaalehz2a0jvAzO93CUW4ajA1zxxTi3NoIHhkv+g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3bb27e0-026e-41cf-ea78-08de8656048d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 07:55:13.4716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +34IpHdGtrKYDoBLlwKTt8vs8VrCRn5fIAM9QFxXY7i42r7yTW4ExnhaSLrhCD2L4KLG9V69FSFQgvffiBg1re+Gz2YW+0d8l8u64NIz0CU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7938
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773993325; x=1805529325;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OrGIOimVW7GXvFTRJeUgSE5RNlQv+eluFWMH3jc9Yi8=;
 b=OX82GP6d18k1b13vREi9ejFCm0XgHaUx8tAMYHAn2+mUp1YH0slt+VgE
 smBmX3RQeJtLp06gom8Vcungv/9pZGqXThmn7GD1TiQVK7HgoAWQ/hNaW
 +LUqWcZbFORyXXvK7GduhNEnMSNKkKPfn8SogSADpfPHJ0MhdQ3EW3mZ/
 uKkTIQc4vYCJobupQulFHvjRgL28OG/DrKa4V5hAxMjRi2Mq4/uxig6Eh
 9ULje212aaW5ZM//N7/9DVRiI74NawaCR6YnZ3n0zHPVv6GHxIkRNaest
 UnMvkZ7aUegCCR3d5npMf6eghGNVmH8FIvdTe0GX7GOKkEfRnjN1kpuH+
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OX82GP6d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 12/13] net: warn
 ops-locked drivers still using ndo_set_rx_mode
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,vger.kernel.org,lists.osuosl.org];
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
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 067622D6DBF
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
> Subject: [PATCH net-next v3 12/13] net: warn ops-locked drivers still
> using ndo_set_rx_mode
>=20
> Now that all in-tree ops-locked drivers have been converted to
> ndo_set_rx_mode_async, add a warning in register_netdevice to catch
> any remaining or newly added drivers that use ndo_set_rx_mode with ops
> locking. This ensures future driver authors are guided toward the
> async path.
>=20
> Also route ops-locked devices through dev_rx_mode_work even if they
> lack rx_mode NDOs, to ensure netdev_ops_assert_locked() does not fire
> on the legacy path where only RTNL is held.
>=20
> Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
> ---
>  net/core/dev.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/net/core/dev.c b/net/core/dev.c index
> fc5c9b14faa0..f38ab254708b 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -9779,7 +9779,8 @@ void __dev_set_rx_mode(struct net_device *dev)
>  	if (!netif_up_and_present(dev))
>  		return;
>=20
> -	if (ops->ndo_set_rx_mode_async || ops->ndo_change_rx_flags) {
> +	if (ops->ndo_set_rx_mode_async || ops->ndo_change_rx_flags ||
> +	    netdev_need_ops_lock(dev)) {
>  		queue_work(rx_mode_wq, &dev->rx_mode_work);
>  		return;
>  	}
> @@ -11471,6 +11472,11 @@ int register_netdevice(struct net_device
> *dev)
>  		goto err_uninit;
>  	}
>=20
> +	if (netdev_need_ops_lock(dev) &&
> +	    dev->netdev_ops->ndo_set_rx_mode &&
> +	    !dev->netdev_ops->ndo_set_rx_mode_async)
> +		netdev_WARN(dev, "ops-locked drivers should use
> +ndo_set_rx_mode_async\n");
> +
>  	ret =3D netdev_do_alloc_pcpu_stats(dev);
>  	if (ret)
>  		goto err_uninit;
> --
> 2.53.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

