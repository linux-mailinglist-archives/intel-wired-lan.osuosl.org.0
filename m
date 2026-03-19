Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8G1nA3o7vGl3uwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 19:07:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 504E22D08D2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 19:07:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E9EE561600;
	Thu, 19 Mar 2026 18:07:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ICFrZ_upuPTj; Thu, 19 Mar 2026 18:07:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE26660E5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773943670;
	bh=mJ8zOK73dN7QnQ6XDLIw46cla1BZOTjZ/uIKWf+XWe0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tTv4Qm5/Z0Irw0hiE3ptZXnGXrKid88sY/qxMzs0Xg3V6NiCcfzmE2qiezWH7qIyz
	 K6jp1lcEcw8HDeKgXKmaEkFRw4x1IFLLcctkXqMpCl1Hhtbs4gbFjQQvoKFsrFpH2+
	 qwyReboT+odxaL+HXW/0T3nB9PkYMPpDNW+LZzYZYJ4i7q4c8Hg3RXzvD7FSll17gh
	 wWtQOXMulN+1m9pa4fhoVYQ74u9fSXYRgycfK4RdgCQBqZv80Va1Is3d/em5BhLR59
	 RSL9lbIr3k136nRe/x5AkGZRdaAIRUrM6GRqA8EfA2VnwOH0OS2ims8Wl3WzOChQBI
	 qCP8bpUk2jDxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE26660E5D;
	Thu, 19 Mar 2026 18:07:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 78C65265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 18:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A3F040280
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 18:07:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xw8sSHFp7DUK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 18:07:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3D8C44015A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D8C44015A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3D8C44015A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 18:07:47 +0000 (UTC)
X-CSE-ConnectionGUID: uw4MD+6dQDuGVPKz7/bzmA==
X-CSE-MsgGUID: QsV89NkGTteAGE+oHSzBzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="86388793"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="86388793"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 11:07:46 -0700
X-CSE-ConnectionGUID: hZU1gcqXTfWKRIQBmAn3xA==
X-CSE-MsgGUID: Ztum7DFCSFWSqN/w4p+Ljw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="219997038"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 11:07:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 11:07:46 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 11:07:46 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.63) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 11:07:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c5jwKB8JMkvNkEFIsI3EmvMm1vxdT0H1YTBX80n485dVRHP6RRfanuW5E75J9+ZXHc7RO4Nh53bdYOCB13Deph5u60ZFJ6PJsD3T/DslChVRCfoV+HazS/fbRbpEiVjDcpWPgGBav3iM5MQdP34FMOuIYYkTjCUXicOl3EzTIHOVkO3vTr94zcRKUxDS7EWsPSouWFB/E7WYOKYwEPZ8MbLUsUveRmyRS9K5ML6OJAvVc5+nqtZ07ROm29hEIf1C0NRfw3ywOgxHZIYP9efcP+kNzZlwxyiX4Sgns9+Zdfor52+QLCbAJJ9YzFlzlbUpAoZBQWOt1afDeD9NqUJGaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mJ8zOK73dN7QnQ6XDLIw46cla1BZOTjZ/uIKWf+XWe0=;
 b=dIa6OM4gtFJJj9ng+6bn+p6SYUGEi8Z/2FEFT2Jq5HkTbOeGqc6tKu6A85lLSkl+YxxJRJwTawle92fteAEKf6HVwBxXtAvV3GFvoTYq1rpuTLWVL3GIXDD0XHOfY6kzJe8bPlrMlo1EEo4ND/zzKru6mX0mMgoeIGAzjsOmDGkz79KlbF0T7+mPEYZsDx5XEo41cE06ibH1GxQLIIK+KqDZk844E5VgGu2te8ReszUQh/OhXYZ80Cx6+wXRjDNJ6+f5UnXXAWsZjpkfqeFjCSI+06UEHjHlXEw8IrHkJOcsRBYRWKVimnMBwXy9H/MVdQfHafh5q5yGDARYSDc21w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by PH3PPF018EB8BEC.namprd11.prod.outlook.com (2603:10b6:518:1::d04)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 19 Mar
 2026 18:07:39 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%3]) with mapi id 15.20.9745.007; Thu, 19 Mar 2026
 18:07:38 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH net-next 1/8] dpll: add new DPLL type for transmit clock
 (TXC) usage
