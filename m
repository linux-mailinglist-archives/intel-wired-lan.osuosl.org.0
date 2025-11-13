Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1A7C56351
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Nov 2025 09:18:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3993B40C66;
	Thu, 13 Nov 2025 08:18:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3wi8Qna9Ryfm; Thu, 13 Nov 2025 08:18:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81E7340C6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763021922;
	bh=K8BC6DnBFXKVuGXw8/Y6RCd5C/dmYEJXG6xEnJQMUeI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jdURsear8nnHXC1G9keytVkxLoV5G3sNXYENUlVuPU5nWZKhuwK7QZqTWcv4cnVqj
	 l9A04FZ1aFfs6r/OppaevAliimpHcv+kMAOVnJksV0FLPHSN5JGDJ8M3hiaLh+yeL1
	 BZT3IbbhxDAr1x5To1iaBSP8kwJ9sqKFtkXSngOIY7zYuKTS2RQRbWHuggwbinOPYH
	 KPauXcHovg3eU+aAsxl4vMONOaYAX3eBCyaXNxyf9ls0m4Gc/f30V3ba+6jeDndSSL
	 hMX+guZXpNgeCqsy0qT6xr9dKhb9A+aJVVSCNSajZqCfgRuAv60V1ZfkSp6laMFruy
	 OkcclhtOkgVMw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81E7340C6A;
	Thu, 13 Nov 2025 08:18:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 61912158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5E5474023E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:18:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SqQ77ZGB3qYH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Nov 2025 08:18:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 935644004E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 935644004E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 935644004E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Nov 2025 08:18:39 +0000 (UTC)
X-CSE-ConnectionGUID: VrFUo9GSRM6LK6kB0xefLQ==
X-CSE-MsgGUID: lFwzwVEITQG35S+q+vL0Vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="64300369"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="64300369"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 00:18:39 -0800
X-CSE-ConnectionGUID: 8DE0ODF1S3u7Epxwm9hQag==
X-CSE-MsgGUID: 2l7GTc+9QP2lOd4Aj4OOrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="189233568"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 00:18:38 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 00:18:38 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 13 Nov 2025 00:18:38 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.57)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 00:18:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I5eVKnSHnMpRr1BKdZo3Qa2ETtlZJM5gDnrUlr07g8NiDxVrZ161n15K8ftrAKX55EWAV3ANTjAJVde+ItuJ56omqExb0VfZhqYAb75ODQDW1U6FtdT4FDe6v/AjYCrm3ua3whQHHwIw1Mm6iuhzLxYn3ONNFb3TojFA7Y46wDFObE4se/SrmPG04DVcruYL23c3aJ+oGjFTiDCUew9WSYSGwTyFMiS2YfyB7zXP+PFO4/MLf/+zOYE08eLgmfr5btA0PCW2bmnO2dxtpcZ/j6TQPwHfp470GxdZccn1yuRo8/VUoDwvtkjZqzUuxFBU1oY630u+L4YwUME9DEOT7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K8BC6DnBFXKVuGXw8/Y6RCd5C/dmYEJXG6xEnJQMUeI=;
 b=xghh381wEdEQAZ1uB4vTaVDDS3+RgnILcdKa7Ev6GT1Y4nIZEDh1GejrgLigf7y+yYjJ27krB2U4jY04KbOJAQtx1v0+u3LTayEUH8G2FockqsRRS7TInoap8YpAIc0QsWazFQhk42ln+ONx26jPhhuYOXHi7WiE1vNgWBQkCC7zjE+2oCK57sLWSQ+ejxh6hsngZLKR1iazuAClCwjIzZ885DdJ8St69c6Ifg3IbIvdIUeYEo0w/K6Tddc/p0tU9/q+AiMAxRlAarStDUmNhoCp+KSNW3iIp+DrsJg5i70xYDL97D+6bfcN1szTDcatbbgVaFD1lnFjrv/Zhslkmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA0PR11MB7401.namprd11.prod.outlook.com (2603:10b6:208:433::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Thu, 13 Nov
 2025 08:18:30 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9320.013; Thu, 13 Nov 2025
 08:18:30 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "gregory.herrero@oracle.com" <gregory.herrero@oracle.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v2 1/1] i40e: validate ring_len parameter against
 hardware-specific values.
