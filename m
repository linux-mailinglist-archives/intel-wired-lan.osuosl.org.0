Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOZbIhjvlmngrAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 12:08:08 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 886BD15E2AE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 12:08:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC59C821D8;
	Thu, 19 Feb 2026 11:08:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mQloRZKNoP8J; Thu, 19 Feb 2026 11:08:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23383821DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771499281;
	bh=0KVR6pmndfmgv+anhJqDZynHSvpKT3UD/+o9guUjTpQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ou33QCrB2F0bwbS2pbg+Asn/IUTNBsCqJIGXAWgQvxo6SSB/FQc5UaRNdLOV13qNj
	 B1zJIQaE/TcJZhfC+JnZ1zMme+7f03mZaSA0v5+C1AuyKG48RzRzuITysodObM9o4j
	 ik0QTakdEgGkPCEz3I45Wnnd7by0y6q4x1Hnw6yPfezDxxkFy2QRFjkBUjnvoBKhRv
	 Wdn2QilhUVOpBCTGzFTayM7ghPnEQNwPdVVEjDGuhNXVRcX+ZB47pIoxlQIl4gqWmC
	 hysk4ZacmNDOCNEYKm0fAkmZiX/+QZp8tC9c2DuSTRDsy4q597JChPzHQ520iwT2a4
	 6reVgUTU220mw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23383821DA;
	Thu, 19 Feb 2026 11:08:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A409F206
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 11:07:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9570B60D4B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 11:07:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3f91HVF4Iw23 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Feb 2026 11:07:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8ABD860C1E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8ABD860C1E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8ABD860C1E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 11:07:58 +0000 (UTC)
X-CSE-ConnectionGUID: Damp4FgsSk6E3/k5r+ZVLg==
X-CSE-MsgGUID: /BoyApUBRMyRC6JtvOTYHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="84032470"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208,217";a="84032470"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 03:07:58 -0800
X-CSE-ConnectionGUID: 7HDPfN7kRdSglcSWH59Eeg==
X-CSE-MsgGUID: 0vBE9885Q3+XQN3CPkoh/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; 
 d="scan'208,217";a="214590185"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 03:07:57 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 03:07:56 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 03:07:56 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.50) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 03:07:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J5iJCpAia8nzHktoN2UMoZhTl6PmP+9lUp0yw6ypkTMANhDDcguSh3T8YUZy3leM0srjDzMZohSmIw0Yie1eTqQB9+F43ZQL0pYSQwwLxzzcHlqLVV5VBBXCWOSFbkXYtjCYbC/PMK9UxwUpPAWHiris3e1YUoa7s/7186sQSDM5BmgvarOaNh2/a1oOs+JpVrufK+6B85E0s21VaEhC9B9oqrZqcm0Xk4c2tv9Zi+g+3c+dXlcMQ815zhQpchjLW/o3sRLEA6cSDpKBaEO6hj83XpTpWMRQ0IhDQmOk/E3xYsznAYOK4AJzPe2wFJfCJK7r4bZXfKIZnXAyphIuxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0KVR6pmndfmgv+anhJqDZynHSvpKT3UD/+o9guUjTpQ=;
 b=LDVp3s1RNnk903ytvNoGCf1ew9hZxGNIoYDg3/LwW2F/YoENTCs7YXI8ubpIf6y7uqBJznJyoLYp/Yx5FEWptifx/KpbFNZp/4Nx+J9yssnSI+mZj0ABMQKLS6ucctCFpQG+/FBChKmW9CHYrz5r2MORgcFgeK6/cjtt0/u/shMtGssTPJvlc7uXt2Wnk1XjseZgF5sViJRHwpO1fuxS4JAGTvYv+O+UO1iBOtuq66YbTWpJV20KrTx6P9Ens9XrcRyqEWoi0hwrEMbvUPb+ndGaikPLp0I4hhsc6tQ4UpeTTbat387ZRcvza8f3Ap5zXYwlQ3lFUrCrK4zgfVGoBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by IA4PR11MB8962.namprd11.prod.outlook.com (2603:10b6:208:565::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.14; Thu, 19 Feb
 2026 11:07:48 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%4]) with mapi id 15.20.9611.013; Thu, 19 Feb 2026
 11:07:48 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
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
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix missing dpll
 notification for SW pins
