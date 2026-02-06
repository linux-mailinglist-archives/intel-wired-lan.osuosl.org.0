Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPuOOjbFhWnAGAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 11:40:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 282D1FCBC2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 11:40:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2C34811E0;
	Fri,  6 Feb 2026 10:40:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ruoGdOregDMN; Fri,  6 Feb 2026 10:40:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 258A281215
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770374451;
	bh=MWJ+XF8ZlbNSJwswv5QzeiBlv9v3loCyoPd5tenLoUM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zqPveV7Mj3AjWLabtDFvef+vLA075seQhNTH4kej2iQ+TAXA3NuV35VtIBxNHpmSN
	 uw5IC/xwEBiaMquIBZPVtTizBI8LPBey0elJDRQn3cLq8+xqhUlLHB2pu3j6kdhnYG
	 X8TecMNyczB7v2dO2JhdmxyLJ0kf+pLvO5LQ33cNHahuHGYB0ACswBOwWKPjYYoceV
	 3d3upnMU2NJ4e9R/G3JfdkGlpOgyr5X+VqKDD2WycSbo+oR9y8FZl6QfjtMgXBPyQi
	 q96oI8ipnzstXLryZxqNf5Q2Mbk6f9kmoEUI6hjV8ExPjRdtGO+SKMUfbzokv4tW0d
	 FC08FVBP4Pyww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 258A281215;
	Fri,  6 Feb 2026 10:40:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 04F512EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 10:40:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA31F41A6A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 10:40:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZpXu-89q5a08 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Feb 2026 10:40:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1C92B41A65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1C92B41A65
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1C92B41A65
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Feb 2026 10:40:47 +0000 (UTC)
X-CSE-ConnectionGUID: PMiNKR+7QRCpCuOkY1fFug==
X-CSE-MsgGUID: Wp9pL+eqTqWzYhPzcfPftQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71305404"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="71305404"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 02:40:47 -0800
X-CSE-ConnectionGUID: oVp8bWKFQfWzL8+l7nuIvg==
X-CSE-MsgGUID: d9BvOExtSfyBf1km46OZXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="215006889"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 02:40:47 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 02:40:46 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 02:40:46 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.15) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 02:40:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qGr3NQmWNfX3VU+pq3vtXMqcr7fxg1Xkxt00dgwrP/n3569En46npTOPD4CPWmkiyrCyPveQ7l2NGsG0uUdogaFMkY7twCrsglLNaWvqUJa65OqolFMnX9CINPDDs0KkAI/ROV/TLOqOYzjr5XUi54SIwK8S5abB3Pvu1fKtwxiAIJHFYX4vCi6Vp1vuUvok6AkKqerSj5/78s2e2YLE8vD0Qmq2VOYQJ7b/TakM0zKCdC4KqvezETq7f1ECNYM7rp8778DaeUDH4RwOR0GQNh/4fRPjC9DnQMlcurMncP3N12RXk/ayGEqvhcToCBtgb6xdGHW/Mc7UZJ2Uw4oJwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MWJ+XF8ZlbNSJwswv5QzeiBlv9v3loCyoPd5tenLoUM=;
 b=ZuVN750GU/bFY2fypz5TksT7RiTPHdzDO0hZ4bqXaL54wb9A0Y6dgXYQYWC99Xz6zzs95cjYdt3nF66uhCvPpLdqJNTxCzWlbtyQHMZll9yl02s1R+ovRs8M/XkFmgD44Kvd2fE5hzj5GrkahIKSi0ARST0kWGjHu2eQXq5MtoAwfVNE/q47o6CfHwAEhvthyvzyPHVU2PYeqhzopdLcj27DS9hAynt5ZJXTYKcjqx1vJtIwffGIBdWeTVdcQZ3pOQZP+B27Wv1UqPoZ7dRJOGe/ICMqJ5Ed7bApIe+Idc6WW2A42JyjJsjzf0eCHX8lE1jLB0WIY4bQwTg/7nWD5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MN6PR11MB8170.namprd11.prod.outlook.com (2603:10b6:208:47c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Fri, 6 Feb
 2026 10:40:39 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 10:40:39 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: refactor: use
 DECLARE_BITMAP for ring state field
Thread-Index: AQHci3xAjsW08lKozE2dA8270x3l/rV1kBfQ
Date: Fri, 6 Feb 2026 10:40:39 +0000
Message-ID: <IA1PR11MB6241CE83E79C25C8E17DDE388B66A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260122085039.1117442-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20260122085039.1117442-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MN6PR11MB8170:EE_
x-ms-office365-filtering-correlation-id: 5a262a40-19d2-4dd8-d091-08de656c2b74
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?BHI26XbVrMWJKMYPUp6rdPA0ILjJBCJHZHCGxOs/lOnGY5FoX5d/dOZDv7UQ?=
 =?us-ascii?Q?xno2qTXVem5RhLyMM1oZwm1oT70LIvC0t6RBpf96ofZjfBo4NtdxMR3rWNsQ?=
 =?us-ascii?Q?4jBFxw7IeEAxuEiMREN0itFDH1WkUNus3qYZav5g5b64bCpD8ZPlqju4dVy2?=
 =?us-ascii?Q?VFzAymAJ5o/LpRE767t1VcmCX1gfcFKeOSi/TBrBoWXhqGbvmJST03MuXYZv?=
 =?us-ascii?Q?ImdQQq2IuysVBm6dJwLnBs75X5i4gTI8Sv6YejFz8V5/D2ABh8HdKZwR5MvZ?=
 =?us-ascii?Q?Y/LwieYnH2XzcWyMly22Qajj+wXCy8xXr/M2xtfPyWCrnRiSgOJuG1bPXVHj?=
 =?us-ascii?Q?3ssN3AqZq8JFZWyzCkzuaVWh16tUPmS7KVW0GIZ5rjr9RGchDguK8OA6EVF6?=
 =?us-ascii?Q?nXC982u8BOC/Z29IoQY+MOix7IPF0cRFt2/Z37Llq7xqhGOjSHiLf4N+qcyK?=
 =?us-ascii?Q?TQymhRjj/PECBbcEYb1WcA6Qaaycjkbdo3BMvx/EiAOQglL2esAw4Tx6nhog?=
 =?us-ascii?Q?o14v0XrORcVjCLuTV55j5PB7gQliEzXor5Av57EMDtAo/gkB/7QJqXk9HkTL?=
 =?us-ascii?Q?ziWv2PpKToLGp8NDoH2dFQwuLuAecBUAxFSz2wBy06hFWIBqnLrAuNM7SCmi?=
 =?us-ascii?Q?W2pTiEZ+4akCE9deH9fIXEElPsDCRyTenG4/8lxpnR+GmjeHhWnbZIXkC/Ph?=
 =?us-ascii?Q?t7kUbOC+njL6Vz1X/lokRs9tNnLasqtEb91E/N0CP2dUCSd18wKtj5HZQDDR?=
 =?us-ascii?Q?WUYdC0J3StbdgP9/704i28vSxrA6skt/CLl0o3F04hdYG4GiHnBdfkC8mgmV?=
 =?us-ascii?Q?KM2YNd3J7GMPLOZOwZxt/eJOB718EBeWFSI1f01XcX9ZQel5hWiMA0rAohnR?=
 =?us-ascii?Q?R8VYe7cy90yIvt/pu3YTpdS8hCAndRY3Zvrtm8F32W+m4YFDmIXWawL3yK9T?=
 =?us-ascii?Q?9W1ciOCD0p4sAv1pk/XT/VB+mMl3ACLxxVc3qkAsnJA71lvcF6dave+nPILM?=
 =?us-ascii?Q?FGWYhTQ1ONjzJoJrBQRsYa9wEn2lDkmu00xfdSKKDWUHPySFcJgTXd9QDPrj?=
 =?us-ascii?Q?O4/OIPCrW/m5F3DmoP8BOgQqFwiOuDN715r72holcvddWROsp3T1EwBV8hNm?=
 =?us-ascii?Q?Fs3dBNbQOXlcx9DHKb2QmgPHvf4S7/1+W45Wuq4l/zjbxLvB4cW95L9kExqy?=
 =?us-ascii?Q?Om14ZnQB/DvJksSMk+ybdQHV7QbWRnMRNBAPRL057Z8dFJ9g5DkwnA/iFpNH?=
 =?us-ascii?Q?O1PGrIctnVXqKo3wmS/PqQ9elZWsOPsFlSQy99/KBOZPkg1TROhNQ7coZs+Z?=
 =?us-ascii?Q?BA19/f+H8hgO4HDkLKMh5I7R7Go2Ucu++ax7il5WtnkK63uOwLhv+qFbXFl5?=
 =?us-ascii?Q?jKRhIZ3Tl3d9GLjJz6IX35b1FVJ4Sxm7sKHl66J5qWYUXtZt1DKi51/hdeev?=
 =?us-ascii?Q?zczN9C+MTF8I5PGrX/ADdRvNLQMX5vPoQTMfz4DTk9n4FK3Cedxw4LOpY+8v?=
 =?us-ascii?Q?MXVBsu0N5blMMnmRO7evgxlPDLxRr70S4W2y2R4cCeQUrPYbUyL7J9wKYFs0?=
 =?us-ascii?Q?PqTtjwGGOvgEzJFgR9y4tbI1o82DClntuZTNulJJcvvCLGjUdyKyCWl4ct0v?=
 =?us-ascii?Q?wz0qgmfsQw20ZG/2bfA19+M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+SiXnVvxYTL5AftRCQtLPaFlc2ThKGDnvdqNxrT4vREygmzSc8fDWVShbLIi?=
 =?us-ascii?Q?tsAh38TYyz0dmKQjMl7NzF58KHv98YvTFBTZnSSVGvsDk6OPGTF8twKh9HpI?=
 =?us-ascii?Q?PQ3KiXvHP4HMxr+8YHjN1GBxWqYv0Dv1Vqhf9cGxgoMtJvdX2xD4oSZZxStm?=
 =?us-ascii?Q?oA3rdkS8bsjJnJurU9iDTvPx4fjJwaZNqwNdhfbwzfOUQ9oyczDxt4XJbxtm?=
 =?us-ascii?Q?Q6SL+tYgRBE1W8s1lyPfLFnw4UDlt2V0eJi1kWw7W7tdhKOXdBo18jDTtI8g?=
 =?us-ascii?Q?+6fb9BKXKGyExJBWFvrh/llGHo2LLzq+tTMaug/LHtZqxeLiBgaH9OjJuwbQ?=
 =?us-ascii?Q?9vr6NNFCtOrF76lV3c5R4VmNjWJnIxbMpAkKA8c/4CSe/DKYU1HhhVcDkQrw?=
 =?us-ascii?Q?5HaAUTczXK0YUIx19Xkz2N76D8czxeiircfEQNDgX/wb8oKW3ikkZ/UsRidy?=
 =?us-ascii?Q?CqnHaoeH1dz2Jey48FjOnLmcvIZlzLMYwGhUpNasIbxL9mCDXhzxfbdxMF7k?=
 =?us-ascii?Q?EIYfOsv3Dg3mzubgoupOYwRa2PjpYKCxNKrwWxvq6ssiupZn6EAwrPeox/jE?=
 =?us-ascii?Q?F07fDFay8LWwlMaljdsoEG/1J742B+NzAx9541NIu1prUTIZx0HA94WIc8CJ?=
 =?us-ascii?Q?NAqiV1DO89l8ZGt770WTDTXnHd6kAQvt8Qw/iB08LG2y43K0WCju/4ROpbEM?=
 =?us-ascii?Q?0RL5Wcao+K8MqnMGtODAEj63MJl0QHrDPLsitq4XRFmEKEmHaFDx89/vlmEA?=
 =?us-ascii?Q?WuHnHdywfSoo+XXvfnnWtL9nRPMZPq7Vr9/a53hXOSjER/BkxoZl2Jp/pUYo?=
 =?us-ascii?Q?RM/ydbk9bDVeGRrCat8vyIqBbXL7G60oLML1QE5Lie+xqy6SCsj8g8Y4B2ml?=
 =?us-ascii?Q?RexGbZHkdi/luYiTHLAaytWbH3cphDIkkH7Dq6WF7jKGb3PtGgrCdzOYxyak?=
 =?us-ascii?Q?PLGQVT9P6mk+sM5U8pJWob9iZhHqev2/YZFzniGHEojc2PoXORVbrG8/gI02?=
 =?us-ascii?Q?wvDgivdzyQUTe1sTk1LKxGIiW/uZ2KxlQmG94FxAHTkVvfsMZ2C+l97n3rpA?=
 =?us-ascii?Q?Bc1MDgjyZGThEs38/8uvtRIqqwg4b2VE+Quav5T70jTxWkKp4Mr8Uq8Au+E2?=
 =?us-ascii?Q?XTmdL7+PlFL6GcaQ8qOg5YT5eCUlLtHOqSrAXnBEj69Zmw/TQo5nnI/GqHkO?=
 =?us-ascii?Q?noPeHwwGM48dNNh6KyDJyN/s0oV/BowXKxq2Lwd6jEJ4tu7Ki/Wxazg5EavL?=
 =?us-ascii?Q?BJtV4FtMI28gSyGVxQaJyxMOWJZaf7Baz9LIFNqcntMaIUu2rV3Vn3etdCWV?=
 =?us-ascii?Q?hKTEkZjaqVObFxSXWKx6j4m/hrRFr0EdfX6Igt9WzezHbPfi98r4cFG1ium/?=
 =?us-ascii?Q?W06DecYWOCzmRGIzoWujGaTAx29sfXb/8lO5xseVYX2/xWCeqi97FOghu4bR?=
 =?us-ascii?Q?HYhGle6MEBUU7AJcZV0c6IO9rlJnhdViE+FmcikL5IOZcqYg/4+MBJDAPgfd?=
 =?us-ascii?Q?+yh9rHcN27tPAR/q/+wvC1mr7Zw3pO8TU3vcU+9V/PJ4KanKzUS8BzG9uHO/?=
 =?us-ascii?Q?8wxigsmAs3ekXs7581trwHfPEhVbQfQhb9X9byTsgGNamUWEWqDB4YqZ71X9?=
 =?us-ascii?Q?46SUWKp1obSsJHJzmZV+HjHGHzH03/QJkCczh6GPRN7AQN14OXRbMTZ+irOY?=
 =?us-ascii?Q?qGik78CCQ5l9iKMtTE05z4w6vmQTmR36ZpLL0Pr9xUvw5MsJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a262a40-19d2-4dd8-d091-08de656c2b74
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 10:40:39.3105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RiMi1OBeSYdYRc3qX35PNzpPCwh27sgb/X+laeWWsUbMDx/XHgCT+X4hQx7+CP8F6FBSdZFdegmnbAGhXlMncA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8170
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770374448; x=1801910448;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bMzTchc6i/3HEbQbegRD3VCldfQO7LMrhy90bM8be2k=;
 b=MNT7LEJQsvLU/mW6KJdCQEoHIQzSMLBEhrYMaFrhf6v4qeN0v8p0qSTl
 DZW2zR//POOfKY1ZOXooHE0VgGF7H2NucePBh2zO+soorrx2sL6HB6tNo
 98ZRGYbo//yJZMKp3bW7BUhTh+vgAPXigxmgzv+8EEaCoYMv+tgx19Yzd
 C5hcMWlQSz5ZvaVgvRUBZeapo+g/zgEwMObNy/sfFs6PRWx7+mLz/jEm7
 pKR1+BV1P/z6/Aazyefs42ZnVNFX9vcwqFit1iw0veey/tyYkR2Lwad4Z
 6PXefOUwT/mljJYU4i2ug1h8CG0HqoFpLPE00sI/7oRjKO8CKFVpluNgY
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MNT7LEJQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: refactor: use
 DECLARE_BITMAP for ring state field
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:marcin.szycik@linux.intel.com,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 282D1FCBC2
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 22 January 2026 14:21
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: refactor: use DECLA=
RE_BITMAP for ring state field
>
> Convert the ring state field from 'unsigned long' to a proper bitmap usin=
g DECLARE_BITMAP macro, aligning with the implementation pattern already us=
ed in the i40e driver.
>
> This change:
> - Adds __IXGBE_RING_STATE_NBITS as the bitmap size sentinel to enum
>  ixgbe_ring_state_t (consistent with i40e's __I40E_RING_STATE_NBITS)
> - Changes 'unsigned long state' to 'DECLARE_BITMAP(state,
> __IXGBE_RING_STATE_NBITS)' in struct ixgbe_ring
> - Removes the address-of operator (&) when passing ring->state to bit
>  manipulation functions, as bitmap arrays naturally decay to pointers
>
> The change maintains functional equivalence while using the more appropri=
ate kernel bitmap API, consistent with other Intel Ethernet drivers.
>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 27 ++++-----
> drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |  4 +-  drivers/net/ethern=
et/intel/ixgbe/ixgbe_main.c | 56 +++++++++----------  drivers/net/ethernet/=
intel/ixgbe/ixgbe_xsk.c  |  2 +-
> 4 files changed, 45 insertions(+), 44 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
