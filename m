Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DB3C1F0C6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Oct 2025 09:46:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 717C283ED1;
	Thu, 30 Oct 2025 08:46:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bMJe0wz4wQSX; Thu, 30 Oct 2025 08:46:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0BDC83E96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761813974;
	bh=xSoGjt8veviIZzv9aZg61Y2aeSV27Aro/OEROaMuJYI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D5emZT2BR1PF5yBvD7Oxv7qs3Gv5ZuXkjWeGCbuc6Sl6LKjuGM8YS/De4O3cKh0t1
	 KVd838zWwA6vOg6Z/e0gslLqAf5jt+sB42tCv2aa20YY3O+/ZZ0FKfQZCflph8IL+h
	 ujAY+leB+6DWpj0AeaQNRABpO9vjWP2QiJ3wpvEpWJUP2xcmAAKjKTtspgzhLExGqL
	 BhYhozKV/2B9nYk8/g5H75/3HM0+3y8+I1fToVa5Jtl7CfNhmvL0BN8qXguvlN5Dnu
	 yGk6JrDgcgBUWw2PUQ9nAhNpyl5vR8aJ0RP9N/CkRbl+IrJR+xICg3zQPdikx5SzOV
	 AtleCPK4iBplw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0BDC83E96;
	Thu, 30 Oct 2025 08:46:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5B9A6160
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 08:46:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A3DA61391
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 08:46:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3V8o5ZI7nMyq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Oct 2025 08:46:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2125760EF7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2125760EF7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2125760EF7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 08:46:11 +0000 (UTC)
X-CSE-ConnectionGUID: 5t+4iUHtTmWxh5CMjVJF/w==
X-CSE-MsgGUID: GG4Jw6UuRfm7gXOtcXrhtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="74239734"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="74239734"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 01:46:11 -0700
X-CSE-ConnectionGUID: GpD7xcO9R76OdcCRHvf5wQ==
X-CSE-MsgGUID: nSejIMQHRVGmuceqty7Ygw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185090623"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 01:46:10 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 01:46:08 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 01:46:08 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.40) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 01:46:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DjsSB/1LVfTr61KgLWvGad/m9C/Xbu1dFX7EC4oTFiaorOcbYAKoC98Dafzau/S+ufh3ZbunJXdL2ZaLeA+Eyb0xc10c3d/sdMgWo6G8C9irx9OtF+0WN0R069p6JWRM1u/vBYt1YDRK+l0nN3pyY54Eq90RYG4rXXa+rNJo8efNq/iUEaxbZT5SZ7cXZOgd61wIskQUitjetvOHG4/E8ECKnRSwxFTRtUZteZJ1S9ePJp0z/fBzQJb0eY0zeZYWgRCjWDT9yg2rNZczTi5TshlU0RlKPV08jCvYbrU8+F7gh7FVnXrWBTcGu0vz85YpXgN7sbhitaX82TLkRi7qbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xSoGjt8veviIZzv9aZg61Y2aeSV27Aro/OEROaMuJYI=;
 b=ewjUd67NzDvaOLmuH92orzJAvvSOGLLTkZ8K7ohqUMs5GQDxhqN4Oz2bcN5F/TZC/3cEytmG9zEUidvHqpuYVW5tjwpW6OHo7er81Vm7k2+m0w2zwPM6XYUpgTfU2n7xXPepUTCKV42LsLKZvyfBwj5gorJRU/aiMpG/5b1VANR5FSK8BpdsVBGS7Els0Xb6GY0JF6Hm6Tyk/aHtQhFPWVZmcentQ0qzwEqRGOJRhnqBRzPXdIgGZVlo3PfxFPv1ieJxvQeF2oz1Ae60CKqO0VB53X+hpWlo4pCRGj7LOvku3o1qG8YKMIhXYf3zeBLJQL/0qeEyAObM14Doc8jCxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH8PR11MB8063.namprd11.prod.outlook.com (2603:10b6:510:252::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Thu, 30 Oct
 2025 08:46:03 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9275.013; Thu, 30 Oct 2025
 08:46:03 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, NXNE CNSE OSDT ITP Upstreaming
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: implement configurable
 header split for regular Rx
Thread-Index: AQHcNt1R23cujjrEoEiJSdBK5M/IWbTahVaA
Date: Thu, 30 Oct 2025 08:46:03 +0000
Message-ID: <IA3PR11MB89861D8E27A130819515F00DE5FBA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251006162053.3550824-1-aleksander.lobakin@intel.com>
In-Reply-To: <20251006162053.3550824-1-aleksander.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH8PR11MB8063:EE_
x-ms-office365-filtering-correlation-id: a1af2bb3-07ae-446b-8306-08de1790c243
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?b2pMQkhDZjhKTnA2WHdURVUrQXRiQ21NRi9may9qUlhkU3ZvR1R2UXhjQkQ4?=
 =?utf-8?B?aE40c3dycERlclljUzgvV1J1bnptc2M4M3E4TkdEZlBLcGtVVjFqZmpSTkEr?=
 =?utf-8?B?cWdHL3V4QzExYXJ5bm5KZmpaeGxITDNWN01LZ1djdUcvN29nVCtkdWZRWTNU?=
 =?utf-8?B?UFBDeDdKbDJSVmdsbmVubE0wS0I2UWtURmpYZExMaGw5RmxYNHRnQzFIdnQv?=
 =?utf-8?B?Z0NOQjM5cEg5QXAvM25yL0pOOVFLcmRVc0tKRWFGRFdMOWxWRFBKamZJc1lR?=
 =?utf-8?B?ZnVHdmdWZUFKQWZHUzE4VWRRdG9OWC9TVld5ZWRjNzFBWVBjSTB6enk3N1Qv?=
 =?utf-8?B?c2U3YTF4dFErSEQ0YjQ2MU5RL1BoYXhvb09ZRERqSUI1NUUzc2hHRjlkZGJH?=
 =?utf-8?B?aC94OFF0MUU0eExLRVBWOWtodzZsdjRzOFJQaHhIRkg4Qmc4am1Wa1FDQnE1?=
 =?utf-8?B?OWtDYkU2VFRSSHRPZmJ0N2NIN2hwaDcvei9OT09PWFQ5YXgyVlQ1Q3phSEs5?=
 =?utf-8?B?SkFiV0lCVFJZc01VRFVuTE9lR2k3OE1Za2NtMENMcnhBRElCaHRGenFxbDk2?=
 =?utf-8?B?d2RvRUErQUlRckNiYk4vSXcvUFJoWit3VWdJZzI0K3ljZSt4NVF5VVRFOUk1?=
 =?utf-8?B?eWhjM05uQklSN1hZNXlyTTRtaVh6blN2WmFmWktETnNEVmNKY3daZGd4QnZQ?=
 =?utf-8?B?RkZ0b2o3MGQ1ODgzNTY1VjFVZldrSmxMajY5aUNCNFZzWnFUTnFUZmF0VzVX?=
 =?utf-8?B?Ty9vNjJiLzZNNjdqelBnYmZzYmo0N0Fnb1dvQm1JM09NbjgrR3Q3cmI1VVBt?=
 =?utf-8?B?M3hPRTU2VmphUzZqQURZVUZWWHF1cVZCN0l2YjlzYkxNbXE4MjQxbTIvNVlh?=
 =?utf-8?B?ZTJjak13Z295WlhDVFZCUUNvbHJqSW5yMTY1S1Q1c0VaZG1mZTJRZUsyVHVu?=
 =?utf-8?B?WUhQMnlKVTVxdmlXZmFzYnZGZkc1S2hTYnk5dDloQndBTitTejFoSFpaL2FK?=
 =?utf-8?B?elRCemN6VEpHeXJlUHYyTFhUbFZ5SEpYOWdtZE9XeW93a2tOTXpUS3JXWGY0?=
 =?utf-8?B?aUUxVlVwaFNHN2dIZm8zZXp1YlE5Zkx1ZHNNekZ3RHRvbmh4RGx0RU0yUTJ1?=
 =?utf-8?B?K0NkL29TbkdKUjA0ZjJKYzBxWllWaWpLWkZCZjIyWG0rbjRPVFErYjNLcno3?=
 =?utf-8?B?U2FQUkNJVlB3MUhXSXV6T1JyODhBNkNBK3BZNVhjVHMwS1ZlOUViNTVFZDJ0?=
 =?utf-8?B?UnYyem1peGp5Tm1nY2w5RnRWMkF5RFloTldJWUkxYnV2cXFqa1VReG9tdVI5?=
 =?utf-8?B?YjRPVFZVWHhqQXB1VytwU3hpRmJZWitHWE9SbDFwZEhPeUlpaUZ5c0p2Lzl1?=
 =?utf-8?B?Z0ljQno3TnJjRmtPM1lKWWJTay9pMm14N1JOOWdqZHJxRUhnU2J6blUrVDRX?=
 =?utf-8?B?d3RSOHVuS2haOVROL3FOTWxxZmZ6bFM1czErYTdCa3RNdFg4SDc0RVU0N0wx?=
 =?utf-8?B?U2NzaEFaTEtsekpuNWFXbnh2S0ZmSWxFcWQrdW9CeGIwZTF1cGJMcmhMdGl0?=
 =?utf-8?B?b282cWkxelRZRjNtOWUzaVdpTVZvVnhtNHpWQVNMYVhRY0g1T1lvQ0Y1d3BM?=
 =?utf-8?B?V2pDbUJaSnNheCtzUmVsQUFVYUNFWkYwNGt4Q0JEWm9SVXF6WE5qVUFjcm16?=
 =?utf-8?B?cXlYQ0VTZTc2R29GbGVHeVQ3U0lEWGx5SXA0LytvZkZLOEkyQlhvV2R2MHhB?=
 =?utf-8?B?S2ZUamV5R0lKK2QvYnhIZVZ5UndmZGxmSUxVRFI5NmFFR2QrclN5R2hIaXZL?=
 =?utf-8?B?YzZXelJHM2UwaFY0ZldNYVBndnRYcS9YbVdBa1J6RnJsVXVRNnp4REM5dlVP?=
 =?utf-8?B?TE9lZ1VtL1piY0dsdnYwaTdCbnllWnNYUmhWN2U0Smc4aktMVTdOcWJWajZ4?=
 =?utf-8?B?N2FxOFh3a3psUEdNNXpWcUFCdE1ub0Q3dzVnVld3OG83dFBuOUpjVEhudUht?=
 =?utf-8?B?UmhacHord1RmQVBraFU5SisrYnJVUUhyTEQ3Z3JFYW1qbzlpN21HbytMMkxY?=
 =?utf-8?Q?sbH5jC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MU5QZU1wMFZ5dVZGWjRQTzViMnNFRHhDTnBiSERrRlVQR1hHU1UwSDR5Z3d4?=
 =?utf-8?B?d2FFWUcwMnFwZnZ0Y2FvSmU2dFhoRy9hRzJ6S2JTVENLWlBPajZoQmRFL1pv?=
 =?utf-8?B?RmRDY3NWZ200RGU5U2dnM0QxZmF3amtrWlBzOFJiN2FSNUxReFhXQzlpUTFU?=
 =?utf-8?B?KzAzbGNobWh4bTU5WDlXeWpUY2JleDdKYnVzSUp6enAzYSt0aFN1ZnhyMVlL?=
 =?utf-8?B?cm1xTmp0QjVoNTBZNzAvVjlLZkZxZm80TDNMWHdOcXR0cGlxQVd0NllYTU9Z?=
 =?utf-8?B?bGsrSjZiREJnNG1hZ1FqczR4VHNkTUcvaUNYZVFlMXJTdGplWXFXV0Zpempj?=
 =?utf-8?B?ZXpSNXlLUkxsQXNNZWlENTRiZFdqaDU4SG8ySi8zN1ZPN1RwTy83b2NpL2hK?=
 =?utf-8?B?MjM1NTdvK3dEaU4vWXZyL3hCazZaeExnenN5bFdLSUpHc0lGTFowdVprRFZW?=
 =?utf-8?B?WXI4MHJHaCtGampTcmVjVmFiY2lSUEhBaDBEWmVOWks3L1pud043RHB0RlA1?=
 =?utf-8?B?SnVhWFh5b3l2Ris3NXlaTkZXTXVodU1NVlZ5dHJDRUZWWHFWenlQSWZwL1pU?=
 =?utf-8?B?bmkyTEZPbEJ3cnVSWWtnM3VyOGk2ZzUvUkVXY0U3N3NTTFArNGNoT2I3OUNW?=
 =?utf-8?B?bnZueDBMajJVNkJmN2V3aVRZSmNIK0I5N1dWZWdCZEkzR2NsZE0yZUJCREdG?=
 =?utf-8?B?NFNBUXZyZFJxMzZlZzZlZXFHajdLdUlubmg0VHBJbWpVeXBCWmYwUEpRZGQ2?=
 =?utf-8?B?RmVsaGY4WjZDRktZRHBZbWl5clh6RVplSVVyejZzVkpFUHc1a29jUjU0RUNs?=
 =?utf-8?B?Zk1iYmUzbW53bDFhMVk1WGdFWXVBMDQxRWJMdU9PK3c3bStkSk45a1Z2T21F?=
 =?utf-8?B?U3lkR1gwWTNtcHZTenlYa003Y0dRN2RkeW1xUmV3d1BtQXNOTFllTW1tQUs0?=
 =?utf-8?B?NFVCV29QNjZIYWVxaTZDUHZOaGtPY0p2SDlNVktQOGRWNkQ5SmZGcWdGU3pT?=
 =?utf-8?B?UmZPRHd6RldXWk1MRUliOGRsTWg0dmVFN0V6YTkzSUR3d3dMampmQXBqSzNV?=
 =?utf-8?B?RjVxb25aNjV5bUFzeWF6SHZPMWFISEdaVzlPOU9QVEQ4TG16MVJHTDIwa1NR?=
 =?utf-8?B?aE1lRlBzMzE0d2l4MlYxVWNvZEV3K0pkaVorQURzOTdwM2tuS21xOG1JOGRB?=
 =?utf-8?B?ZDNOWTlZVnJ4YU9SMXdnR3JWU2hmSGR3VnUrVGhNZGJydzA4RUVPQVAzZkJH?=
 =?utf-8?B?Q3pnWUF0UVZINFl3eWt4TW1mU0JORXNkb2ZmV1BMQU5DUTFqSHZYam5FNXlB?=
 =?utf-8?B?eHZIYWUvQnJ4UVY3K3NHdnd1T29TVzFPei8wcC9oc2Jnb2Rab0tnWnVsbjNs?=
 =?utf-8?B?RUZwRzZmV2dabmNIU3RXZ2tRWjNWWlovN25KdjNWNXJiekdwa2hjUVdFSlhT?=
 =?utf-8?B?ZUJFeEVOb3R2a2hVQitvUjF3Ym5rWjRzeVNueEhlN3JmMFREeUZreTI5TVBM?=
 =?utf-8?B?bW9uVmdydW5Cb3UvQW1XR0FWN2FmVHVMNTNuQ1EvSm9HNFlPSnZSbmlqR0J0?=
 =?utf-8?B?ZHBTL2NUbjRTdW9uVnpnSUlZSFhKMDRyaTdkdnNtS0pMQlBkdzRKOThXNjF1?=
 =?utf-8?B?UVE1V1pSQUwyejF4KytibzdTMjJvK2JvQThYUXVpOTJKNGNWU09aaStNNDJk?=
 =?utf-8?B?VkdFcWdtUlAvdHJ0VCtrWjBUNFFKd3RiVjZaTlFZQloxbHNFdUtkM1dIb3ZQ?=
 =?utf-8?B?YkZPZXAxT0ZKRUJ4ZXhCdG5CZ1BpQ2dlcWpKdmtUNHVoUzRaTm5lbGNVK1l4?=
 =?utf-8?B?b1lTR3RJTjdzbmhDUWJ6Rm56cmttdHdBSzFuL0Mrb2hLbFZ2OXdma29tNDhR?=
 =?utf-8?B?cWRWZ21GVDdJYURUV2R4QnNIK1hpMHgxa1hsMzQ0L24rekc1QTRscURsdSti?=
 =?utf-8?B?L2ljc2ViQk5kb1RCUWZBbjJmbE44SlhpYXk4Wjgvb2RrWEovTzRNVU5tVVJH?=
 =?utf-8?B?allpbjQ2OTk1UWxJWThrOEdGTzYweFhRRmRPUE9nbVA1NDNDWVRQMWpZS2J1?=
 =?utf-8?B?bFE5dlAwa3ZrSnBNVlJyc0tPdG44RUFHNVN3ZExUZ2VteVJiQWlXQ201cmsx?=
 =?utf-8?B?bUdLYkdkNkVGL2dDMlNJeEl4Vm1OWnNJeHZISlpQdnlzTmM5KzZlaHU5SDM1?=
 =?utf-8?B?S0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1af2bb3-07ae-446b-8306-08de1790c243
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2025 08:46:03.5011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9w+viIYmxejElvZ+Sa96/9ljtgs4sYesCp2fc/JmDTTf4CrPu8MAGHm/stVvfFtIHji/B2vUIDDdYYT6+UTA0X3I4kQiENePfIpunfiD+mI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8063
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761813972; x=1793349972;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xSoGjt8veviIZzv9aZg61Y2aeSV27Aro/OEROaMuJYI=;
 b=CEI8E2/0SC+WBoIesQ4Xpy/jDp+7e7R02yYgIi0nwGDqSIf/M8HffxNB
 xz7zaVnk5X/aOnt2sSOQS9UuVukaXZjqMRLuz9/+8v2u5k84yh6jhnbEy
 dC/Dtm4rEvgIym55bydOBSJQWN+co57SWFDIGcIFAHEH5D1PwkwcjG1dp
 RYz8nS3GGXgXRj0Ab+N9d+KLkoHmde2c203JInh7GwYyfO7ozTvEJuj8X
 y+SLYPmEWYzAUlSRP90LRMT59ObPJND0QophmiKdX5VNdUQr7/vxGrtH5
 hswo7ql5e6L0ATifdaP/pHMGsggXYZ8EnBfCjdaW5KJ2AmlqjByYJPrwV
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CEI8E2/0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: implement configurable
 header split for regular Rx
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQWxl
eGFuZGVyIExvYmFraW4NCj4gU2VudDogTW9uZGF5LCBPY3RvYmVyIDYsIDIwMjUgNjoyMSBQTQ0K
PiBUbzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IExvYmFraW4sIEFs
ZWtzYW5kZXIgPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+OyBOZ3V5ZW4sDQo+IEFudGhv
bnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+
IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgQW5kcmV3IEx1bm4gPGFuZHJldytuZXRk
ZXZAbHVubi5jaD47DQo+IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEVy
aWMgRHVtYXpldA0KPiA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IEpha3ViIEtpY2luc2tpIDxrdWJh
QGtlcm5lbC5vcmc+OyBQYW9sbyBBYmVuaQ0KPiA8cGFiZW5pQHJlZGhhdC5jb20+OyBTaW1vbiBI
b3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+OyBOWE5FIENOU0UgT1NEVA0KPiBJVFAgVXBzdHJlYW1p
bmcgPG54bmUuY25zZS5vc2R0Lml0cC51cHN0cmVhbWluZ0BpbnRlbC5jb20+Ow0KPiBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnDQo+IFN1YmplY3Q6
IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dF0gaWNlOiBpbXBsZW1lbnQNCj4gY29u
ZmlndXJhYmxlIGhlYWRlciBzcGxpdCBmb3IgcmVndWxhciBSeA0KPiANCj4gQWRkIHNlY29uZCBw
YWdlX3Bvb2wgZm9yIGhlYWRlciBidWZmZXJzIHRvIGVhY2ggUnggcXVldWUgYW5kIGFiaWxpdHkN
Cj4gdG8gdG9nZ2xlIHRoZSBoZWFkZXIgc3BsaXQgb24vb2ZmIHVzaW5nIEV0aHRvb2wgKGRlZmF1
bHQgdG8gb2ZmIHRvDQo+IG1hdGNoIHRoZSBjdXJyZW50IGJlaGF2aW91cikuDQo+IFVubGlrZSBp
ZHBmLCBhbGwgSFcgYmFja2VkIHVwIGJ5IGljZSBkb2Vzbid0IHJlcXVpcmUgYW55IFcvQXMgYW5k
DQo+IGNvcnJlY3RseSBzcGxpdHMgYWxsIHR5cGVzIG9mIHBhY2tldHMgYXMgY29uZmlndXJlZDog
YWZ0ZXIgTDQgaGVhZGVycw0KPiBmb3IgVENQL1VEUC9TQ1RQLCBhZnRlciBMMyBoZWFkZXJzIGZv
ciBvdGhlciBJUHY0L0lQdjYgZnJhbWVzLCBhZnRlcg0KPiB0aGUgRXRoZXJuZXQgaGVhZGVyIG90
aGVyd2lzZSAoaW4gY2FzZSBvZiB0dW5uZWxpbmcsIHNhbWUgYXMgYWJvdmUsDQo+IGJ1dCBhZnRl
ciBpbm5lcm1vc3QgaGVhZGVycykuDQo+IFRoaXMgZG9lc24ndCBhZmZlY3QgdGhlIFhTayBwYXRo
IGFzIHRoZXJlIGFyZSBubyBiZW5lZml0cyBvZiBoYXZpbmcgaXQNCj4gdGhlcmUuDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgTG9iYWtpbiA8YWxla3NhbmRlci5sb2Jha2luQGludGVs
LmNvbT4NCj4gLS0tDQo+IEFwcGxpZXMgb24gdG9wIG9mIFRvbnkncyBuZXh0LXF1ZXVlLCBkZXBl
bmRzIG9uIE1pY2hhxYIncyBQYWdlIFBvb2wNCj4gY29udmVyc2lvbiBzZXJpZXMuDQo+IA0KPiBT
ZW5kaW5nIGZvciByZXZpZXcgYW5kIHZhbGlkYXRpb24gcHVycG9zZXMuDQo+IA0KPiBUZXN0aW5n
IGhpbnRzOiB0cmFmZmljIHRlc3Rpbmcgd2l0aCBhbmQgd2l0aG91dCBoZWFkZXIgc3BsaXQgZW5h
YmxlZC4NCj4gVGhlIGhlYWRlciBzcGxpdCBjYW4gYmUgdHVybmVkIG9uL29mZiB1c2luZyBFdGh0
b29sOg0KPiANCj4gc3VkbyBldGh0b29sIC1HIDxpZmFjZT4gdGNwLWRhdGEtc3BsaXQgb24gKG9y
IG9mZikNCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlLmggICAg
ICAgICAgfCAgMSArDQo+ICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbGFuX3R4X3J4
LmggICAgfCAgMyArDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cngu
aCAgICAgfCAgNyArKw0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9iYXNl
LmMgICAgIHwgODkgKysrKysrKysrKysrKysrLS0tDQo+IC0NCj4gIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jICB8IDE1ICsrKy0NCj4gIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jICAgICB8IDg5ICsrKysrKysrKysrKysrKy0tLQ0K
PiAtDQo+ICA2IGZpbGVzIGNoYW5nZWQsIDE2OCBpbnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
LmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlLmgNCj4gaW5kZXggZDQ2
ZmY5Yzk3Yzg2Li5iZWYzZDZkOGQ0OTEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2UuaA0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlLmgNCj4gQEAgLTM1MSw2ICszNTEsNyBAQCBzdHJ1Y3QgaWNlX3ZzaSB7DQo+ICAJdTE2
IG51bV9xX3ZlY3RvcnM7DQo+ICAJLyogdGVsbCBpZiBvbmx5IGR5bmFtaWMgaXJxIGFsbG9jYXRp
b24gaXMgYWxsb3dlZCAqLw0KPiAgCWJvb2wgaXJxX2R5bl9hbGxvYzsNCj4gKwlib29sIGhzcGxp
dDoxOw0KDQouLi4NCg0KPiAtLQ0KPiAyLjUxLjANCg0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBM
b2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