Thread-Index: AQHcVHRVoBkcqh4zVUeRTQWSYPM+XbTwQjtA
Date: Thu, 13 Nov 2025 08:18:30 +0000
Message-ID: <IA3PR11MB8986755762618F3EE7AF309EE5CDA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251113080459.2290580-1-gregory.herrero@oracle.com>
 <20251113080459.2290580-2-gregory.herrero@oracle.com>
In-Reply-To: <20251113080459.2290580-2-gregory.herrero@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA0PR11MB7401:EE_
x-ms-office365-filtering-correlation-id: 224b6190-97ce-4c50-d2c3-08de228d3af4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?NDc5WlpJZEJnamcxdUxPOFdxS2FzUkdENGpqOEgyVUtNbFl6T0FZL3pVRE83?=
 =?utf-8?B?am5hNDAxZ1BVR3lLUjJsUXpVSElNWVFZb0JLZjhPeHlkYmV6b25RS1ozOElx?=
 =?utf-8?B?UXRKbExsM3IyRHNLYVU3eGc1dmFaMEZDSWlsUWRRWExMeFlpaUJtQ3BUSFFz?=
 =?utf-8?B?b0NqQVRyQnpLaFlPeXRWZENGTEpiWnYxV0ZZc3lhalptYjhvQ0lvNW5TaGg5?=
 =?utf-8?B?ZzdMSkk1d1BNMXUvVW5MOTVvN2pNMXVkbk8zeFNBK05lUU9yT1pveXBFeUNj?=
 =?utf-8?B?Vk9kY0ZMWXVsaVpLYm9WOGliQ0N5UnNMRGtCN2pJdkUvODVLWTJCZzhoNVZG?=
 =?utf-8?B?VGwwQ1BVdm1XREJuT0xYZVRXdzU0T3VlK0hnaVd5T2NJOXk0K0dpdkQvNjNV?=
 =?utf-8?B?b3kxSnM0ZXo4QndYSHhrZzhlc1lLU3orQTEzMm95S3pkTkhCSm8zbVJrZDBP?=
 =?utf-8?B?bUtOalYzWlU0Q1B5ZjUrSE1rME1VQjJPeFJ5eWg0VllaRWNmZnBjeEhTS2NT?=
 =?utf-8?B?eklyUlBQa1diTmtEQnBaUHY2OHAyNE5ybUwyREs1alpKenJMWXNTK3NHcUQv?=
 =?utf-8?B?cXZCbnhnNzJUNHBnOC9YdFNJUHo1Nmg2NTFYc21TajI2dnZkUkJGbWQ4by9p?=
 =?utf-8?B?anB5cFNLOGFWOHNlSjJPdEN5WlZFZnNRYzh2MkNvbWNiV3k4Vys4a2VZRm45?=
 =?utf-8?B?eC9hb1ZrRU0rbWR3VWd5dTZLbU1RZE1yZ2pHa2ttdEtDaU5GaTFERGF0ZEM2?=
 =?utf-8?B?ZVFObldnbFdhRmF2THY3cmYyUW9lc1pWM0FhMGhiSHVqWEV4ZzBlT0F5dzA4?=
 =?utf-8?B?V3VYVnVrL1J4WnFONnNRWUFvcmdicUN4c2xBYlZFaEFPZ0w2ZHlabENuTEow?=
 =?utf-8?B?VE4wV1JQM2tXMmJUK2dlSnNvUEdYb1p0eXlTeGV5aVI1OWVMd0owN0xnQU05?=
 =?utf-8?B?emNwMUtaREhzSkZOT25IS0FLS2U2UnYvSHFMRG9rK2RmK2s2a21XZlI4bVJG?=
 =?utf-8?B?Y0JPaEhoSVZlSUl4SVNDMk56c29EYjhqeUZuMGFVdCtrYlNNOXRnTk10ci8z?=
 =?utf-8?B?dnVTQnBsR3dVYnFGUWI1ZGVVaXg1WGwvUmUzRzNJVElzenp3YjhZL1FKVXE0?=
 =?utf-8?B?VWlnMTBaSDdSbkZITGEyY3FiY0M5YjVaMm1NNit1dWx2ODdxZlVrajNoSEFm?=
 =?utf-8?B?LzJtVXdSakxqZnN1Ujd1djVXL1RBSVRKRGhxRk14NlJmTEtVMG4wY2dRN1do?=
 =?utf-8?B?Ky8rUXh1azBrUGFrWTU2bkRocVRIT1Qzb1BVa3BVSmdnMURsQ2ZaKzJ3K3dv?=
 =?utf-8?B?NU4rb2grZjljcndzNldXRXpvR3UvVGxJSXYvSngvTXNyZlZsckpTaEhlZnNR?=
 =?utf-8?B?dVBzaWpJZVY1TW1WanNoSHQ5UFB1TGduemVzSEgzV0xVTHlXMXY5RSs2akds?=
 =?utf-8?B?L1prdXF5MTNaVmNSUW1KcmlraUJoUFA3RWxnbTVqMEwzSndMK2lPWnlaa1Bz?=
 =?utf-8?B?Y05aQzFFRkNZNE5TaEZjTElnUExmOEthSHNRVzV0R1IrOUdIMVMzR2FyY0JY?=
 =?utf-8?B?Z092NzMxTytEMXZCZ3J5NExlbGp6RlE2aEVRa2tpUHZjNnBGQWc0K3dtZ1Nx?=
 =?utf-8?B?b2hIMjExalk4d1IwZmxvTVVwR0hCanA0a1VRT2U0T2NlcFA1Tm9vdmp4OGdi?=
 =?utf-8?B?RE9xR2JBUkZVNXJaOGlQdHpUK0d0TzBXazdEeUg2dkVZOC84ZktPa01abTlC?=
 =?utf-8?B?N0kzYkpYellXNTg5aU1nOHU3OEpqMXJRWlM1aFlNMDh1d0pBZndsdXphcHd5?=
 =?utf-8?B?bHA3U0pEKzR3d2JzU2lKcjgyQWNKS1IxWVRSSXFVbit2MzZXTmhRa0ZGSllB?=
 =?utf-8?B?ZG1aNlN5Y2svYlZiYnZYQTZVV09mdTd6UlptTVBteXRVUk84Yk9zc2RMZ0t6?=
 =?utf-8?B?V3RFb2M2bHJUcEZIQnRSVlV2ZXNqWi9ZaVY3NU5NdkZvL3MyZkdwNGk1V2Fz?=
 =?utf-8?B?UXowSjZ5ekthVDJmZWovZEl0a0JUSXFJMldGTSs5a0lvQUFmTzYrWktIcmpS?=
 =?utf-8?B?RlhMOHpCL3FtL3dHd3piOGVXL1NtZVFJaUtLZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bU14TUNkNkMyWG1ZemZQZEhtM2YvbFRQeVhaT0IxVUJ1d1FqVS9MYjVoUWlV?=
 =?utf-8?B?bjFtQnJWNEVzd0ZKcTNEWEliUGdRaDluN0V6MUgxdEdrcURvNWd3OFJBUFBl?=
 =?utf-8?B?bW1KdTNhczJRbzEvUkJJT0lpM1pGVThCQWp4RWdzWGNCdkl5UCtHS3pwdUN2?=
 =?utf-8?B?Q1dKZnYzcEIyZzkvSEN1eFA0RTFFV3VPSnpQbEJUNmlCcTI4SFkwRnZHcHVq?=
 =?utf-8?B?OGZsOThlZVhISmE3Z2pHbzhwZTQxWjlnRzJRTWxBeUZuNUFiVmZGNjV2OWIy?=
 =?utf-8?B?eENlVDJMeUpSSXhtZmoxUTBJYytZeU9OMkl5UWdqYzBvNnE1a1dXQnNEU1Ny?=
 =?utf-8?B?TlM4V3ptZFRRY1hBWjNORGFrS1ZVSXhXUm5OaXlGcVV5blRpREo5bDhKaTVC?=
 =?utf-8?B?Y1I0T3dCMkFGWVZMUXp2ajlmK1hrRTJIaitna2dxbmpORnZEQisrYUZLSitE?=
 =?utf-8?B?L1ZMT1JZTFJRWkRZUXVyK2xYZXpEY2FCa1FpYjVDUDZVc2xEYnZ2TzI0T3dS?=
 =?utf-8?B?VjBraWd0YkhrWFpKQVF0QWhleGN0c3hqNFlGazhZRllqZVc2TmdkTkZMNkl5?=
 =?utf-8?B?RVlxb0tpUzcySzM1VTJLWE5UQzM4bXJ5Sk5Tb1d3VjN2R2VMOGh6QWlXVXRa?=
 =?utf-8?B?M3ljSkJrNlBJbG1SQlFMUjdQSXpGVnJ3eE81UHRoT2hEZnFtWmZXUVN4cGRo?=
 =?utf-8?B?cXBNb2hISHJ1N2FFOThRVEdNUDh5eERMNEpVRWNmcnJDTXQvSU1DbkNBRzg3?=
 =?utf-8?B?ZzJQUmZOTVB0WGNURWFRTWc4SjluaHh2cHVoSHlkTXJZVXloeG96TjRlN1lO?=
 =?utf-8?B?eWdWcVlrekJlMk1VNEhpVVFFZVRIaERSbWViWStRQktzWkxObSs4ZnllT0NY?=
 =?utf-8?B?bVBpQ3BjUWtkNGVES2VXaW9sNDJEUnd6YTZpM1BKekkzUld0Tkk3a2tXMGlx?=
 =?utf-8?B?K2E1dTRDVWlVRmdhZTc1UXl2TlM2QVlLeVdHbHYzL1UyaU1qUG1tWld5N2cz?=
 =?utf-8?B?QTdnZElGdTJwSlVWKzNueG9xTitHZDFmM3ZIc3hGWTRsVEZTbWJOTzV6YXJk?=
 =?utf-8?B?aWlrelpxamRJU0RBMGpqRVlEeWNENHoxNHkvSHNHUlZHeGVXQWU4ak9oNWlW?=
 =?utf-8?B?RWduVGlsR0daYTFWVThmMHJDVWJWL2pFQllsajdHZFNtZno5b1ZHVTE2WlRn?=
 =?utf-8?B?eGUzYkJyMjVYbkxjKzhjd3U4Zk5GeUFJSzhTVmt0cnd2RTJickJOYUdxeFJw?=
 =?utf-8?B?NWdFT3BIdWdrbHR3K21uVDZqdHNqUDZVcmkrSkRYRlQzRmVLdGw1WUdHMUxJ?=
 =?utf-8?B?OThERGpFWm05V3cwa2tYYmo1ZnVOKy9CS2xBa0VTQWV6aFhuR0RndFd0N1NB?=
 =?utf-8?B?aU1EU0ovWnAzbzFFbUc2Y2w3M2tDemVjbFdObW1IWTFsYmpVN29FT3VQWGhX?=
 =?utf-8?B?WkRxL3hLK2hmMFFWaFZwR0VsZGNZZ2NTNytrQWNpekJBckttc0lsakx4bTJk?=
 =?utf-8?B?U2xJWHRJbUttYU9md2ZVR1V0cVQxUXd2SlRVMFMweWNrdkd2Si92YW56c0c2?=
 =?utf-8?B?QkJ1ZnovK2toTHdIelIxeERQT1RpMHNQZnloNkZoSU9WTExSblBaQVJkSita?=
 =?utf-8?B?NVBZVm9mb1IzYnFTVE1OenZEdWwrazdqcFJxQ1NGalAyb0RzUmxNb1B2aXBP?=
 =?utf-8?B?a3Joa2FEdHBxQ05rdzAwRXlxa1F3UVcveW1kaG9aN09hODFpYlp2NGZZbEZ0?=
 =?utf-8?B?NmgzTFNydjdiMjhTcndDMjhITGdDcUZBR1RJY2dsYkIzV0F3UVFyOGhURkt1?=
 =?utf-8?B?M1R6UVdJd0NWc1FPQUpiZ0FobE1FZjB6ckxCV3o5dUZCcEhzSG43UWNIUkQ2?=
 =?utf-8?B?VVJQWnVYWGpnWTRiK1BvK0ljS1MycVdlcjNWdXJabDdXK3FSeHFYMERjZUIw?=
 =?utf-8?B?dkg4cmRUSWlUOElzL1NvRSt4WlpPc2VqOERTclEzWk9CMlhJVW1IVGR6YXpP?=
 =?utf-8?B?bnRIVXJaZlk5aW9WUG1JLzR3L09sZnJ2dEpyMUVYRXorNXlZY2hoQW5vUlJx?=
 =?utf-8?B?ajZlVUNtbnZrSndyWSsxY0lUeUpqbURMZkkvcndUSUg0bThlVGsrZnVHVDRn?=
 =?utf-8?B?YmloVWZSMVBtbEVPd2RyVEZkZmNGais3aU9PRFFLWFM0SVJzNFdhSHlHbkRx?=
 =?utf-8?B?a2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 224b6190-97ce-4c50-d2c3-08de228d3af4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2025 08:18:30.7969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: snSIW/2Q8kHJd/c6yLZ4DJyMPSsMOrgQRkutviwQ1oWctrfM70byJa/LnKGF+bZSTCr+NOpbcP5KaxIq5e9HelFvBS4LNRwZAlxCfKwaLTk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7401
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763021919; x=1794557919;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K8BC6DnBFXKVuGXw8/Y6RCd5C/dmYEJXG6xEnJQMUeI=;
 b=HiM1siaMp0l0UNyYPcwbnhzDnq7jFeKG4LIjmr00opGH9yksyFSSTKAh
 5HPelxpAxyHU1dZgXmtF0U1pwgjmGbzkgzzfk1sDPXVFshaffRp5z/RXo
 FU/tvsvq0oKHziQw2FWvZkoeOgOr9INKWZYhriDtvcdzIxqwEJk1PeBok
 a59skix6fgi+YypNkoWxZMhaaGe6IklRPbRm8/mmmd6zQGB7IMUgqTr12
 Y2j0zCK6mPT0Q+WHQPXo7enaKlD4ZBGOIKkyh0pnaXLkQnIW1PjKOf9NT
 xLj9NHdhtfdkyR+QT/XtaC/KGKVms+zYa6oVr5sGw8bLwiQJBeVoHPAaW
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HiM1siaM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] i40e: validate ring_len
 parameter against hardware-specific values.
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogZ3JlZ29yeS5oZXJyZXJv
QG9yYWNsZS5jb20gPGdyZWdvcnkuaGVycmVyb0BvcmFjbGUuY29tPg0KPiBTZW50OiBUaHVyc2Rh
eSwgTm92ZW1iZXIgMTMsIDIwMjUgOTowNSBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIg
PGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgTmd1eWVuLA0KPiBBbnRob255IEwgPGFu
dGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15
c2xhdy5raXRzemVsQGludGVsLmNvbT47IGFuZHJldytuZXRkZXZAbHVubi5jaDsNCj4gZGF2ZW1A
ZGF2ZW1sb2Z0Lm5ldDsgZWR1bWF6ZXRAZ29vZ2xlLmNvbTsga3ViYUBrZXJuZWwub3JnOw0KPiBw
YWJlbmlAcmVkaGF0LmNvbQ0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7
IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3Jn
OyBHcmVnb3J5IEhlcnJlcm8gPGdyZWdvcnkuaGVycmVyb0BvcmFjbGUuY29tPg0KPiBTdWJqZWN0
OiBbUEFUQ0ggdjIgMS8xXSBpNDBlOiB2YWxpZGF0ZSByaW5nX2xlbiBwYXJhbWV0ZXIgYWdhaW5z
dA0KPiBoYXJkd2FyZS1zcGVjaWZpYyB2YWx1ZXMuDQo+IA0KUGxlYXNlIGRyb3AgdGhlIHRyYWls
aW5nIHBlcmlvZCBmcm9tIHRoZSBzdWJqZWN0Lg0KDQo+IEZyb206IEdyZWdvcnkgSGVycmVybyA8
Z3JlZ29yeS5oZXJyZXJvQG9yYWNsZS5jb20+DQo+IA0KPiBUaGUgbWF4aW11bSBudW1iZXIgb2Yg
ZGVzY3JpcHRvcnMgc3VwcG9ydGVkIGJ5IHRoZSBoYXJkd2FyZSBpcw0KPiBoYXJkd2FyZSBkZXBl
bmRlbnQgYW5kIGNhbiBiZSByZXRyaWV2ZWQgdXNpbmcNCj4gaTQwZV9nZXRfbWF4X251bV9kZXNj
cmlwdG9ycygpLg0KPiBNb3ZlIHRoaXMgZnVuY3Rpb24gdG8gYSBzaGFyZWQgaGVhZGVyIGFuZCB1
c2UgaXQgd2hlbiBjaGVja2luZyBmb3INCj4gdmFsaWQgcmluZ19sZW4gcGFyYW1ldGVyIHJhdGhl
ciB0aGFuIHVzaW5nIGhhcmRjb2RlZCB2YWx1ZS4NCj4gQ2FzdCBpbmZvLT5yaW5nX2xlbiB0byB1
MzIgaW4gaTQwZV9jb25maWdfdnNpX3R4X3F1ZXVlKCkgYXMgaXQncyB1MTYNCj4gaW4gc3RydWN0
IHZpcnRjaG5sX3R4cV9pbmZvLg0KPiBBbHNvIGNhc3QgaXQgaW4gaTQwZV9jb25maWdfdnNpX3J4
X3F1ZXVlKCkgZXZlbiBpZiBpdCdzIHUzMiBpbg0KPiB2aXJ0Y2hubF9yeHFfaW5mbyB0byBlYXNl
IHN0YWJsZSBiYWNrcG9ydCBpbiBjYXNlIHRoaXMgY2hhbmdlZC4NCj4gDQo+IEJ5IGZpeGluZyBh
biBvdmVyLWFjY2VwdGFuY2UgaXNzdWUsIGJlaGF2aW9yIGNoYW5nZSBjb3VsZCBiZSBzZWVuDQo+
IHdoZXJlIHJpbmdfbGVuIHdvdWxkIG5vdyBiZSByZWplY3RlZCB3aGVyZWFzIGl0IHdhcyBub3Qg
YmVmb3JlLg0KPiANClBsZWFzZSBhZGQgYSBzaG9ydCDigJxUZXN0ZWQ64oCdIGV4cGxhbmF0aW9u
ICh3aGF0IGh3L2Zsb3dzLCBleHBlY3RlZC9hY3R1YWwgYmVmb3JlL2FmdGVyKS4NCg0KPiBGaXhl
czogNTVkMjI1NjcwZGVmICgiaTQwZTogYWRkIHZhbGlkYXRpb24gZm9yIHJpbmdfbGVuIHBhcmFt
IikNCj4gU2lnbmVkLW9mZi1ieTogR3JlZ29yeSBIZXJyZXJvIDxncmVnb3J5LmhlcnJlcm9Ab3Jh
Y2xlLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUu
aCAgICAgICAgICB8IDE3DQo+ICsrKysrKysrKysrKysrKysrDQo+ICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jICB8IDEyIC0tLS0tLS0tLS0tLQ0KPiAuLi4v
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV92aXJ0Y2hubF9wZi5jICB8ICA0ICsrLS0NCj4g
IDMgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgNCj4g
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaA0KPiBpbmRleCA4MDFhNTdh
OTI1ZGEuLmE5NTNjY2UwMDhmNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlLmgNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlLmgNCj4gQEAgLTE0MTgsNCArMTQxOCwyMSBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBp
NDBlX3ZlYg0KPiAqaTQwZV9wZl9nZXRfbWFpbl92ZWIoc3RydWN0IGk0MGVfcGYgKnBmKQ0KPiAg
CXJldHVybiAocGYtPmxhbl92ZWIgIT0gSTQwRV9OT19WRUIpID8gcGYtPnZlYltwZi0+bGFuX3Zl
Yl0gOg0KPiBOVUxMOyAgfQ0KPiANCj4gKy8qKg0KPiArICogaTQwZV9nZXRfbWF4X251bV9kZXNj
cmlwdG9ycyAtIGdldCBtYXhpbXVtIG51bWJlciBvZiBkZXNjcmlwdG9ycw0KPiBmb3IgdGhpcyBo
YXJkd2FyZS4NCj4gKyAqIEBwZjogcG9pbnRlciB0byBhIFBGDQo+ICsgKg0KPiArICogUmV0dXJu
OiB1MzIgdmFsdWUgY29ycmVzcG9uZGluZyB0byB0aGUgbWF4aW11bSBudW1iZXIgb2YNCj4gZGVz
Y3JpcHRvcnMuDQo+ICsgKiovDQo+ICtzdGF0aWMgaW5saW5lIHUzMiBpNDBlX2dldF9tYXhfbnVt
X2Rlc2NyaXB0b3JzKGNvbnN0IHN0cnVjdCBpNDBlX3BmDQo+ICsqcGYpIHsNCj4gKwljb25zdCBz
dHJ1Y3QgaTQwZV9odyAqaHcgPSAmcGYtPmh3Ow0KPiArDQo+ICsJc3dpdGNoIChody0+bWFjLnR5
cGUpIHsNCj4gKwljYXNlIEk0MEVfTUFDX1hMNzEwOg0KPiArCQlyZXR1cm4gSTQwRV9NQVhfTlVN
X0RFU0NSSVBUT1JTX1hMNzEwOw0KPiArCWRlZmF1bHQ6DQo+ICsJCXJldHVybiBJNDBFX01BWF9O
VU1fREVTQ1JJUFRPUlM7DQo+ICsJfQ0KPiArfQ0KPiAgI2VuZGlmIC8qIF9JNDBFX0hfICovDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9v
bC5jDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYw0K
PiBpbmRleCA4NmM3MjU5NjYxN2EuLjYxYzM5ZTg4MWIwMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2V0aHRvb2wuYw0KPiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZXRodG9vbC5jDQo+IEBAIC0yMDEzLDE4ICsy
MDEzLDYgQEAgc3RhdGljIHZvaWQgaTQwZV9nZXRfZHJ2aW5mbyhzdHJ1Y3QgbmV0X2RldmljZQ0K
PiAqbmV0ZGV2LA0KPiAgCQlkcnZpbmZvLT5uX3ByaXZfZmxhZ3MgKz0gSTQwRV9HTF9QUklWX0ZM
QUdTX1NUUl9MRU47ICB9DQo+IA0KPiAtc3RhdGljIHUzMiBpNDBlX2dldF9tYXhfbnVtX2Rlc2Ny
aXB0b3JzKHN0cnVjdCBpNDBlX3BmICpwZikgLXsNCj4gLQlzdHJ1Y3QgaTQwZV9odyAqaHcgPSAm
cGYtPmh3Ow0KPiAtDQo+IC0Jc3dpdGNoIChody0+bWFjLnR5cGUpIHsNCj4gLQljYXNlIEk0MEVf
TUFDX1hMNzEwOg0KPiAtCQlyZXR1cm4gSTQwRV9NQVhfTlVNX0RFU0NSSVBUT1JTX1hMNzEwOw0K
PiAtCWRlZmF1bHQ6DQo+IC0JCXJldHVybiBJNDBFX01BWF9OVU1fREVTQ1JJUFRPUlM7DQo+IC0J
fQ0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgdm9pZCBpNDBlX2dldF9yaW5ncGFyYW0oc3RydWN0IG5l
dF9kZXZpY2UgKm5ldGRldiwNCj4gIAkJCSAgICAgICBzdHJ1Y3QgZXRodG9vbF9yaW5ncGFyYW0g
KnJpbmcsDQo+ICAJCQkgICAgICAgc3RydWN0IGtlcm5lbF9ldGh0b29sX3JpbmdwYXJhbQ0KPiAq
a2VybmVsX3JpbmcsIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfdmlydGNobmxfcGYuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV92aXJ0Y2hubF9wZi5jDQo+IGluZGV4IDA4MWE0NTI2YTJmMC4uNWUwNTgxNTkwNTdi
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdmly
dGNobmxfcGYuYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
dmlydGNobmxfcGYuYw0KPiBAQCAtNjU2LDcgKzY1Niw3IEBAIHN0YXRpYyBpbnQgaTQwZV9jb25m
aWdfdnNpX3R4X3F1ZXVlKHN0cnVjdCBpNDBlX3ZmDQo+ICp2ZiwgdTE2IHZzaV9pZCwNCj4gDQo+
ICAJLyogcmluZ19sZW4gaGFzIHRvIGJlIG11bHRpcGxlIG9mIDggKi8NCj4gIAlpZiAoIUlTX0FM
SUdORUQoaW5mby0+cmluZ19sZW4sIDgpIHx8DQo+IC0JICAgIGluZm8tPnJpbmdfbGVuID4gSTQw
RV9NQVhfTlVNX0RFU0NSSVBUT1JTX1hMNzEwKSB7DQo+ICsJICAgICh1MzIpaW5mby0+cmluZ19s
ZW4gPiBpNDBlX2dldF9tYXhfbnVtX2Rlc2NyaXB0b3JzKHBmKSkgew0KPiAgCQlyZXQgPSAtRUlO
VkFMOw0KPiAgCQlnb3RvIGVycm9yX2NvbnRleHQ7DQo+ICAJfQ0KPiBAQCAtNzI2LDcgKzcyNiw3
IEBAIHN0YXRpYyBpbnQgaTQwZV9jb25maWdfdnNpX3J4X3F1ZXVlKHN0cnVjdCBpNDBlX3ZmDQo+
ICp2ZiwgdTE2IHZzaV9pZCwNCj4gDQo+ICAJLyogcmluZ19sZW4gaGFzIHRvIGJlIG11bHRpcGxl
IG9mIDMyICovDQo+ICAJaWYgKCFJU19BTElHTkVEKGluZm8tPnJpbmdfbGVuLCAzMikgfHwNCj4g
LQkgICAgaW5mby0+cmluZ19sZW4gPiBJNDBFX01BWF9OVU1fREVTQ1JJUFRPUlNfWEw3MTApIHsN
Cj4gKwkgICAgKHUzMilpbmZvLT5yaW5nX2xlbiA+IGk0MGVfZ2V0X21heF9udW1fZGVzY3JpcHRv
cnMocGYpKSB7DQp2aXJ0Y2hubF9yeHFfaW5mby5yaW5nX2xlbiBpcyBhbHJlYWR5IHUzMiAoYXMg
bm90ZWQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlKS4NCkNhc3RpbmcgaXQgdG8gdTMyIGJlZm9yZSBj
b21wYXJpc29uIGlzIHJlZHVuZGFudCBhbmQgYWRkcyBjaHVybiB3aXRob3V0IHZhbHVlIGluIG1h
aW5saW5lLg0KVGhlICh1MzIpIGNhc3Qgb24gaW5mby0+cmluZ19sZW4gY2FuIGJlIGRyb3BwZWQg
aW4gbWFpbmxpbmU7IGlmIHlvdSBuZWVkIGl0IG9ubHkgZm9yIGEgc3RhYmxlIGJhY2twb3J0LCBj
b25zaWRlciBrZWVwaW5nIHRoZSBtYWlubGluZSBwYXRjaCBtaW5pbWFsIGFuZCBhZGRpbmcgdGhl
IGJhY2twb3J04oCRb25seSBodW5rIHdoZW4gc3VibWl0dGluZyB0byBzdGFibGUuDQoNCldpdGgg
dGhlIGJlc3QgcmVnYXJkcywNCkFsZXgNCg0KPiAgCQlyZXQgPSAtRUlOVkFMOw0KPiAgCQlnb3Rv
IGVycm9yX3BhcmFtOw0KPiAgCX0NCj4gLS0NCj4gMi41MS4wDQoNCg==
