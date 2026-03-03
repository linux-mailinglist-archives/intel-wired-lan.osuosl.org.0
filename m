Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGfHDZMQp2nZdAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 17:47:15 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 706C41F413E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 17:47:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A23C46058D;
	Tue,  3 Mar 2026 16:47:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c0xaGyjFcd5b; Tue,  3 Mar 2026 16:47:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20D08610D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772556431;
	bh=PeZ309igHUAl2fxxss3ZTWcZCziMbuHEpzg1v7slwAw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rzcVFcJu3SBX4PBBPCmjZvRMfsxIgXBPTuEUSlZfuRCLQpu0q2WAQMO64hxiku0Tt
	 DY4dSYwiAIU+PKVkvHI6jJr0NZMcT3gTOoFnnBvw+zl1nNcFbK6E5RLhnmcVLnFJtV
	 4NkruFMMa0NWFonUUBQLFdzcv47WQZ4qCH1xZZJjAUm0cwfBfFs0h5wvlKKa1kSQRS
	 01aj2itnh8u4hEqA4ZOSLDcgDQtd00re2pHCfbNKla3flJJIXHWcXvjIXIEHPDHxkq
	 WoGklFcaS1k3nzTTnps2tam5P1kulrZfmQcNgzGnZxATuOW3hEE95a9VBnzURrXMPP
	 rbeuY2NH7xYbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20D08610D4;
	Tue,  3 Mar 2026 16:47:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 23F80231
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:47:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 09EF5822AF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:47:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eJEU5TEEihWL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2026 16:47:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3F51A822A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F51A822A1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3F51A822A1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 16:47:08 +0000 (UTC)
X-CSE-ConnectionGUID: S6ZFj7WsTF6h1ZrxpB04jw==
X-CSE-MsgGUID: exTx/b/6QGW4E/4HV1VaAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="96211989"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="96211989"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 08:47:08 -0800
X-CSE-ConnectionGUID: lYazL9YuQhuldy+DVil0bw==
X-CSE-MsgGUID: K9Ew5QOISJuwxddyqhGvTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="215957716"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 08:47:07 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 08:47:06 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 08:47:06 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.71) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 08:47:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ted5YBr5HtUQQWEkHRS3XycTdJ9oXMZOwNZiwvAk7OVIPi0FDXICYyqr6MLPMVWaaW5OUOvnUVBG+64rwo4LuJ9KHPJfCWyhmf7E56dxaUA4TTzDRpvPKQj1JlMGkzFjiT4HdqGNTRmEDRfst5iFBKFtMwdhWNDUlxhKc6b+1gftyOEUG1eFRp1Xw7FIfcVuBX81+xZG57qpGJFOYMY3BXejR+P6vL61Tg6qbjM6/++5h/OmybUO+27xX8qnJK942PlZCVBrya+dUB8kxkXlpA03DOQJ9bR2e/an/dtsFH7CIALbtMaV6q+mk5FKv2w4DazBvXd4ewkAgLLKD7+g4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PeZ309igHUAl2fxxss3ZTWcZCziMbuHEpzg1v7slwAw=;
 b=V7hrD4U1bpswjaXVu3o9LLoCNSugDKsMMS1wRrEbX5UmOeBxCiRVSXHc/nf7ztcMk5OLsBWIi7sSf2Dcua0Nf3TL1srR2rE40Ic3fuN5A9pQWxH7ChetNsQM/ckAtMx9EKLMe77o8PstXt7hzxtHlwx/gWv8WVFosF2xlkR0EbUcH4dk87UBS4SCMexXHQfDlUYDxsRIL8+5uRYVpH/wdZPDYkbcZDNMlBWms5jMu0aCkSHB7Gin1Yup6vzBvK0bpnRJHg1Mc4wSeQdG7W/kb4oHTOE0zO8aDlthBKDufsuVYSZb6BsgZdmTkI0azyH/b4dCz9WMjfnvnl3doaDtVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ2PR11MB8513.namprd11.prod.outlook.com (2603:10b6:a03:56e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Tue, 3 Mar
 2026 16:46:56 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 16:46:56 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 5/6] ixgbe: move EEE config
 validation out of ixgbe_set_eee()
Thread-Index: AQHcihWIcnjT/nEZFUiK+O2pBgeg9LWdI5UA
Date: Tue, 3 Mar 2026 16:46:56 +0000
Message-ID: <IA1PR11MB6241E095015DECF0FD46C3608B7FA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
 <20260120134434.1931602-6-jedrzej.jagielski@intel.com>
