Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAJbFbdpgGlA7wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 10:09:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A39DBC9ED1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 10:09:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47AA8409D2;
	Mon,  2 Feb 2026 09:09:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W0f6o-SKuNa3; Mon,  2 Feb 2026 09:09:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A625D409B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770023346;
	bh=FZbFmM1sSzCQ48Bb/4DFgY2gVhwseiqx/ml9Yum4niE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sAYonqr/GF+p6g3GM/5nRVF0SRJUCv1lYF7KPrsH5akdV9AZueI/dHs5LLN26vhPi
	 XmKzme+0o/0knXyQHzSiYe1e3IuNEwlfX5Z1+PWQn7S3vpmKaS7ltam/p/d7rlV+yL
	 BGwVy4VcUpcTGqqKdzaXI67V+4FVXH75UCEpB3KX2YmQQA+pCIreH/l1eZNJqFC9DB
	 E+XHViSPXAw+DT0CRrK/qk5Z/v3taEMHpX0Rrjtxla6sYz3b5GDxYeQ1LBF82VArq0
	 J8mkqTcAFQLsmO3T/kVsb4jj38t4SeQgQGRZCpHMsPrhgeBYmPIJ4np/obd/15Q/N8
	 Jy0eutJJ+JhPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A625D409B4;
	Mon,  2 Feb 2026 09:09:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AA7E4149
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 09:09:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 99ACA40257
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 09:09:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PEjsUDtNT-wC for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 09:09:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 860E140245
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 860E140245
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 860E140245
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 09:09:03 +0000 (UTC)
X-CSE-ConnectionGUID: AUN/D0h9R2eMpzn2HknF5Q==
X-CSE-MsgGUID: g/o/VnZTQAS8uOAAnDWE4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="70896678"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="70896678"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 01:09:03 -0800
X-CSE-ConnectionGUID: UxIMEqjtQTWBXdDb0pEupQ==
X-CSE-MsgGUID: Aq4uuG2tTjyAUNdfah0KJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="208567688"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 01:09:02 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 01:09:01 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 01:09:01 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.65) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 01:09:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ei9uba2d2sBXbh1Dw1FDLmUXBgX+zIyknPh+rCcjh8RuwFpXY2UCoiKKbtLJO936EZK9mvbg0oeWQPLhEWFQKUPlNCJBVLP1SeE4eb3uw2RnD6H6AyADc6ha7Y3WYNNDetndrP1vfu9eUMO0VPnXRENcS6FJpF3s0CS9OkilyC09etMw8d4qrQgF82snR5A8quHnTnWrzXwPX9PIVmtGsg4P/FXOgRXjczGSaDtLwSnSlGAOX0WE9YlcfZmptEf09WkR/Q9RSTR7mj+wc75HeVeq7GM5/vyTixAn1SrJto5If2+jhQy4Bnk+SHFsmtYeV+7DIz1+jHfA6hXg6TlWgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FZbFmM1sSzCQ48Bb/4DFgY2gVhwseiqx/ml9Yum4niE=;
 b=ssDU7f/QrF3rJuWuMI/4wkJoh5QfGN05kW3JCYgEYOzuptkenMBZBCtvSB/5Y1sl8dvug7Dn6K1ADW9ZOajDGUvf4ztdUCy62OdkjkvwKKMqtRSFvArcqc37u8JMviLzXC7TUJ8HMJewCBkNRqBWluRjIlCQz/WE0c3tiwB6XMNgNpWgpb0Hr5tfNTBvfKHez7FbR6ky59/qt0tYBMwzvadSvmn+ESOP/7YloU1yt/Kcm3enhPolHT1xnAJMbfczVKsd/M3X3BLAQDJCvuHBKd38FpHXIVibsUnNfpxbaqi62nB2HGcUFNMDwly7zInFSef5656MLE6+fTC3If0pPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB4989.namprd11.prod.outlook.com (2603:10b6:a03:2d9::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 09:08:59 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9564.014; Mon, 2 Feb 2026
 09:08:59 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <kohei@enjuk.jp>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "horms@kernel.org"
 <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "kohei.enju@gmail.com"
 <kohei.enju@gmail.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [PATCH v2 iwl-next 1/3] igc: prepare for RSS key get/set support
Thread-Index: AQHcks8Hemhp0uzvwkyT/L2MZ2BUvLVvDdXggAAS+ACAAACrYA==
Date: Mon, 2 Feb 2026 09:08:59 +0000
Message-ID: <IA3PR11MB8986E05683AE7A28AA932B39E59AA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB89866EDA0E5756FBE635AF8DE59AA@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260202090704.13025-1-kohei@enjuk.jp>
In-Reply-To: <20260202090704.13025-1-kohei@enjuk.jp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB4989:EE_
x-ms-office365-filtering-correlation-id: c79c13d9-26b3-4f71-a770-08de623ab390
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?IqTGIRdjlMhWTFhqJv1Y85JMh793nrokre6JNoilwkV0ad2nzhue/h+ehh3a?=
 =?us-ascii?Q?w9k3PwJJ3Xe6p/E3AchVgMPExl7r28moe82Te+vFDE5hkj/kKzCAaJGmLMr2?=
 =?us-ascii?Q?1DO91gnFC1cWcjXep6TUFYf8O37anS8QXRo2GASV1kVNj/MFHTz/kuhExroH?=
 =?us-ascii?Q?KYrMEVjK0xDEQpLzJvNk4EkLj5OLmFVUwJfSz2amfLT9QAt45U+WJhG7YOrW?=
 =?us-ascii?Q?UAAahEUPB4WpMIR5Bq5INxT3GLBSMBtTpqZ8yuVziPV/hZNoTFdK/hjsy33l?=
 =?us-ascii?Q?b1/137tupNzfO9GjowkFKD8GF0+a18GwRVTkjfvjtIrvTezCs6dRmxIvZeM6?=
 =?us-ascii?Q?TvpJy9V3VOtbxU9iD2lTiRps3HVCrOLBtW5j++BKR9+OH7e0+JsBuUofTFIs?=
 =?us-ascii?Q?BQkUhEeSItP5Q4GBQMQDb9Qlgzw9BNmV8puD6O+uFXXZjaejvnAgh0L3IwZb?=
 =?us-ascii?Q?X0vUGS763Xt2GB3B+goiuKylGtGLpvc9URsGGF1x+PgvvXqD1+KmZNOH9sXv?=
 =?us-ascii?Q?CfQ4qIZP6XSdakLLOu/mRJrthjyOkAeqQu4+DF6F5nCqX6GZnLyGeR0SbPkK?=
 =?us-ascii?Q?a5pBRbUXMWbWWVUcj65ECqVmod4ky/HA6/7cVNvws0uQJRVtqD4AnKXlTJLb?=
 =?us-ascii?Q?CayQzVu1CznU3/aLkZG/pexuRU2Lg/mmqt57a7Kd8F+7sMRXRr+FHDLW162f?=
 =?us-ascii?Q?W3KFvaZnl2yv8pMpnuis0CAlbBMNzl5Ig2ierafhmvcDMiZ7H+fqv1ZiwSSD?=
 =?us-ascii?Q?AaqTiAmyY7hgI0H5jIzxipLpcvLgpg91qxly3RF0+pAcDs+A8CQ+SMjYMj53?=
 =?us-ascii?Q?PBeoAZjiObBpWRyn7HdiYsE8zNGvjwwbtXlFZTE0+K2yV34kWoCTS5McrZ9Q?=
 =?us-ascii?Q?75KgEm+ZZ1EjOPWeTpw0p7RGg8epCW9poQGDwsDymYWQUWAX8fDQAmE/EX+/?=
 =?us-ascii?Q?pYAy1Dw/03x+AtvMA1m8lkix9gngUnRyKLbWNkAau9KI6pFz02FePKEQ1RJG?=
 =?us-ascii?Q?99nemq/gBELiT2KZfKFnc4ljbfxylsC8FeQ/H1q49/nVzhRQXV9uKNdJhtkS?=
 =?us-ascii?Q?BwqO8bBNJE8c3fRyUb+yGZyidGwqFJB8NE8vmt831f7cRXOlPOT8Y4DDWCQB?=
 =?us-ascii?Q?SWZGjWHW0g2gzLsWbtKigYchYhj/b7evpmyG6Wu6j80qFLcwuu46cZsq9U9f?=
 =?us-ascii?Q?WutK9yUHWGfEPmCIibG4h1XQjLkHqZZRUSGUDSnEa8w1+0inF/ylI0Vo/kQF?=
 =?us-ascii?Q?UardjLwdmmPi6kzt0vmqhRzL1JgrkfEjR11D9rdjcEuem8RPO0lsqDcLjHfw?=
 =?us-ascii?Q?ClAhd5CAlYLPI0w7Tzeg+yfel895GwG6uSe6K2OwF0G8Zcsju+/OPFF/Wqix?=
 =?us-ascii?Q?erBOU6PY2w6enK0azZ+xQNjPX/YMe3Kp/rpdVESaaAnEVEKPKFTv/fdzy2wS?=
 =?us-ascii?Q?2T2GUCsxNbWuf8jiV7lSKQfbYuEweIcJVJMSfHMRruBwVuYPbA2/euILOZS8?=
 =?us-ascii?Q?NQO81MJbFi8opRi7jCsbLGIz91/ExnSv7UMERYrHHfgSKAY7Ak7IiEem+jUR?=
 =?us-ascii?Q?PSNNOFgUQdfpgFfm4LBxL8QHGSuw9ECK3u8lTKIWS1+6bgUj2vyay81EMydf?=
 =?us-ascii?Q?O+wM49GJ75omYkhwAMVJfvI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GdQDc7mSRe1RMGa14fVpHhId65MD+J4HH6mdZb34tdwjFgCK5uVFHMCN+6oT?=
 =?us-ascii?Q?+p4DlZtQ51ea6rJmJb6cPh3X3U2kjbPWxmZujUzgGF/062PJDaquITXLlVA7?=
 =?us-ascii?Q?NgbEO6t5+AKRqAEeh349dRSA/SGyNsJG2h1WDjYyBm77c8vYdaOJSv6YZLVr?=
 =?us-ascii?Q?S+vQNybnNOcXzybMAXWC+vb9BSjJedzi5QHQpSdyT0i5WgWQR0OLbX8RMKQl?=
 =?us-ascii?Q?Ldo3drUGmaIQ6tGYR7/ZuOc/A+g1eAXStMYdEmSbiwkRkJDBYjSAd8Sfclyv?=
 =?us-ascii?Q?2o9Rpdj1TXqI4VDI1nfX94JMy+dZ/5SNBobfcO60eiBFi18gu1snNivFdjiW?=
 =?us-ascii?Q?qEP1zxRSWQ5XcIMQArJNRKqTjU+PuCAJ7jVRuCgOytA75Ob+ZWcBVwLj1McU?=
 =?us-ascii?Q?gGiG/kAbbzQ9zUkUjvjH/F0DQbbNfxe7KuqBnWgXbg0gsNlv+Hl2VCe22CA0?=
 =?us-ascii?Q?cSBj0UK1Dq9mVdv7VgK9NkCQwlkFpuSKVCPHUbXK+zFd6WO6k3eItfOlEyid?=
 =?us-ascii?Q?BE9qzJHGv0CyTE1h4fYSGTav5ttLSO4WVBrxVYJrTAk61zYxicrHPhMC9kZG?=
 =?us-ascii?Q?yctZgZrRAIfuVfl9piJKg6f0nL/o5P//eJ0724muTobjMEU5sRRQSr3Y+WLe?=
 =?us-ascii?Q?V38WLskUujOlfJ+H0oBNLSBtbKAA9csY1/IfVRF2mUaK32/icdgPrjJ1fBPb?=
 =?us-ascii?Q?FUPpbiXD6YHpehBDW0moBOAjPeodeVNY42k9hSNyYPOXpA7THgyeq6NGCckN?=
 =?us-ascii?Q?hFb5yasr/EV9JPZ2vQParDIkgCQzB/KYu2i63/8i8uawlZEVfikeIYNjO8/l?=
 =?us-ascii?Q?npY/XxljuCAjOH3qnoqwrUf7R7ji1qE3jOHF8hX3keUoDpD2jzm0zW5ndExw?=
 =?us-ascii?Q?RNq3O7KkPiOS8z2+y+ZFYYnpCoiNBZNsleXaLJgaHYmvfQ8Bl3PWqOxthd07?=
 =?us-ascii?Q?k1BSImHwF2rwWE4AdafQoSQ/mh/87AUdZXXZN2Cz1rRjTbs7+/MFPeZVPLVx?=
 =?us-ascii?Q?oH2GegrmGRfxaHkwsq3oFj5oit3C6/qygQt3i3XNqBiagwUGWiU/cj7cszEj?=
 =?us-ascii?Q?nRRvPd9heznfNhnFN4arwKJxcRpySfLk05R7Ju/s8P1xPF3WnEKTkK1uWdFK?=
 =?us-ascii?Q?n3aw7pe9U224Af2KohfOMVm9Y5YETlG+r3543vAOF79vRZxAl15gRahPKqIr?=
 =?us-ascii?Q?fJgwb8oBmnKPi+j1PwDovJR2gjfzB9yiYUtuKCA9YEfrcbe+IcVTSu+8amic?=
 =?us-ascii?Q?IM7GtJuo2QxMCEOj6FjaJSS8+TVxUMbxRRV8vP6I8dxtYEHn/UnH+tCtqJMr?=
 =?us-ascii?Q?QrS6CANmr/1QTPZ5psFeNWBJP92BkTpmSHfBfP3PIexJF5n7YZ8vlCW/peKk?=
 =?us-ascii?Q?zq7+lJGC+27c3HIr/7jd9Daw7RJmHWXbJRXbCpYmbKZEfmG+w5T3nOWRA3YK?=
 =?us-ascii?Q?2hobkpkr5tFj8HZtegZuRdN/1CF4K+28QV4vfttH7TEcH3+MbZEAoEF62faU?=
 =?us-ascii?Q?z54uQLIzLwHUdfbB//SbAUEB99biPMrB+J2owcOgjKPBpIdarHSsOGsXqD+I?=
 =?us-ascii?Q?uNvzl89XJm82HWpBKZYk+322SRU87wS66pkoMym9ofqbEBlMEJEPB0Rm38DC?=
 =?us-ascii?Q?v3s1mfvVU1M+Gd9Xm2LtEKihMFlTDvDxrCSN/W7ARW5m9O3d/vTuMiEay8iz?=
 =?us-ascii?Q?bNc8chkq12vedZrydQT5XgDt99vV720B3pgCq9NaKRm/jBTK4sHumvByhxIn?=
 =?us-ascii?Q?cTCBfC0cBw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c79c13d9-26b3-4f71-a770-08de623ab390
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 09:08:59.2899 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2dtZJuDWHh/M/KMyXRO6ZtCOfrkiio9Awc+Vr7iQcavHGRUMUla7YUvp4D71h0JiiGFAYHUK8+6D88oLKbpn1Jwx9elPYp4c/4jv2RdJWxQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4989
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770023344; x=1801559344;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EbkztBHWEjXo353ezdMvTM0PDoyrh73XmQxHiAU9V0E=;
 b=N9N1CsCA1f3zltM4oe1DekK/xyWDwCkCRiIfXXwfcRY5AkUDmGrBsWzc
 LC6hTVa97dZ9kWO4DFP6bO+e3XvuoKLhkJRVgZG4JFrtBKrmarFzsZqP/
 w2BosPxzkPSIn66/2YwhuzD1WaGu+sE3S5ssIL7XypKMy16CmsYF4V2l7
 iXF3PoU+CZiT5JaoCme8fGruzZopEMWI40AphmId/bycAaio/ZXrqkJE+
 YzlKHfjWROZDB9hstjTgQ6esFGhVH+wxAZxhO0DD4t0n+Ntmbxi5bxMr2
 JixOn1HqxsuFup4FzIPmH+FfT7uoH/mWBuALL09eEXAfe/L3BISNu5xhs
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=N9N1CsCA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/3] igc: prepare for RSS
 key get/set support
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
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:kohei.enju@gmail.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:vitaly.lifshits@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[lunn.ch,intel.com,davemloft.net,google.com,kernel.org,lists.osuosl.org,gmail.com,vger.kernel.org,redhat.com];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,enjuk.jp:email,lunn.ch:email,intel.com:email,davemloft.net:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: A39DBC9ED1
X-Rspamd-Action: no action