Thread-Index: AQHcoRu+SWSeDCtdHkmFvH04qxOUw7WJ2aM7
Date: Thu, 19 Feb 2026 11:07:47 +0000
Message-ID: <PH7PR11MB59837A2FD52D1DC607352A2CF36BA@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260218211414.1411163-1-poros@redhat.com>
In-Reply-To: <20260218211414.1411163-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|IA4PR11MB8962:EE_
x-ms-office365-filtering-correlation-id: cfa22e8f-34a4-4c8b-b16a-08de6fa71d96
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|8096899003|38070700021|7053199007;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?2b2ow39/QZf7TahoO73jG4NMVQp3CLeGlLJstZKcSH7QeaIbi1+mfbQSDg?=
 =?iso-8859-1?Q?K12hsH/O/f02G5SGBGxOrKw/cJcLISgHt3tJz+Ex8BHOpViz1vfeejkWtV?=
 =?iso-8859-1?Q?9m4tP3bcVSULQfdBSgHHbRf9a8hEIALA2KgrFpNAlpbmnRWuA/83qPFtsN?=
 =?iso-8859-1?Q?gPM72U6SFkG6lL2I+an387VUIHkItIhvaYCsNhZkMExKbf4U5NbhGKirJU?=
 =?iso-8859-1?Q?WIB3QKIa2ZKgaRNw5SaX3FeuloZ/jfwUMBD75uS8MbZo5nvNKNtilc9Skz?=
 =?iso-8859-1?Q?S7Qd377tM8+CkRHD5jWbC8+Plq84uUETkw11Hc7lDZVN/dHNHc8118TDVF?=
 =?iso-8859-1?Q?k4Q68PGvJl0inW87hopQjRl4h+T7se6zyCIUs6+Sxr53BFBXYyUnA99hvz?=
 =?iso-8859-1?Q?MIpjnuBrt3dY9S1StoegNdr35JqkjUw1SH5cBBnvMdlZDC1Ad4p/tonpS6?=
 =?iso-8859-1?Q?XvUAjZoqf213oeMBNZT07nJzA3oHy8Jpw97Emlbf7soIe8iN4lOKlbBMsq?=
 =?iso-8859-1?Q?M3b17xG2ESCGY3QgNCo2nRx39tZixJ5PWal7yo99Qc/xzIlgegMViewK7j?=
 =?iso-8859-1?Q?0AguRfGNy0UfcDu7IfDfsr0WwtNZqBYIN2AvaKA9sPVaJuHreLy7xwmoUX?=
 =?iso-8859-1?Q?qKnhV7YLRx1xCOOjaisTYrfLiYoSaZZVuotjhV5fOrTMPImTGUtzp8aNQQ?=
 =?iso-8859-1?Q?E3sXTa2YUW5e16fsFx+SnEPRx6VtHu66DafT25Pp9Pv70HHt+Dk51Pi/6N?=
 =?iso-8859-1?Q?hodP1sbNhm/PuPyKXMgAhA5MGHps9730QKBCqWQZ+ope11qja+dxfDZeVc?=
 =?iso-8859-1?Q?5mcFukkstM2Idewj8A5LhhUCQo7JrkzBFuVc3HMj8RGO5NxaRAwTGOPPsb?=
 =?iso-8859-1?Q?P+Oda/pUY+dSmix9PG7tPLmWROnQWAb9ZRiT5YCQ+Icd1gonCby+5kwwbV?=
 =?iso-8859-1?Q?cwWCwB4P0nFNfWddVgC2/1bEsMB9+pq76zeeLrJrSZni4nWRk6Zw/7ChBd?=
 =?iso-8859-1?Q?cHzYNsVjNVdF3oo4QWvnLu+ChXCmoC36uVm+3q8yOG/GI6XawYlT5g4HyW?=
 =?iso-8859-1?Q?MabKIaDe98v/QLOqf4okaderDXUsCqzLqm0VNEeS1bYkX8zfCt3Op4oQks?=
 =?iso-8859-1?Q?tsoAA+ZxvzQ6YhK+0ekNFWQGBRkfQ7V1VZXjL4xmlJV5MMY6u80gG00aPC?=
 =?iso-8859-1?Q?wGCJydEOXs+y1qomdndLVC6KKL5R/7uqEuEsFlXtLdSd2bx2sjdVGrP5it?=
 =?iso-8859-1?Q?pKYoeaAl4egNptFpXQ6G1/7szmpTXvSLtrG/P/8gdiEiqLKOWfJpcmXHfE?=
 =?iso-8859-1?Q?LWxWyrkDEZkcmItQrc3BK5tmzPpTn3R9ibpUVirDptv39A8HG2UFnb3Ikw?=
 =?iso-8859-1?Q?Vr11pm6wV0g0gtwxAEOcsaP5cyjA99a1sfc4PcWHtI3+7ET7eQElF2T1lo?=
 =?iso-8859-1?Q?CBqXEPgmVBsHbXcvM2SZSJSkaxK5/e2+KAx9+sjzrSlajrk4rZGW5JvE9N?=
 =?iso-8859-1?Q?jkAAh1K6IIebVTmHrlGjNlwb/7S5RrpxURmPaK9ZAKn12ZG9iCpl4GJoeZ?=
 =?iso-8859-1?Q?PVmFSO2RSDl/f9CgGLuokESvwdBu0i1I28uEXDCVmmePiThs4o0BQ+6f9V?=
 =?iso-8859-1?Q?Vy2+kSCcHcwiLhOuf0UT/xI/pqWmiD3ypRDizd46+K9sEDCtjZ2JDlUnuK?=
 =?iso-8859-1?Q?bUa6MTwY6PI6OUI8Qpo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(8096899003)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?PlCER7XUoxxBqo9YW8Les6ZcGk1LlHP32kDlo5YTKpjlnH77b92MAgfM2L?=
 =?iso-8859-1?Q?E/QfSIiwm2o30uZ1h/TZy5s7O+ec7JI6ItdzvbpEBXJuJ7EiLaCTZ6wBC8?=
 =?iso-8859-1?Q?n/AY8AQDxkOF1LWBYHDGeGTZrdnrzdQWIZhbJubM5VzhanP4z+C6Ts9MeZ?=
 =?iso-8859-1?Q?P+7g51Pxu0lZofNoL0Z0f0DHCH9irZTOHoJW0dfloIsERdmEYdW/+rwuko?=
 =?iso-8859-1?Q?yA1iHD4a+8e1klH9LLbcL7LLkd7kp0XdT98njUWNn2UOImwLIbgBfhRpzy?=
 =?iso-8859-1?Q?6UfoCKCd2/1iS9VBpCxtrDTvc17qJTDeP931gM+j9Lw+7KllCOKyB8Kyxh?=
 =?iso-8859-1?Q?j8f8XT9hGWVBmRDRsAD6c48sO7qB5KxO6/DwL3Sv27WEWMU+NgM1p7kNvT?=
 =?iso-8859-1?Q?oJuvqtqWBciy73MqOYpA1uwXRytu/Y5vIFuxBirRXGWNWr3NHO6yDbBekC?=
 =?iso-8859-1?Q?QULFx5Oxm8MV4UrEAxXsY83aESEVxb6Ti4sktLWmmUKdmZ5mtxvBQtlQ+c?=
 =?iso-8859-1?Q?aD+yDUZU4hkVf7ugy6gdsEVGJCu/qg/JfQVBM8smR4hG9fdhL1CbLgpVlw?=
 =?iso-8859-1?Q?zcBN8w+MQ0Lm2HPfkQGCxB4/sNYtwv/XNai0sD8F31KSxhlL1Cd5X6FVFh?=
 =?iso-8859-1?Q?2lOMgtiThlOc+QiKgWD/l8Kyr/57VtBgQ3kaaPD6SS7Ua8pq7hHAWo0UeK?=
 =?iso-8859-1?Q?pbkPznpPwU/4bfoxcXImpirOLFg8U4TGgDUZM7DEcf3vNdgkGXuTMRLFfS?=
 =?iso-8859-1?Q?+1tHGwsPKOU5SWMTxlBHrZh4dg8PhpunKCxHKGACixUdpJZDJvUXOMWSfR?=
 =?iso-8859-1?Q?fo1LDGqStP/LhcGbTQ6sm1Hk87L5uk4FETB7zpVtoYmzupf6Lak2EP1sKD?=
 =?iso-8859-1?Q?bIUf2le5MmcHib53m7LXkniqq+MzIl4pD4CTNua5mXaltk85TCtJTAvDLC?=
 =?iso-8859-1?Q?zDIP4ezpvmWSWWCMUZkq1ibl8vfh6vCFGeR5EKawWgPIhDDP4zaADlVV2d?=
 =?iso-8859-1?Q?dQk+mcuupJg/Hm39yv5DueqRSdwm3nqmdLHX15UNLN1Z6Ca+vtXDcBhb73?=
 =?iso-8859-1?Q?m2FC+Xucvc5pR/cnE1WgvlOS4ajbka/KHqfsD4ZUq9duhMZZc2oP2Blem/?=
 =?iso-8859-1?Q?+fDhR/4smMNX2H3HAnsrq58JlI2YSYJlxAbdS53LGO4/vAycEh7GOnV3PP?=
 =?iso-8859-1?Q?uxgGn47FZ4Wk/IIrtFbILnK84iCUbagy0CLQxw7Zexlt0aYK1OTTpWc/jm?=
 =?iso-8859-1?Q?68a4SPTMu2FVi1bvH88plnyAtuKZ0sQX7LwMdm9ZJYE7ZKtqrD11DaIUPA?=
 =?iso-8859-1?Q?S+4Xoq0R36KVRKkyfV1s5415v8u9mo8O1AdwIsc/x7LeWlp/7rGdia+sLI?=
 =?iso-8859-1?Q?q7gKYxb7e+8JBnkcNfKDHZx5A1sVEhmu7TSSo7dtLd6NoJTC3yZMkVsjgM?=
 =?iso-8859-1?Q?jFXUK8L8J7cxbrVahSXfZxiouQf5laDSDjFdIqTx0sBN80aPIxQIk4RC0r?=
 =?iso-8859-1?Q?16GBnsv2dhC2818l1xB4vW2MDcjk7Qt5RAS17phbMnotrGcLpOQ8anr2cs?=
 =?iso-8859-1?Q?LbgyfNOnvMDDECqZrCP5p7i8Y3UaGTCBbxuvEJ3p23tBl3Qr5fXPbV92kc?=
 =?iso-8859-1?Q?1X9wzv27F48+eWeJEJ3RQSp2UyRZU/hRPHLQi5ED4phf8ANb+ZQ1loneON?=
 =?iso-8859-1?Q?Elb6GvjHdFkp1u/GysmG3pRIjp6NNkjzZFEjfzrpAZz47s3YTyR+/EnDz0?=
 =?iso-8859-1?Q?oyDbqT8rcQcT4RXMbS5Oai+mglPJymt9d0DHxQ0NWR+PHDdqWD4OkozpEv?=
 =?iso-8859-1?Q?jtXK2y+BHQ=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_PH7PR11MB59837A2FD52D1DC607352A2CF36BAPH7PR11MB5983namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfa22e8f-34a4-4c8b-b16a-08de6fa71d96
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 11:07:47.9517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pBZo8ekobBsfuKaejZxZwizOzbKY9lZUeCMR7txcTZH8j+JofTbLb8TptmOuM7iEbPVBmoiLTuIuYvUS/zwiXXHkTjecmhCLo8Ex4NSMSnM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8962
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771499279; x=1803035279;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=J7e5YuhK/u9IKR993NCpBkoi4G0PPNYrzWXixnxhs9k=;
 b=KSlDP780zZ7PxGD9UdxTTQKHhxObw3/LdeBZNdSCUUa3aRhdghBAPvbc
 HykXs59rch1mXOsJiIe6oOXZ7j6dc0ryppLMds2xJGpqSTu7zI+to/z24
 F5eLK/Gy+gtV9+09Jfaf/qjyryJwgHCJTyiLQLPLXCrk5wHfAzSRFSFlA
 VC+bnSHIC4ZSHKN7RUDfgzFEABFk9Vy6OPAIOD63hA74tcTHMgdPAqtcc
 N9Ak7hLzzSxA0QMFkD/pufXfoDq8iuZLJKc7my++EslwjnpfS/4FEpQq0
 3Lv8YSeL58XHl4Ajn/AKusHnU+PwRbm6wQRfv88JELi4lKeSZ6s1oFuyx
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KSlDP780
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix missing dpll
 notification for SW pins
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
X-Spamd-Result: default: False [-0.11 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 886BD15E2AE
X-Rspamd-Action: no action

--_000_PH7PR11MB59837A2FD52D1DC607352A2CF36BAPH7PR11MB5983namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> on behalf of Pe=
tr Oros <poros@redhat.com>
>Sent: Wednesday, February 18, 2026 10:14 PM
>To: netdev@vger.kernel.org <netdev@vger.kernel.org>
>Cc: Vecera, Ivan <ivecera@redhat.com>; Kitszel, Przemyslaw <przemyslaw.kit=
szel@intel.com>; Eric Dumazet <edumazet@google.com>; Kubalewski, Arkadiusz =
<arkadiusz.kubalewski@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; Nguy=
en, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>=
; intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists.osuosl.org>; Jaku=
b Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Mil=
ler <davem@davemloft.net>; linux-kernel@vger.kernel.org <linux-kernel@vger.=
kernel.org>
>Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix missing dpll notificat=
ion for SW pins
>
>ice_dpll_notify_changes() sends dpll_pin_change_ntf() only for the
>direct CGU input pin stored in d->active_input. Software-controlled
>pins (SMA/U.FL) are separate dpll_pin objects that wrap a backing CGU
>input, but they never receive a change notification. As a result,
>userspace consumers such as synce4l that monitor SMA pins via dpll
>netlink never learn when the pin state transitions (e.g. from
>SELECTABLE to CONNECTED), even though 'dpll pin show' reports the
>correct state on demand.
>
>
>When the active input changes, also send dpll_pin_change_ntf() for any
>registered SMA/U.FL input pin whose backing CGU input matches the old
>or new active input.
>
>
>Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
>Signed-off-by: Petr Oros <poros@redhat.com>
>---
> drivers/net/ethernet/intel/ice/ice_dpll.c | 18 ++++++++++++++++++
> 1 file changed, 18 insertions(+)
>
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ether=
net/intel/ice/ice_dpll.c
>index c2ad39bfe177db..6f855fe4c78d62 100644
>--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
>+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
>@@ -2470,13 +2470,17 @@ static u64 ice_generate_clock_id(struct ice_pf *pf=
)
>  */
> static void ice_dpll_notify_changes(struct ice_dpll *d)
> {
>+       struct ice_dplls *dplls =3D &d->pf->dplls;
>         bool pin_notified =3D false;
>+       int i;

Please declare within a loop itself
Piotr

--_000_PH7PR11MB59837A2FD52D1DC607352A2CF36BAPH7PR11MB5983namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt;"></span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;From:&nbsp;Intel-wired-lan &lt;intel-wir=
ed-lan-bounces@osuosl.org&gt; on behalf of Petr Oros &lt;poros@redhat.com&g=
t;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;Sent:&nbsp;Wednesday, February 18, 2026 =
10:14 PM</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;To:&nbsp;netdev@vger.kernel.org &lt;netd=
ev@vger.kernel.org&gt;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;Cc:&nbsp;Vecera, Ivan &lt;ivecera@redhat=
.com&gt;; Kitszel, Przemyslaw &lt;przemyslaw.kitszel@intel.com&gt;; Eric Du=
mazet &lt;edumazet@google.com&gt;; Kubalewski, Arkadiusz &lt;arkadiusz.kuba=
lewski@intel.com&gt;; Andrew Lunn &lt;andrew+netdev@lunn.ch&gt;; Nguyen,
 Anthony L &lt;anthony.l.nguyen@intel.com&gt;; Simon Horman &lt;horms@kerne=
l.org&gt;; intel-wired-lan@lists.osuosl.org &lt;intel-wired-lan@lists.osuos=
l.org&gt;; Jakub Kicinski &lt;kuba@kernel.org&gt;; Paolo Abeni &lt;pabeni@r=
edhat.com&gt;; David S. Miller &lt;davem@davemloft.net&gt;; linux-kernel@vg=
er.kernel.org
 &lt;linux-kernel@vger.kernel.org&gt;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;Subject:&nbsp;[Intel-wired-lan] [PATCH i=
wl-net] ice: fix missing dpll notification for SW pins</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;ice_dpll_notify_changes() sends dpll_pin=
_change_ntf() only for the</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;direct CGU input pin stored in d-&gt;act=
ive_input. Software-controlled</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;pins (SMA/U.FL) are separate dpll_pin ob=
jects that wrap a backing CGU</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;input, but they never receive a change n=
otification. As a result,</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;userspace consumers such as synce4l that=
 monitor SMA pins via dpll</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;netlink never learn when the pin state t=
ransitions (e.g. from</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;SELECTABLE to CONNECTED), even though 'd=
pll pin show' reports the</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;correct state on demand.</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;When the active input changes, also send=
 dpll_pin_change_ntf() for any</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;registered SMA/U.FL input pin whose back=
ing CGU input matches the old</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;or new active input.</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;Fixes: 2dd5d03c77e2 (&quot;ice: redesign=
 dpll sma/u.fl pins control&quot;)</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;Signed-off-by: Petr Oros &lt;poros@redha=
t.com&gt;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;---</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;&nbsp;drivers/net/ethernet/intel/ice/ice=
_dpll.c | 18 ++++++++++++++++++</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;&nbsp;1 file changed, 18 insertions(+)</=
span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;diff --git a/drivers/net/ethernet/intel/=
ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;index c2ad39bfe177db..6f855fe4c78d62 100=
644</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;--- a/drivers/net/ethernet/intel/ice/ice=
_dpll.c</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;+++ b/drivers/net/ethernet/intel/ice/ice=
_dpll.c</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;@@ -2470,13 +2470,17 @@ static u64 ice_g=
enerate_clock_id(struct ice_pf *pf)</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;&nbsp; */</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;&nbsp;static void ice_dpll_notify_change=
s(struct ice_dpll *d)</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;&nbsp;{</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; st=
ruct ice_dplls *dplls =3D &amp;d-&gt;pf-&gt;dplls;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; bool pin_notified =3D false;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in=
t i;</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<span class=3D"elementToProof">Please declare within a loop itself</span></=
div>
<div style=3D"font-size: 11pt;" class=3D"elementToProof"><span style=3D"fon=
t-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetic=
a, sans-serif; color: rgb(0, 0, 0);" class=3D"elementToProof">Piotr</span>
<br>
</div>
</body>
</html>

--_000_PH7PR11MB59837A2FD52D1DC607352A2CF36BAPH7PR11MB5983namp_--