Thread-Index: AQHctrck+5d7ZZmX9EWTzhQx1tN8p7W2IsyAgAAFuLA=
Date: Thu, 19 Mar 2026 18:07:38 +0000
Message-ID: <IA1PR11MB6219C5E6889DF8C815BAFC7A924FA@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260318090654.611349-1-grzegorz.nitka@intel.com>
 <20260318090654.611349-2-grzegorz.nitka@intel.com>
 <20260319174503.GO1753385@horms.kernel.org>
In-Reply-To: <20260319174503.GO1753385@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|PH3PPF018EB8BEC:EE_
x-ms-office365-filtering-correlation-id: ce956630-8a44-4847-beef-08de85e2680f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: 5rkGWLZGkmubTppE85/UnMvXszPbKlERRb1/LUYIYcRH8GQHr7/Sgv94qrUuiHCTx6h8w30FE5ilLeoOccVYeFIKAf9ii+aiP3glTeyDm8+ZmZYmGrnGRfZ6dfAr3tkxgYVbtgUVbD2mcdwB/+Sfe0YtGFTNaH+IiYCsLmSXpYlFymMIZMh8g8eooY4pa9oe5/FIEGcs5EtuQBev8TxBxQz0JAoIktxVO0nLubaQFWoFO03a5eovEspYRI3pDlkBgB2GzWZXZqXjGV5fQFZlS9HY13sZlYvuBdrlYwvXReZM3UwzCimmJaVREEDUVkP8UhuCEY5sDsTDljTWdmxfLqZnhJJ+jEC+Md686ZlEgNMDstlwb3qPu3Phl192tFGNy6zvE7nUAcoA0RKFQiO8LbmwFWhsBpyZP8r5il4ZCW7f8+u/6nSvzggvgmNmjKpbNURp9lyLYuDqkNSjnnjfdWJ8uiJClCcylyYtXru4grHa7kxog4dlI3G4eukAW0DgBkz1q9ap6s7ex/MfqZ5C2BYFuDzmwg17zQMrMdMF7BL7o89bpLs4piKFBYRpjAISUqd0Uvs783skGVMv2SsnbcajZ51qH305rgddZprAO1qM5n3x3D4GCMUmfRKPpMG0GVt7YO9U4kAARYdnc77FRHYDh3um/hw+1mMbhWPIenS4401OdNIeE/hRmbFCyF3QoIES04smxri3RDlGdTECmzh0rO17ZtsNmN94wkKGLHWnQPNLKkYfkTjTRJb/Xr2w+/KL4a2OujQKl38Ydc7k06w28c2usR7wUQ+jNYHFm1s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NWnO7jZKIPa/MyqSaWkUEwV0lL4hS6ZX+KfSn0ar08GF5rWxVC3sI2s+M8GB?=
 =?us-ascii?Q?3kPe5bSsxvUV5CSrNshi563TUmzntOCznXyh5v64oazFcqF+cHP6HvcdrucS?=
 =?us-ascii?Q?4B1Amq2GYbpbE92/ERJHDV1KBLldp0f5gzGjfVKX3FZZvAJUjjmMvLCUvJSi?=
 =?us-ascii?Q?T2919TqxiGQPMEVRWsyvV0Hu5EIQFX0i+8UMZRr3n+CmAiFGI3qmTtliZ8/T?=
 =?us-ascii?Q?AqgBSXbBa0F6GehmX3kQjMy2TCes2lfRCLdvkPrgTRr4BAnTsAH9Drlsnr4U?=
 =?us-ascii?Q?okJPzXpbBEU4tC/DnhW5EK7UwT2YPrKxcYzM+bkzSZdwAOTMntnXQN7OPWIA?=
 =?us-ascii?Q?THfNTzIs6l4GDoiiTcjcC6f2DuTx5cArSDAqP6MJIACvSoWtBTvxTYTf3qS9?=
 =?us-ascii?Q?H4b8abGwnIRp/EDVinT/15vOTi+h2sieVv2+R4pf7hLMFamc6HqSSuq7jqHG?=
 =?us-ascii?Q?eOSMBFfnc9xrwld/WEL0/pANZjshHOkRU2oajLrR3d/E+E15DjrAsTXEx7Aj?=
 =?us-ascii?Q?tnYt2jdO5pUGUxsrbZFtpWNGreLQ5ICIN2lyJ3S73XXiMrGSdJOLjQj4rD11?=
 =?us-ascii?Q?kAR42vQgailPv2D1qGciru/Ye7x2v3+RBKkM0GgtQz4KeWJCA4TMkUsNhReU?=
 =?us-ascii?Q?8ChKW/BfVK8hmrj2s+BUDK0RYgEr/UukbppphaRyQzignMt6HQIwEd+VR3Mq?=
 =?us-ascii?Q?WjADtnspNakPqVtPJNKc2v1dSuGBgFRlWj0vDNgADzBXUk/8lp3mNj1nEHpm?=
 =?us-ascii?Q?63pFDHWtYPlRjp4AfJH0bfT5M91v2Lxmh/SJnStAoBS3kdfcXPQhals9IU9r?=
 =?us-ascii?Q?1cOU5hUPcHR3mHDVRCjvX+Yg/EjCnczgu0LJhdZh1L6d7zhJZNm3cg04qJ8Y?=
 =?us-ascii?Q?/Vox+RbU4qEx6yeN02pUg+G7O6CKL4FjPSQmOwaVP9xQ96mFYBngnmodLagZ?=
 =?us-ascii?Q?sV6VwB3GH3YfLTGLLD/nc7TejLVkXDvKZKXdNKQN9OYkGUnoNgCOPnTiGQKP?=
 =?us-ascii?Q?6zieZ9LZeTrHCoVjwqhe/GYK0TMhgv8FVD0D4ASlaEIfN5yMOdM/Gwz+pWrd?=
 =?us-ascii?Q?2QIeVP5sNhUltQ4+oNmf0eB97+cxi7FE3ZRg3zrkIZl+wWa0qv3d/AfCSqA5?=
 =?us-ascii?Q?1CBdJ9Kk0hf5rgyr7m4Lpq1z+1KuSAf9T/f0WnYXx6uRVKTVsfeMWw6K/4OA?=
 =?us-ascii?Q?RTK6svhjBeuOcXDIL6XIIjsqiqoGpZ20kgwi5M7Hmo2D170mwDbWNUH3JD8I?=
 =?us-ascii?Q?TfqXZZMUTBzUFqGeSb4zW+dYpKSRs+9gzNAHMr5mM0FjgN6vrUf8AKcnDdER?=
 =?us-ascii?Q?8GWxTnkiiOzcvXqS27P7wlXTs7agsGsz8qQCas5dIoblhgH1ohUN7xVe3JwV?=
 =?us-ascii?Q?pk5ENiOoupIvHug4ZWe2pf5aRRoFWc2EKtytKourI/c3pPEIiKkF12yCDpMI?=
 =?us-ascii?Q?J9hf3TQIZThkKhnGd4oco+uGqkvJYYZsHpkDKKD/LDNWV6Vptwuav58KdeTg?=
 =?us-ascii?Q?Tme6U+/a5g5STlnnr5+SE8lVlgPOAvPQjSdG2V8dho6m43DC9TG41kDDnvjq?=
 =?us-ascii?Q?ZjBNGOVwiQqq/Ebog0vfu7J244YEcDaUNZtRcmxgOLTrklgUwAX455y6J5QQ?=
 =?us-ascii?Q?Q7A9kcPydeVS12P9D55KHBOc2EIV9jWJB7KsmmaYghimfAGgiMO6zMdxRbge?=
 =?us-ascii?Q?ROsk41oN+4N0M8ExE0j8WtHoYRGPVWFgYdZ2FDaVzP9VHEmP+46C7PEzXXrz?=
 =?us-ascii?Q?81OZ3tplsg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vQ27LcEeR8lU1RXjodLQTMnyrSLCzgd9bSuPAFYODI/Sn9EQmoCHRjIvS/nt/1JIpF4rI5j0bq2lXu17J2mlE/TnvGbgfg3YgfcKs22tCpuodoDdKHBGafKr4Ay7rGAU/2Qf5WKFEwbclBeOzN2qfIyz8JBWebgnwiQ8Pauv7LUv4UhMEtRx33thZHhC3V1enSYXT/3vXEo01l67i+OEPaxqJe4MZL48lvbpKWeHta74Oez4E4pbndGkXdkk9PcX8MG6mv3zH1IN6L14iBmZXoNDFTPKit0Cd88Eg/AWciXTX8lvJsm3cVLq5HnbH7fBn8yokNGVhu2msSh5lTsokA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce956630-8a44-4847-beef-08de85e2680f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2026 18:07:38.7892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jD46zdID6VM3ILaz2q4n+5BZDttYaZqEklRklY7piVKI4EEDfbQGWxaZZ24gY+3MnytXOw6DldzGQFaE1t8WtfbKpqU2rrfb43kz3LTpJaU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF018EB8BEC
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773943668; x=1805479668;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4WUZ2LFdSOETSy/v4rftL/VFm/tuniitYNmfMHJHy4Y=;
 b=F0ld005M5myBUOyvOU7xGYg2jaJIBH7YU14sp9iyGs09Hp2EKV048n52
 3lvxnUcYXKmojVusj8uQyBDZjzBqOp3gN6WYVtBQMdGj1f+BOtHZvjM6k
 mHcE2KaTenX1/iaRWmhLYUVfD5mhPpueokhzTsnnQ1uSKoM7ljO3TJf3p
 FZqdjwt6SL6N1ppIDEOE6zQWCot6s/aB49cHFBqNcTNfsSkuUPuWBM4CM
 AXd3OTRWA7VdHfH84ATHgSATNE28++F5qBwFHb09rF8ZO8Bfbpfglo5//
 DaGaG9BNHaEIIeq4gaG38LLtGU+b8Pe6fXpkOkY4yekjPjuiNruQ4tbXw
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F0ld005M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/8] dpll: add new DPLL type
 for transmit clock (TXC) usage
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:kuba@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,resnulli.us,intel.com,vger.kernel.org,gmail.com,microchip.com,lunn.ch,lists.osuosl.org,kernel.org,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 504E22D08D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Thursday, March 19, 2026 6:45 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; Oros, Petr <poros@redhat.com>;
> richardcochran@gmail.com; andrew+netdev@lunn.ch; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Prathosh.Satish@microchip.com; Vecera,
> Ivan <ivecera@redhat.com>; jiri@resnulli.us; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; vadim.fedorenko@linux.dev;
> donald.hunter@gmail.com; pabeni@redhat.com; kuba@kernel.org;
> davem@davemloft.net; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: Re: [PATCH net-next 1/8] dpll: add new DPLL type for transmit cl=
ock
> (TXC) usage
>=20
> On Wed, Mar 18, 2026 at 10:06:47AM +0100, Grzegorz Nitka wrote:
> > Extend the DPLL subsystem with a new DPLL type, DPLL_TYPE_TXC,
> > representing devices that drive a transmit reference clock. Certain
> > PHYs, MACs and SerDes blocks use a dedicated TX reference clock for
> > link operation, and this clock domain is distinct from PPS- and
> > EEC-driven synchronization sources. Defining a dedicated type allows
> > user space and drivers to correctly classify and configure DPLLs
> > intended for TX clock generation.
> >
> > The corresponding netlink specification is updated to expose "txc"
> >
> > Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> > ---
> >  Documentation/netlink/specs/dpll.yaml | 3 +++
> >  include/uapi/linux/dpll.h             | 2 ++
> >  2 files changed, 5 insertions(+)
> >
> > diff --git a/Documentation/netlink/specs/dpll.yaml
> b/Documentation/netlink/specs/dpll.yaml
> > index 3dd48a32f783..2a2ee37a1fc0 100644
> > --- a/Documentation/netlink/specs/dpll.yaml
> > +++ b/Documentation/netlink/specs/dpll.yaml
> > @@ -138,6 +138,9 @@ definitions:
> >        -
> >          name: eec
> >          doc: dpll drives the Ethernet Equipment Clock
> > +      -
> > +        name: txc
> > +        doc: dpll drives Tx reference clock
> >      render-max: true
> >    -
> >      type: enum
> > diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
> > index de0005f28e5c..a277d08ac264 100644
> > --- a/include/uapi/linux/dpll.h
> > +++ b/include/uapi/linux/dpll.h
> > @@ -109,10 +109,12 @@ enum dpll_clock_quality_level {
> >   * enum dpll_type - type of dpll, valid values for DPLL_A_TYPE attribu=
te
> >   * @DPLL_TYPE_PPS: dpll produces Pulse-Per-Second signal
> >   * @DPLL_TYPE_EEC: dpll drives the Ethernet Equipment Clock
> > + * @DPLL_TYPE_TXC: dpll drives Tx reference clock signal
> >   */
> >  enum dpll_type {
> >  	DPLL_TYPE_PPS =3D 1,
> >  	DPLL_TYPE_EEC,
> > +	DPLL_TYPE_TXC,
> >
> >  	/* private: */
> >  	__DPLL_TYPE_MAX,
>=20
> I think that the spec and source code changes are inconsistent in this
> patch.
>=20

Thanks Simon for your review.
Yes, my bad. I didn't attached those autogenerated files.
To be added in the next iteration.

> With it applied I see:
>=20
> ./tools/net/ynl/ynl-regen.sh -f && git diff
> diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
> index a2b22d492114..4182bdbb6dbb 100644
> --- a/drivers/dpll/dpll_nl.c
> +++ b/drivers/dpll/dpll_nl.c
> @@ -34,7 +34,7 @@ const struct nla_policy
> dpll_reference_sync_nl_policy[DPLL_A_PIN_STATE + 1] =3D {
>  static const struct nla_policy dpll_device_id_get_nl_policy[DPLL_A_TYPE =
+ 1]
> =3D {
>         [DPLL_A_MODULE_NAME] =3D { .type =3D NLA_NUL_STRING, },
>         [DPLL_A_CLOCK_ID] =3D { .type =3D NLA_U64, },
> -       [DPLL_A_TYPE] =3D NLA_POLICY_RANGE(NLA_U32, 1, 2),
> +       [DPLL_A_TYPE] =3D NLA_POLICY_RANGE(NLA_U32, 1, 3),
>  };
>=20
>  /* DPLL_CMD_DEVICE_GET - do */
> diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
> index a277d08ac264..8f6db5d5bf0c 100644
> --- a/include/uapi/linux/dpll.h
> +++ b/include/uapi/linux/dpll.h
> @@ -109,7 +109,7 @@ enum dpll_clock_quality_level {
>   * enum dpll_type - type of dpll, valid values for DPLL_A_TYPE attribute
>   * @DPLL_TYPE_PPS: dpll produces Pulse-Per-Second signal
>   * @DPLL_TYPE_EEC: dpll drives the Ethernet Equipment Clock
> - * @DPLL_TYPE_TXC: dpll drives Tx reference clock signal
> + * @DPLL_TYPE_TXC: dpll drives Tx reference clock
>   */
>  enum dpll_type {
>         DPLL_TYPE_PPS =3D 1,
>=20
> --
> pw-bot: changes-requested