In-Reply-To: <20260120134434.1931602-6-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ2PR11MB8513:EE_
x-ms-office365-filtering-correlation-id: c6a7840e-7ec2-4411-3793-08de79447b66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: 4eUIlTFW48rlhsAn+Ir5bUsWiOZ+GNfXDHZyrzketv80tryQRQIA/r3sAkGUBDLMo8Fd6unFB35BZW6KNH/hzVNKNAzDvk0w9cu3Q+IP7Jap81Kn6R0kvwdgREGbfq8KVYKPlGoBnigm5hKNbtHEFTrMvq/ScAd45mpHVwqhs8mNYJBhcfj6c8IgFbBijpZ7VxJLwqhF7Rnw/9AwJz0pZbIugIdrRiNczoOrXR+GGtjhLGpMSEglCVbLVf1Hhrz/oSBDfqDWQSU0qLP5lKxrP0ahFdg65B1nOmjy9vQFOg1nVaEjHI6EIo7ksuafR7mtykmodGPWBnlJ5Yb4Y3r4V3Dsl6O/b9Y13n57Vin7FrXqlKS7OTrWx2FdLIq5EdbZ8NJgewm4Nl/FflDChTJTHLvCIwxBlsj2aLZ0IMrGmK9DvkPf6BmWN8KGmpPXOKOePavqyPES3kKh9swU5oOLu9hScEGW6lCZqV6meM7jsA0Piun3qHl67WDCjDHzwX6UI+EL6iRQvZdLB7H2vvdlQGirzMJRdAbBOgR7bkBWSnQ0edWvO+xy1h/HuMHwu7WnWFC55wdQ6M3pccjdSpWBnC2pOfryNYk7eT1XsePhGPzhoO+f5OdmtWyjEvzSVxkru4eBTN/0ih/1J160VlrKYL4bQHokRCC3dOb0ONIkuio1XDMyY3sbfNnHl1gli3PUeqTI3dmo4YBUe3AmPfdq950Hj4f59wyziFTrj2OZ+kEdhUFwNyMnbazkPUeKovqCZdc3cyIX+q06HT37/HUjTVAf015gP7QLx6PhJ7hU2Q0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZI3G13hm+nM+nzAi8aK9F9rPR4nrW1jK8Tobc7c+ulQWuiaW0iFDfe1kDxfz?=
 =?us-ascii?Q?xGTfFrLngX2vnbVbiVZJqGkaCxXzWabLH+2hrT55Fq7Ex0cT9uKrr+bKWIXe?=
 =?us-ascii?Q?0a24myNM2JuWCp+XT9K8q96t9o0lCA8W+ABgA5g5jC4O1qTk+ufhB3yFsBX3?=
 =?us-ascii?Q?Ri+KX+1JTGMmTsw/j1P4E42saAQHPJwLL96u8ZtpyjHgxMtkZIXaiO2jQp/M?=
 =?us-ascii?Q?k9ZuaMVqqgBaQF2C/RMPvNld0HGAojs+pfTcYlsCQPm1jKntE93FOZbdc5Od?=
 =?us-ascii?Q?yF/miHj/NqDwnAShlrUJpKsUltzj+o5wfy6wG3KgvDr6fzXYOlDb3UQM9EBU?=
 =?us-ascii?Q?bKO5CS+JEvZbJq4oYeAEEXlfsozQ9OAcDl5AXdf4UeA5eGuyxUsDhrs9LjXW?=
 =?us-ascii?Q?P7ZssBEwukl66+M8h+mcDdVJOKUbq/Xlnr1yABj9ec3jQOwrV46oAPWu5G+g?=
 =?us-ascii?Q?EK/PH+LmUX1zPdVqT1INJAcC6e1l3sDrranhheyRCBBnAXYVFJRq2USI48cL?=
 =?us-ascii?Q?I0hDauO09xlYsTi3axR1XTgDGqtOPtiLq5rKKB9oqej1rKUx037VRlQdjFef?=
 =?us-ascii?Q?uXixogQVWSo4BG/dGxnPE1fna6ZMXGMdD/7i1QDGlbJ0dqSALWEMxahcXo+A?=
 =?us-ascii?Q?6CKtf5+QTaZK81uQrfKIXzbRUztKj/jXzrcCFA5rqx6C8neIITw0ePLIffho?=
 =?us-ascii?Q?WX5ucrL9QJYl/yhWgCNR/8fO9dpCjOpDBazEZdvZgZN86X69u8ZGpgit3lG2?=
 =?us-ascii?Q?c1RH005MHEG/1zf21z8/NHPPv3lCDrB1wEtI96cKlfIQwsEw/iFdi4stiUPM?=
 =?us-ascii?Q?leCLbBwhpT9TIyU8xDYpUqLy5nrSjBXlofsPpRLXF7SSN2qUUj2azJa2U7Ym?=
 =?us-ascii?Q?z6nsuPOkequG8fqcquWU5345nJpW1Ely/F9RzskwB2MrCFOYybykOzS+bAcD?=
 =?us-ascii?Q?9XFBy4BJ/XLGcy+8/Rgl9ynRcu6EjNSwz1tp06yJExCLbQAB1PhZOMEUqep/?=
 =?us-ascii?Q?kbPuKP34rgg9QktNYNZom/sh/V8/KLyZcCNDVR2O1Bh4ct0LD4WAxMNV/aeG?=
 =?us-ascii?Q?bCg43edXtKmuNsoeI2WDsKEoj1VUIAXbsCHJSjVRLK10QzX1jn2biHLBMvHv?=
 =?us-ascii?Q?T4wIlo6qmpXZbKoEy43csPD5hj2NxPxUp2Axx4SM4tC2GRdb7s2LyJthJpbS?=
 =?us-ascii?Q?F8d4T9pJWCeN/8NzUm5BjsaQWdfM9prqQLaC76Y++zUrUdKIWQbXwEgfP7WZ?=
 =?us-ascii?Q?TiCz9WD9brfOGu2ap153g29zTVeSCBYN4Fs6/1tuUCZp8iwB2CJ3iTmnn3z8?=
 =?us-ascii?Q?m3Qne6CNPzWhwRLM64wUOBfTU2PSe0HvOohbmNuYPVorKFGLoaU7Cxc7+4mr?=
 =?us-ascii?Q?3XTTYkE2HeaJaSzHSwoi3OGgQnjFi0Wj2usDdWKJIketCwAm+1lf8tRIVPMN?=
 =?us-ascii?Q?bEZpFq8s2oWI7HJpoz4WssI+EKN0Xj1UwxwG38Qj3PZILxfE5e1Nb80d+BQK?=
 =?us-ascii?Q?BNt8IY7nPn77zGX5cwR6PJwAWMcnJKCz+HnG9HwspjHN0oThAMBpmyESr1NP?=
 =?us-ascii?Q?fB82n2mS25vJ37YKsKZ7qRi1WklrboO5GLyfPWC+a0utiL0UEXlA83VanOJH?=
 =?us-ascii?Q?x0I5mjNQxzBaSK3Kj4xRWLXBZzOYiOoItBUPt3UN3qBq7wZT17uyBN+Dx+u6?=
 =?us-ascii?Q?sn1VYjxvQdV9IgaupCLqTdodaJwXY8+smzcSk52NdT1C9nKI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6a7840e-7ec2-4411-3793-08de79447b66
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2026 16:46:56.7147 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9fUUOl8YzbdGXHysYMCdmA0kd6jxgsvluE7xGUaHH94d7snfRulGFN+XBLAK/WrjOflo21K4NexPQYjkAoYdxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8513
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772556430; x=1804092430;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NJJo43r0t+4D9R3ESS1HPkHUsc/akBil5ks+nBcUFWM=;
 b=D1MY3p2PV3gtFaC1VBFpDWKXJSFcR+rEuyzF/ZtUh3KFldlg3ZKal02s
 fzk6GfGUKN+Fnk0wzvlQbiHWU5WA7CkZLROdd4lpxkPgt+gFOUKGiq/qq
 jgAIDWT2KgfM3Py83kXPV6TjmoL+aOEpH5AZayEOtDiDB1NgOftBel+Gn
 SpEcTVDlkRc7DnxGa1jmp95b39oJ4TVa0Tq0P26dJ9YV4rKXC/0LpK9cl
 5d4AbvMnkoj5XLQ6k4NytumRpDvW6kQy/RudbbmbAAeMmNkgS8k/SWreD
 I3PHNNDVwJ9xXkaApFHYdDCV8EjHq4j5o0FYCNTjrMdur3FodpLuKNAFg
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D1MY3p2P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/6] ixgbe: move EEE
 config validation out of ixgbe_set_eee()
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
X-Rspamd-Queue-Id: 706C41F413E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,intel.com:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
edrzej Jagielski
> Sent: 20 January 2026 19:15
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; netdev@vger.kernel.or=
g; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Loktionov, Aleksandr <=
aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/6] ixgbe: move EEE config=
 validation out of ixgbe_set_eee()
>
> To make this part of the code mode reusable move all EEE input checks out=
 of ixgbe_set_eee().
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: add comment on returning EALREADY
> ---
> .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 98 +++++++++++--------
> 1 file changed, 57 insertions(+), 41 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
