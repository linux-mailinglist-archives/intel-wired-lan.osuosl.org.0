Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAQ0AAM5nWn3NQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 06:37:07 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF954182176
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 06:37:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F163960AFB;
	Tue, 24 Feb 2026 05:37:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DxGVxryhbKMU; Tue, 24 Feb 2026 05:37:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F2DB61367
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771911423;
	bh=LbI67oWyhrB0PVZXRVDkuZy6+s1uaxwcBjUZ7bazdCM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MWz7Wd89FKrM5HLJqUe0Dh+DC+/QQ5cBko3nV1iTQCzzI24Dq3e+N0ZNUw0Dm3h3q
	 BuHpM9DfWGGGyT1Dn1nrUyiW6tIWGVecD7lsw8XkwiQf0scB/30KlCLpsH8t83wQLL
	 iA4Po2LOLW19ih+C8q12L5tARAIl0mdzq48IaGKNKm0/GeDfykeewkwEIB6+Fjquco
	 BrGCu+6q5G6PJEGUrM5ap1QXBOr4+BCEhc8i3dzQmNhrZt8dD/Lwi3FyD+sL7wUrqj
	 JCm3FZ2snDS/TV9Th1lot3pv8kbZXEW7N7+5Sv6iNm0Lcf6nvdf5IuO3yAkvQFFoMO
	 K4N6b3g/h+aFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F2DB61367;
	Tue, 24 Feb 2026 05:37:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C3BD1B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 05:37:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5182A40909
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 05:37:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vsMDze5ae6Xg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 05:37:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 53A1140904
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53A1140904
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 53A1140904
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 05:37:00 +0000 (UTC)
X-CSE-ConnectionGUID: UzRlbNv5SXumV6FCJcoTFg==
X-CSE-MsgGUID: b30/Rs7pTmCfxCPw9GBCqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="90501540"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="90501540"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 21:37:00 -0800
X-CSE-ConnectionGUID: m/NcqHraRHe20p0lxnn7fQ==
X-CSE-MsgGUID: gBsjy7I4Q3C9kyIIlpiUZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="219295288"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 21:37:00 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 21:36:59 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 21:36:59 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.23) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 21:36:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IMQDDAk7HSe/+cnIOzZhz3L8IMqT2j+GiN7ZrdWUrNZHFTPOtqp77Db+HdW/CAmUbyegerWAtaiDRDAK7nymtv8+tB6IqYkwTGtjdH6xMuoeW+i+whFGC5uVXbKlglW2QJZb79oD7Nmk+BBSxTAG5ZHO/D7pqM00J/zLaMpURx4+pmM9N1bgLWl3bQ+U2auXnOP8jxO0b0qm5URWxhHPYlgfPvhpo4SmN4r1qFBaLyMZQGJCDrn8iPnwxjFO8b+2TRpWNbPI6XxwMDDVCWGRTB4LZG/XDJ2Kwd79TcqcICuhN3iKAqnqPoxaJNYOzuWBwiQCKqEFTljnKqaRXaU/+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LbI67oWyhrB0PVZXRVDkuZy6+s1uaxwcBjUZ7bazdCM=;
 b=ygtA220+UWdwEGJjBtardIVtkrF5jkKqFeqSIAIz6RXr8uslQi8VJQT7cPamFfs19ornnGTiZHYjguV4mPrL6T/BkMhYMWLhQv7g+uCzwXTwW07c+MyAO417ubHI3+UAhRFVWgnaNgvRPw/bKuS+tvHva6+anbgObW/bLT1lHbyRwLMlnmQ1QzsFJosItf3tjBATdxd7aDZlCqwVymPTwd6cudD5WV7crDvVe3oWrYqJTTe9Ftp/GGau0ve2737EK0RiMLIM1qnzwYXkJpoTBBLyBZTsKPTt1/EIPLgYMZNmdHb6EMLbkzwJ6vKyHI+FIrNlb8cSWaaaCvoDopVNyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by MW4PR11MB7151.namprd11.prod.outlook.com (2603:10b6:303:220::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 05:36:54 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::b351:6cda:caf7:64a]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::b351:6cda:caf7:64a%4]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 05:36:54 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 15/15] ixd: add devlink
 support
