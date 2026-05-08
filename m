Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMltJYSs/WlOhgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 11:27:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A424F43DA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 11:27:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F34D461179;
	Fri,  8 May 2026 09:27:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k7cXNa9HtJAa; Fri,  8 May 2026 09:27:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A05C615B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778232449;
	bh=u13CEq84l2Y+gsgpTaECVaVMsBqD/Roufi1rH303d1E=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=peaaDLXWt6jpgmKGF0K88wNd4YcnebSUp8ycAwSs+D9KJ5MFo66K8+ldkBwjlc8me
	 Vhs59Msq5KkKmM3TdH82fa1Spkyo9/VsM4CKkMdS6dplIKOA8m4fF7fe6UPdVNV8zx
	 8AtoTWEni9ld/y4a34q0D5kF6VRIFmxjH5ddKnb6SwblV7WZQdTrMDBZa5BBk/Nw2m
	 byBNskMM4Qynd82I0o9/rXvmxXXn0A9JkXlqU8vSViQUZ+j9Ls9T3YSpHWp63w72ie
	 9iBohpKCommBksmUocVUwT9Ram8z4azNkMHoVbhIAw1gKC50IKVsXKZZgWdiNk7609
	 B251sFU3O6SuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A05C615B5;
	Fri,  8 May 2026 09:27:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E02F7272
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 09:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C651941B27
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 09:27:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gkyIrFdwDP1M for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 09:27:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 03BA441B26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03BA441B26
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03BA441B26
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 09:27:26 +0000 (UTC)
X-CSE-ConnectionGUID: vW5t5C6yTh+AXOBV1D7Fkg==
X-CSE-MsgGUID: /w3/yYINTneR7qw+AKrnhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="101870256"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="101870256"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 02:27:26 -0700
X-CSE-ConnectionGUID: W46sCkgjQVWohMz8wtZ++w==
X-CSE-MsgGUID: +kXPU2g3RouLp3YzT3GYPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241724033"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 02:27:26 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 02:27:25 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 02:27:25 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.59) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 02:27:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TLLVu38mpaeoVrzSP7KAx6lKfx2u9n/g3NdlnjWw11kWX/F2bwTXalrt6L+HEY+i58EEgIjFBtXYyDbJHZONcyK+XE5+B2zwhSu1Yjxd+ex0jkWORnnwfvzE7ZkEGno9sOo268IIHe7AYHwj9kSqM2GuIsmzp6Jy7cUkr8+Tl5139+b5Njq9rb526vj8enVtu/7feq/OkfqGfvS0C8H6L+20UAIqmXdg0VPmcJmsAwGKaO/AWLphE0JIKbctejNlQHlJfwW0AU2NGw+A6W4MBris5T4Dg/lj+Zo9y5QTXP9lQ0mlgllGGFwcejOUOkq1YdPNQIVDlM51KEBt0GbcxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u13CEq84l2Y+gsgpTaECVaVMsBqD/Roufi1rH303d1E=;
 b=J7JixDyNKusLGWVD3lFINKYmSRdRsynWnAHXJ5Cwvbp45U2R52SW/9jzVrnIrYuod8SQydMke55ueI2pofPcJ+ePQJG0U3r8ZnL3Ebj9rvgEE0O5wB4Yd5P5bNXT/izJeuQCHj8U5jFn7kNyuhnXTwQORg2mLnhRqfYTogz9BIQ/yWul9w8s5FzCJPjOFy/AwJDdrx6ITNQ0WiQKfOb//f8IqH0RibCsTJs5u8gdKHbKBobYIvyrWM0BQNKt6LtBGB5KdMxwb0YskKF/8rPGWGXrbO8jy5T1SdsOPmtijvmXz0MV/cM1OSNb3yPImS7ChzLfRkxJ9tyuaCJUSeA3wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by DM3PPF67FA1A8F8.namprd11.prod.outlook.com (2603:10b6:f:fc00::f28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 09:27:23 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 09:27:23 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: fix AQ error code
 comparison in ice_set_pauseparam()
Thread-Index: AQHcvbqeqJuNt5xKakWhP0kxYW0YTbYD+XfA
Date: Fri, 8 May 2026 09:27:23 +0000
Message-ID: <IA1PR11MB624117008B462591108D765D8B3D2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260327072236.129802-1-aleksandr.loktionov@intel.com>
 <20260327072236.129802-4-aleksandr.loktionov@intel.com>