> -----Original Message-----
> From: Kohei Enju <kohei@enjuk.jp>
> Sent: Monday, February 2, 2026 10:06 AM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: andrew+netdev@lunn.ch; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; horms@kernel.org; intel-wired-
> lan@lists.osuosl.org; kohei.enju@gmail.com; kohei@enjuk.jp;
> kuba@kernel.org; netdev@vger.kernel.org; pabeni@redhat.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Lifshits, Vitaly
> <vitaly.lifshits@intel.com>
> Subject: Re: [PATCH v2 iwl-next 1/3] igc: prepare for RSS key get/set
> support
>=20
> On Mon, 2 Feb 2026 07:59:55 +0000, "Loktionov, Aleksandr" wrote:
>=20
> > > @@ -360,6 +362,7 @@ unsigned int igc_get_max_rss_queues(struct
> > > igc_adapter *adapter);  void igc_set_flag_queue_pairs(struct
> > > igc_adapter *adapter,
> > >  			      const u32 max_rss_queues);  int
> igc_reinit_queues(struct
> > > igc_adapter *adapter);
> > > +void igc_write_rss_key(struct igc_adapter *adapter);
> > >  void igc_write_rss_indir_tbl(struct igc_adapter *adapter);  bool
> > > igc_has_link(struct igc_adapter *adapter);  void igc_reset(struct
> > > igc_adapter *adapter); diff --git
> > > a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > > b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > > index 3172cdbca9cc..1b4075e7e8e6 100644
> > > --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > > +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > I think here should be added include?
> >
> > #include <linux/unaligned.h> /* for get_unaligned_le32() */
> >
> > Isn't it?
>=20
> Hi Alex, thank you for reviewing.
>=20
> Compilation succeeds as is, and the header file is included indirectly
> in the following path.
>=20
> igc_ethtool.c
>   -> linux/if_vlan.h
>     -> linux/etherdevice.h
>       -> linux/unaligned.h
>=20
> >
> > > @@ -1460,6 +1460,26 @@ static int igc_ethtool_set_rxnfc(struct
> > >net_device *dev,
> > >  	}
> > >  }
> > >=3D20
> > > +/**
> > > + * igc_write_rss_key - Program the RSS key into device registers
> > > + * @adapter: board private structure
> > > + *
> > > + * Write the RSS key stored in adapter->rss_key to the IGC_RSSRK
> > > registers.
> > > + * Each 32-bit chunk of the key is read using
> get_unaligned_le32()
> > > and
> > > +written
> > > + * to the appropriate register.
> > > + */
> > > +void igc_write_rss_key(struct igc_adapter *adapter) {
> > > +	struct igc_hw *hw =3D3D &adapter->hw;
> > > +	u32 val;
> > > +	int i;
> > > +
> > > +	for (i =3D3D 0; i < IGC_RSS_KEY_SIZE / 4; i++) {
> > > +		val =3D3D get_unaligned_le32(&adapter->rss_key[i * 4]);
> > > +		wr32(IGC_RSSRK(i), val);
> > > +	}
> > > +}
> > > +
> >
> > ...
> >
> > > --
> > > 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