Thread-Index: AQHcV8kluTA1DBpwKEmf+78CzSSnO7WR7kcQ
Date: Tue, 24 Feb 2026 05:36:53 +0000
Message-ID: <PH8PR11MB796576A347B858ECF7CC1E73F774A@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-16-larysa.zaremba@intel.com>
In-Reply-To: <20251117134912.18566-16-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|MW4PR11MB7151:EE_
x-ms-office365-filtering-correlation-id: 4b17a8fc-b05b-4fac-105c-08de7366b7dd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?+sLwyGAKZnVyXMLpLovV2/RiXAcBszdKT58N6Jc6qVk844xFZxk6gpFWtoMB?=
 =?us-ascii?Q?Nm+4EHWoT7f+Ztpwqtk2A2MbsldApqWRwl2h3YR7fugadZP1Yvc//TuyqSXM?=
 =?us-ascii?Q?MvY7SVY0y17JZjwhF8sg8CDLKUSBBSjlqnZ4864/qp5WglVq2MSftzR9nc9F?=
 =?us-ascii?Q?f7LUjAaM0C6WLcv0fs/gUKugmazMkl6OelIH6fHmgxjTx3vdzUSAybzxv8uD?=
 =?us-ascii?Q?3UOYelpZvd9H4831NQmRJs4kJXmdrxomIzuVmVkExAGZ+I+p/CRZER+SMEdf?=
 =?us-ascii?Q?vBcs2QhPMXohDO1ihRML4OpeLOIjrO9j2fj8M7Tfw6hLib8g4TyXL9UfTCXZ?=
 =?us-ascii?Q?4WEfjqj8dLZnOslhGTEn4AumXAxJsa8UQg95jbfLQAool9IDuYKfHX09KDcu?=
 =?us-ascii?Q?hJ4eDkVlWrUqCVa1lX/vG7zNBXivvUKSXq56hAlb45uHIlLqXuGigDD6jXOr?=
 =?us-ascii?Q?tDg3QxSV6QMz6Cgrc8iZkWApq9kT+j8/29mjqDA9ivmkhWKla4Iv8kxrF3uz?=
 =?us-ascii?Q?DhpNkfzCoC+qCLQJsgH+LNARFaIV6+zrwQnH3h4Bq4JBeAA6Y3Jz2O1PQmL/?=
 =?us-ascii?Q?zRucuCn1qnXcAIdimqI+cx++sMdL2cD3KA+6T0GxzOwV5rBxeAwmLQ6FYh08?=
 =?us-ascii?Q?iGO2LlOdtmZ50IjKSnXKliaYRBsx75JbovZa7jjLQ3m8RLkomxZut98cpNny?=
 =?us-ascii?Q?fmb6mITal4BKk7aaNs1FHUGctIV6Peo0TpFdhrK2CKfK71tOHUesB7yCv7/V?=
 =?us-ascii?Q?2mkuyi8tNXeDuILsFOM2e05H6xRXm01f+tra8a8NHhuqd1MfJgPDtnO+elxK?=
 =?us-ascii?Q?2SCCgev3fkP14e8aFCiQJHc2G/4n5kpukBlBFuCbQaiCWTS4t0sglp/4hWvJ?=
 =?us-ascii?Q?5U+kn+4aADSG7TU9RoxZMdpKTPxVPOaxarI/jjmIAtgaMbV8PnKLC3TNMNuW?=
 =?us-ascii?Q?PHLKvvBtPvOwgsWxSyJbV5dPD478xYMTRhIkEcoh7EcKBysBdkw8zA10/uo2?=
 =?us-ascii?Q?ojg6ZE7MGCASzHgwb7JIrWvIEn8k03b666DvTlcTPyQ8iFTHY/XRWcRh/HDe?=
 =?us-ascii?Q?XBYKK0xBevovBq2teI8tIena12lnRf0tXQiACFa3WUZgdUGZlcedDgMjrXvs?=
 =?us-ascii?Q?q1vnBViF3wCQXqwpsWpz4o9b0MKivy6BdRdCuGdSnb3k3QC0XCusEAhKbLov?=
 =?us-ascii?Q?HVoYMeGU4tewxa+wLSg7802NoMKmj2RlqJ1TgsR0LsHwq1VA22mFL0X3m4aL?=
 =?us-ascii?Q?m05Ugfmf8LU8Mc+iQ8jNPc/o1adhnW9jEewgqKNbpx8s9yjjGTkqfBHKXSwZ?=
 =?us-ascii?Q?u33ZBTJfi5BkTSSLhNwWIupQKSIiRN3QiBtmj+UB6HYGqTE3ikYZvmHKi6s1?=
 =?us-ascii?Q?Tqm8e8zPOKWGi3IrV/xdwwA0aoWPgKzfYgAHaXAF2XVjWBhe67MpGjBoKCef?=
 =?us-ascii?Q?r/PiZNiNBXrKTVliAjAwuGhyaZ5vkjrz/Fp373YONWEyPW29Xf+WFngTCIWz?=
 =?us-ascii?Q?d4P+IIXdljT4ZHS4vEHhdpODgkjSK5chlJzJOkLQudandlJTBoo30oFLrTzZ?=
 =?us-ascii?Q?BXDEX1qjIFexEQByBuDq7wXhw+n2ENhdMsvLUpbWXSpnwEhtVEa6CRJnz+tY?=
 =?us-ascii?Q?O+CGCimQbvGvd9Oe8DudDSo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/yDCGbYoztypyHGF3+aZW5tMjhaWG+9q2ykxSz9PQMgx34MNgtdUr2Abz23w?=
 =?us-ascii?Q?ZQSTm3yNQHwed/cGQYlbAXOo9D1Ezj18rgnOL6TGHkRnj1qkgbWR8iFb85/M?=
 =?us-ascii?Q?+dqsE6XXqDSJ1dNFhTlBTv6u+AHh07n7d5/iIYEu4bAZhE82H0tsYqt20Wha?=
 =?us-ascii?Q?MetO6FWfwC+GuASOnNZuB3pigeSiN2MtRieZgxbJjDHXbcTH/tg2+ZsPjJm5?=
 =?us-ascii?Q?GElJpTC+NrKwimSoUPceDa0fNCogSu0HkUri0Z8gICzk2NJlE+GFcsrvO3d7?=
 =?us-ascii?Q?xB1TR2Afeyd+FHmJi30jYvWzOJk3B4RxIIDC1qlzXzeWizP/QaKDHZplOsfo?=
 =?us-ascii?Q?vOgdahM8yKoLM8hlarAq7N/v8At2pVPC6tOvjGkR1F4ztU/GhkeF7m7s21Zm?=
 =?us-ascii?Q?FEnLknC4tGRK8UbJOYB1mQ7+uT7VlNbIs/P6+SNWD4CPiKeVR6EgzlUgIsqR?=
 =?us-ascii?Q?wqpJh4aVk/0m4OVj3h3IYf9rfuWPlwbkd6oPHCtU2mLkW7sqHt/CVMOYgH8b?=
 =?us-ascii?Q?YSHiL7ogKSIJCny1ORQeuGziVeIay2VU8wuR3aykTgKQt1awyzis/RuVSDb7?=
 =?us-ascii?Q?ck9dMTN68rYObY0OUgtU3a5QqX0L1TpsuF0DEwiAB0iRKuoV6BQjfYbWCbgH?=
 =?us-ascii?Q?U/NGNJLt5cymcT/SJRn6UByvN+x72QgU+S21KmmRmkVXlV+5wFBeW9kblZvW?=
 =?us-ascii?Q?LfUdheB2IBbuklec3GJUjuUdk1DPwCYkOIyHzdvi0W7hN208ezpM3ZNx12cx?=
 =?us-ascii?Q?e1HJ8KV89QsAjwpBJadMlb0RL0MMtSJ8ftapvjthUZ71VHecYSJuAtADCsqb?=
 =?us-ascii?Q?mrcFUZANlDmn1UAGRH7BY2kp3WMevciutzCA9Jke0s3sx2LNbb/OSQh2KwA3?=
 =?us-ascii?Q?stJlKnzD74yafhTxR/5Fc6RUPRBoi1EN8eH1QHap4xDGBIO3SCkGnDh/HiGf?=
 =?us-ascii?Q?KeFqY4Sm/zhrCAlzEIfxS6Uz/Y2IJeZPxxErJhvLuO8ED59WzvNfAN+zY7/n?=
 =?us-ascii?Q?ATR3u8Ui1DXB+0vO94rXkIXxqbXfwjdKYzyIPHtDDGr247E+qfcAdeu5csmp?=
 =?us-ascii?Q?EEc+LTghzaMb0GtCTxd84YClg3He0gmX63VJi/+iw0Z7dAsEv7uralJrOjvb?=
 =?us-ascii?Q?I68CKEMaa1mSLdXWEmfS9Svc2g4ZwX8msF9DNg9ASgbFY73Ji1CkZBYBEqtT?=
 =?us-ascii?Q?J/0whdimJOhcAagNu/MRux5hHnq9d5VH5PxKfO+lMZ/zoMDtr5Ghyat8jh9F?=
 =?us-ascii?Q?tOWA3RpgKjH2qxCh/hJVCBbLFHbHH6lPgzSX5xKINPEEjpZn9j85+IYYTi7T?=
 =?us-ascii?Q?U4cpS23k0rL/wAp+ulFSU6sQ173zSSrWkB4nKl8VHz6qXXYtMeRev7B5SxS4?=
 =?us-ascii?Q?lc7coXgvGJWz7uOnoWI8IzClksbuFVXJeqOa0LqzymU2vTokOiXcRKCwrxrs?=
 =?us-ascii?Q?1NDIKycDKWvP2LKLz3hix1/c8BwzCPcQdzKzxkj/EdeqwguLxiPKxWwRNZBm?=
 =?us-ascii?Q?jZ8qZ2XXztzQu76mbwHtIc73u+mE1ZrI/ige4+0nU3siAId38X46Wennzop1?=
 =?us-ascii?Q?oMC7lsjXQCDwAvsoo3j7l5+SD6OWYuVlJwuutOSCeFkZ1g2slI94IG+t89Lc?=
 =?us-ascii?Q?CGavYYwsj16joJC44TKDioVDlssZFHeImNev1fiUT6kG3cWLZMrJ94lh/L4w?=
 =?us-ascii?Q?kHJHk65ffUDF+MFOIB8WChObmv0PBfthNP7SlbDCeft74cS9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b17a8fc-b05b-4fac-105c-08de7366b7dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 05:36:54.1260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EnVFCU2+V2rUh7wC3bS0SAH1u3vVRcm/Qo1WE6Q0RoWGZDlBX9K9+dG650EUpge2IqfBoYfbeLEYpRxEpdUP6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7151
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771911421; x=1803447421;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l1CGDs2gJ3ESoHzfOSjkaxP1q/ywEbwS3oFf2SYgdbg=;
 b=FIl++dte8ZGFo4WHBD2uHSVIQcywLyCojQCYGIqWV2Q1QYOe3DBko/m9
 EfZ2Xw8pgE/MmahMQFoDm+TJF+XWlzrgm/g15qJt6xeZppGOZdL5N/jkp
 BKOLHzH7yCxycIbg/BpqS/qKF2mZ7a8yA7/K0ibY8otJk9IIpyNH0elaS
 mNBDyBd2hqUylhRQO0/I4a2Oa0W603bLSD67ZlDY+na9B4DLwOGHPrULe
 h+DRnWjUzGEfhDJ6eU0LTq4MecnaGV/J6zV9dpvz3TAbOE6FLg1qsVnj2
 IupVPtbejRCS/gx12TR9mJVTu78C8A25EH1d9eboIbcrze5znIAVF805S
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FIl++dte
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 15/15] ixd: add devlink
 support
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[bharath.r@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:natalia.wochtman@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[bharath.r@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: CF954182176
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Larysa Zaremba
> Sent: 17 November 2025 19:19
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala, Sridha=
r
> <sridhar.samudrala@intel.com>; Singhai, Anjali <anjali.singhai@intel.com>=
;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.c=
om>;
> Chittim, Madhu <madhu.chittim@intel.com>; Hay, Joshua A
> <joshua.a.hay@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Shanmugam, Jayaprakash <jayaprakash.shanmugam@intel.com>;
> Wochtman, Natalia <natalia.wochtman@intel.com>; Jiri Pirko
> <jiri@resnulli.us>; David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan
> Corbet <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 15/15] ixd: add devlink sup=
port
>=20
> From: Amritha Nambiar <amritha.nambiar@intel.com>
>=20
> Enable initial support for the devlink interface with the ixd driver. The=
 ixd
> hardware is a single function PCIe device. So, the PCIe adapter gets its =
own
> devlink instance to manage device-wide resources or configuration.
>=20
> $ devlink dev show
> pci/0000:83:00.6
>=20
> $ devlink dev info pci/0000:83:00.6
> pci/0000:83:00.6:
>   driver ixd
>   serial_number 00-a0-c9-ff-ff-23-45-67
>   versions:
>       fixed:
>         device.type MEV
>       running:
>         cp 0.0
>         virtchnl 2.0
>=20
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  Documentation/networking/devlink/index.rst   |   1 +
>  Documentation/networking/devlink/ixd.rst     |  35 +++++++
>  drivers/net/ethernet/intel/ixd/Kconfig       |   1 +
>  drivers/net/ethernet/intel/ixd/Makefile      |   1 +
>  drivers/net/ethernet/intel/ixd/ixd_devlink.c | 105 +++++++++++++++++++
> drivers/net/ethernet/intel/ixd/ixd_devlink.h |  44 ++++++++
>  drivers/net/ethernet/intel/ixd/ixd_main.c    |  16 ++-
>  7 files changed, 200 insertions(+), 3 deletions(-)  create mode 100644
>=20

Tested-by: Bharath R <Bharath.r@intel.com>