In-Reply-To: <20260327072236.129802-4-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|DM3PPF67FA1A8F8:EE_
x-ms-office365-filtering-correlation-id: f8ad3311-22f6-4bf8-6b43-08deace402e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: 7W+siGun2MNPm+2nlub/LBJM0Che/rykVglz1f8I0RLUqJEiaqmyTYVSCARlobwFzn7dD1/1thZ+ptFWOyy5RFNhAcBE6MoZySLvlwAVjkkQ8xNvul4lU+/EN6F347KyAk0dCv/BgKc6zBBxoBoQCdL/W1MAeJ/nH6KcS4Y2i5gq9aH6yUt9rjlfIhLscI45iMbwt66L9TXFAdfSk+yFyPiKIIexF5U7kwHXbWZiL+96DmCkmPyvq5Sq3xT9I40YvIuCjfhzzOJgGzHU4SVBnFyI+1nsRS1o84C6qvcZ4fKDwNEyOV4cLn+K/xjXufDorJjLT653/g0v3kzm0KzBpp0dJ7Ly01AL1nuiWm983yT4V1xgSebkQe02/M4znU8n4ceniHjoUGFUjFuwAfhm2pwbXmQHf5MSytPW5rqoCqfGYwhkdm+JShKDDtSkki/2bQvnr/YbUBUf8MEBYYfeJZfMHqCD4Gh5KbgqyHzdDNwsT5KvT4qMZaeL7QjlrTEh9uuH79eyE8glaHJXYqAJ+YYDgbIEExwZ/FotsW8NHfdgLP1dB6EcYvLvFlBsy5f6FZ+wbbw6+4rE0XCDNl8+TgcABgu03Z1Nw5Ve1Mz8fovtYE0enkOWxxicI/YkbWbXR5ZprHIGHWVh6TEgSVjRWsuA5kiGMQKABAykPPZ3hnoZi5akB0S7Su9aCmoAVSSlt7NDmrhtOweTSbF9j7VJoS6e3asf6gxltC7HTRTbYixA44+c2+Bp2vUQNyW9ZbOy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ygu4Hj8DP8T8OmMXM4zsgavh7K+cuzbUOxkqfU+bcwZQx6BTEpbMt5YtSaVB?=
 =?us-ascii?Q?PPoAMeHKdQJkM6erj5XSqPlTUfxCkGMRWCKWdodSipZ5mOU09jc957uUCNBj?=
 =?us-ascii?Q?fXzKqY8GbKXYhz4Mq7zoddcqmbwA+rqbVbc3t0XIuFEdZrrcFl91oFZ7DPbj?=
 =?us-ascii?Q?/fSjwOZkU0cFEoIjv0PAtrS6yNOMuFVgSbAUxBANRIQQYD5Q0+Jdmrnrf3yf?=
 =?us-ascii?Q?y85+7yjM+hpqFcBJvx8h4T6lJjhZKldHGg9bd5pbFs0RCrZGDGCSiUWZXkay?=
 =?us-ascii?Q?/0gJsYeXInWFeCg0JFDShNuKCGzaJRzNHeE4FIt8iqUZXAOFtlnWQSEDCC3a?=
 =?us-ascii?Q?a0UqCOEyZeeroI0mq+2wH3km1DdbxkpFc1fX6JakfmngtkbwhgdtS4m8DBr/?=
 =?us-ascii?Q?usG18nUaWQ9W9hE+lXFzmJHGrnxNry0fIIbYQcEDYsiGbj1jrj6pIZnQhZlT?=
 =?us-ascii?Q?xzTrOIrZkPPR5/L6UdFKCNtbcOMBd6W+h7ZsclulEgJtnIKM4AgyNy7grOCl?=
 =?us-ascii?Q?2k5vmXWOXE9rV+XfHSXrYnWLSx4xAC/F13AGkKm5T8dyWL0LuqPKzS3BCL82?=
 =?us-ascii?Q?P4iaqmQyK8rw8LFE9jJuoWR3QC2/fcF0Q82/T/lWCn6vWyaRWqfQKOq64gfH?=
 =?us-ascii?Q?buexVPgKeaakQNQUl+9FuH6rVf8lqOIef5vg2qlEaSkMg4f1fjQLMHUpC8Kv?=
 =?us-ascii?Q?te3M2SLuxXGhAkurrHRt5maxsEg9f5Iawb9TI75smkKE2BK+lsVp04uIS+24?=
 =?us-ascii?Q?qtWfZWH4LwBooXuoFkZz9+qIgyl8zMlFXt1tyE0o+/n2Gd7FQKeHJ8vmPrns?=
 =?us-ascii?Q?BTi7BrOsuD8r8KRe6J7wmLH5fh+bkhUE2LvRDob1ShzXIHZ42yAV8w/bQk73?=
 =?us-ascii?Q?tSGDbCyKN5MuS0r8EszwhLvuWyks4bNsgLK5hry1pu6kkqN/8Ej+3rGNn6eS?=
 =?us-ascii?Q?t1Ng6eHGL2gJM6TdILV8utQbtwJ4DS2TT2jni6AtEvpmawTaUeRpMBb7X3ud?=
 =?us-ascii?Q?KStPIUSXu+Eh0rJHb/xgsswVHQ60/Wypq347HYrajJKziI7iS630ls5CMcDb?=
 =?us-ascii?Q?TQXqmkW46DcYDTw7UL+C0Vp+GHCeDyxaI73CzzjrkvwOf2p2mSyCg+N0HLIF?=
 =?us-ascii?Q?xCk4T2gIMmGBsPWWFJMtA8sEzUSDU2UoXSh+qxN49QAbDwEDB443s12Y1NK/?=
 =?us-ascii?Q?GsYtVHwjSi9OKofHJRRlVMqbgEwKPwEeU27N49YQF7HvfCzXP/IUCMO78TVi?=
 =?us-ascii?Q?5jMdU81HRK2inTCFYX64wKKJubj+kpjceZNfGk2xrMeiAw+8kYYGyrkFUMdE?=
 =?us-ascii?Q?uJx/711GHWAFsWTbPGilWOaOKMf8J2MtVk9Z51Y31MbKvcByg4NRHXvXuEpP?=
 =?us-ascii?Q?hpyoAJdTFLK5eEccdwh9LEkjyw0MQkLVic+4YC2yA6xcTjTUT/MSmc2jam+j?=
 =?us-ascii?Q?Op4Ct0RRj2kbS+V2bb8oom3QPXbCaykES0w2KmTQ7iole79ZJF96MlHsZmx4?=
 =?us-ascii?Q?jECA6xXR3Jc9YOXNgdSqoRamiQwRM4pkeTvttCxfeUkK6+R86TluBBaduIBc?=
 =?us-ascii?Q?XIxN0sAx9hr611CuNvQgrWKfl5jTOeKg/Z45pj7TueshoiS5qj2N56cWMqjZ?=
 =?us-ascii?Q?eJu0f666ai1IyOa2QaKcYIMwySGlXTZNni/dAZjO5ApMoQi5q/9iciv132mH?=
 =?us-ascii?Q?E9zH26UQTeTuQCDh0smhymoFF92rLHYJTpRKPNphotPtRJwZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: i3WypTNXjwHS8uENZAP9ccUohIXSH2tH7ns46xP6loZiKKvTyQRJUTlr5JvWLgFE+9l5vVovIjSMj3mdq4x225suIUmgMqteCJDYVN4zk0Ka54HUV44Us0XQLpOCyFaP6LaHQua+N45kJFek36QxYijV2h2NdmQiG6ZH2LSrXF0LlBu+1ArS7mQ2IWNihe3kcrE5MpjI32V7HZTQMpFNB3ptLzn9ifLXl0zJ8AH8T/DFQIKu0nSib5S8ZTWDembjcWt0XGjM1d2k0pbebmhkSaTBlHdimadk8DLFaEAsY/DEmIna3zCbMSBjlcbbp7SJ0cDaiOuaTa8zk2MwBfzA9A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8ad3311-22f6-4bf8-6b43-08deace402e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 09:27:23.4128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QrV+WvR1KqVgn2UO5Cg5+CUEjI2sHGCkfNB8AZsZlRnD65FceCELuTF1mJS5/DIpgrpiScwNn4lENNmuZmmLMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF67FA1A8F8
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778232447; x=1809768447;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fco1tpp4QrAXTRtA7syDIxh3iExOOWEuEOq6oTtpocs=;
 b=km9OKbjcO+f7fPliGXDpPubnrrcGVEBO+ELG5wdmOXUTcrT2vSMcWgq9
 zBmbzm0Yka95WvxhrXe+SPepITfVOTQNdZXwSXpmEdzYV4IF3lRKgxcpc
 DxL4T+hsP+CkX4NXj2qhdMhaZRWim0m25KwZoUhItCayCK5pdMKS/M+T8
 lra42PRvJSPwxibH8YK53RxjYaUiTcq3gRjp9Zl4FMe6rq8Qved4QTx1Y
 yaJnL8r5d3LprcZTS6Jhq/lB5uM12FCYpKhuzluJ9sr5aOXYKg2GBsgip
 Q6xiLzaUaVtRp+QqwhMN/zm738EK0kAEZ1fhpQzMVY+kZymqhmWTz3UnQ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=km9OKbjc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: fix AQ error code
 comparison in ice_set_pauseparam()
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
X-Rspamd-Queue-Id: D0A424F43DA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:lukasz.czapnik@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6241.namprd11.prod.outlook.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 27 March 2026 12:53
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Czapnik, Lukasz <lukasz.czapnik@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: fix AQ error code compar=
ison in ice_set_pauseparam()
>
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>
> Fix unreachable code: the conditionals in ice_set_pauseparam() used the b=
itwise-AND operator suggesting aq_failures is a bitmap, but it is actually =
an enum, making the third condition logically unreachable.
>
> Replace the if-else ladder with a switch statement.  Also move the aq_fai=
lures initialization to the variable declaration and remove the redundant z=
eroing from ice_set_fc().
>
> Fixes: fcea6f3da546 ("ice: Add stats and ethtool support")
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>
> drivers/net/ethernet/intel/ice/ice_common.c  |  1 -  drivers/net/ethernet=
/intel/ice/ice_ethtool.c | 12 ++++++++----
> 2 files changed, 8 insertions(+), 5 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
