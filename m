Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F674963DB4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 09:52:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB4C961112;
	Thu, 29 Aug 2024 07:52:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0z4gtSFWQanz; Thu, 29 Aug 2024 07:52:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 065AA61116
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724917956;
	bh=poriqBz/5NU84dHTrKYCZ6KuPef8D/a9Jd25495pe3I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QYG5DIu5fAn6i3erI0FMQ7xM4zDjt3v7SYpQNH8RFyFWXEzK4r64CJDyMFVIhsSTL
	 W2Xq5JeyJhrbQucrYJN5lpenhZJEoWZmqST3FhVVB6vnARy3bgbwt0y2DodVjLW2Qt
	 G/Ln8lTCMU9hMLgmEYwFs+4gLPLEEUdjHTeKUylLiadEQICvwpDSz6DpmQ6P0CPCb7
	 Gug6Y+cOtVZTfzwyhWr9MzHYiIcI3K0umIy6i4XXrpJh97zsgEkFE2IxVpMn7pLXXa
	 OQBL3iMv50nhw3ScCpNuDzp5BKo7wbliLR745ZBXqfS6+B1GbMxj58RaWTi1bVd9jm
	 56jSDfNM03qyA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 065AA61116;
	Thu, 29 Aug 2024 07:52:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F12F1BF422
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 07:52:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B13881E10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 07:52:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tbfwYHbdv1Fs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 07:52:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C880081BD9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C880081BD9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C880081BD9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 07:52:31 +0000 (UTC)
X-CSE-ConnectionGUID: aPqSLQi+QPutEOS2H/6Xmw==
X-CSE-MsgGUID: G4cc8HVsSMaw55mRPxQIng==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="23005143"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23005143"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 00:52:31 -0700
X-CSE-ConnectionGUID: VtbWgsmDTA++HBI9n6k54A==
X-CSE-MsgGUID: 59PcUTycRA6kO2xKvjDqUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="64180245"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 00:52:31 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 00:52:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 00:52:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 00:52:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pS3KORWhgEP9jy/A7ForcxjMVXi79wXQOwC4/LdudS5h+w5LPlamw0TMcDvQTlUsrlC+/v/AYy2r3f/z32T5un3b/Q08p9x90rpHR7+S85lEBQ9yH9sP+C+lFUsV7D7ZXkC7IZh1d9SV7B6pGlh2m85+ZUgK1NR02xOGuWeQRk67J+3Zsw6tA7FeokQq/Q0zLS0hpwRfegRaBGOHfLSVmvTu8/38mSS7dr7gd66EZf9qW6EYwHDYa5KcTAU/PqTnahqHei+Uxy9uF28kaYO+LVpOu6TvbFhMJYiMtrdNabcKL0O/udp+H/1Zd1r/PquGe4hUl5r7K/70uFhFEROiwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=poriqBz/5NU84dHTrKYCZ6KuPef8D/a9Jd25495pe3I=;
 b=QLNshsO3iEkVH6T8O3pXzDvCnh//F9k9Y/VoPgLAACPL9NfzjLrxtsvgxxDaSOYgkg/Hmy8X2u40xEUJ56JXEcTr+W4a+XApc/2NctyB8968uyT5OKtAAjtL/r5XFLaG8qsVZmajxqhhbIGOG6NHoHWrLmEk56guQv8SyFvmNmB227CUvAijoCmKR0MqnIlFBJUrbfMHBghV0IRAz2dCmuRGyTge5I4srVJjze6ig9QyQN3PPAMRQNSbgdR+tvEthR1tEcMoriuGSA/vCmkztYXbTZPiFWkqVyBqcZyLoaUYHGZ/eKLPyinOfAZ0QB1E/INmH2q1wzfjubh9PN0cQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Thu, 29 Aug
 2024 07:52:26 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%3]) with mapi id 15.20.7897.027; Thu, 29 Aug 2024
 07:52:25 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix accounting for
 filters shared by multiple VSIs
Thread-Index: AQHa42qXtnJbNnKIi0KLAoJBHsxbPrI+CdRA
Date: Thu, 29 Aug 2024 07:52:25 +0000
Message-ID: <SJ0PR11MB58652BBE9DE2C4B64614583F8F962@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240731-filter-return-eexist-v1-1-5b03d444a423@intel.com>
In-Reply-To: <20240731-filter-return-eexist-v1-1-5b03d444a423@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|MN6PR11MB8102:EE_
x-ms-office365-filtering-correlation-id: 96d26950-1540-4092-e1a3-08dcc7ff8610
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Tmg2VHFKeS9UWG5pUElvMkh2TlpyeEJOWGVaQ0FDd2UrSXA0QjA1WWdBWURx?=
 =?utf-8?B?WUI4VXZSeXpwb0Z3ZjJYRGpMbDQxTUtKRXFXaFpPWmxHWTFTeS92V3dpeGI4?=
 =?utf-8?B?YzVVSnhDS1RSNDVFOW9wUjh5NHY4bm5QOHFRUTNFN3dZRW9wSzNSbmNXZzZK?=
 =?utf-8?B?eGVQRUR0UjZyQjEvMkJ1UzQwTGZseEc3dXZNYzJOSEZ2VWlieng1aEpIdVBF?=
 =?utf-8?B?YVJYUlMxNVBqOUQwN0NPU2xCM1g2YndnbkF4amFseGtCMzRXK24wWnVyR2JU?=
 =?utf-8?B?WThUUVIwZmJlS00wOW9SNFd0RUY4RHlqUW9aUjY1M2kydCtpRGhCM09XRVJa?=
 =?utf-8?B?STdHSytaYjVEczF6eTlCQVBDRy9QRkVKS0ZsVy9WK0R5dkV4YnNqbWlJNGpQ?=
 =?utf-8?B?Zlpnc1FKc09WUkYybGxIV3RJWExCUGNyMU1ZZWtVNlp2cEZGSVUwTm01V1lX?=
 =?utf-8?B?WXFaby9lNGpGUWVSSFdxQ0RWdFYzNE1FTm9JMnlpWVBDWWlEd01JSktTRUor?=
 =?utf-8?B?YW40dEVkVURzK1dZcUxyaUp1NGJTZ0g5aHNJRi9hbzVYcEplRDVpYlFZcUNw?=
 =?utf-8?B?LzlERGl5QzM4a0pDbVIvVFNLck5mUkpKNG9Ja21KVXMwb1ZhVTkrQ3dzMnM5?=
 =?utf-8?B?RWt2dnAzalBOUHlaSGNkcGZUbklrK3hlRnM3NkZYU1RDS3BGYytad2ZkQS90?=
 =?utf-8?B?MUpsSnEvYmJrVFJwRGhiWElHMHJXVHlUK21MN3pVZWZUS3ZrL2xCTUlxams2?=
 =?utf-8?B?UmduNzJzY1hodVB2VmVHSWoyeGh2elNYZlpoV29GbURaTWhVeG0wQzlRbEhF?=
 =?utf-8?B?aG1TZTQvWE9LZS9ZaERFY3FIYVArR3NkSHFKaDFoUGNqdTYxd3B5YVd1enp4?=
 =?utf-8?B?ZndkUXJiKzFjaTRDRUhzNTBRVklCZmYvWkhtV2F6UXRPTncrRjJneXBoK2wx?=
 =?utf-8?B?Yys5SC92Y0F0aC9DSHFEN09GcGdlOGRYM21BOWVNQmRwWnM0MHR5cCtmWEln?=
 =?utf-8?B?R0pPVG0zc0JJdWJVdTlzWSt2QUFSdGttQnZDczFBK3JLeFNJMlluZm1KTGJG?=
 =?utf-8?B?NTQ0VTgrZ2QyUVBqWnY1eVE4SG5uY3VuL0FiSnNtNkx4NjdveGVmSnhqMEho?=
 =?utf-8?B?T3RpeUFXK3VENWhuUFBHeHk1T1RKYWZZVmJjL2ZlY0JMU1MxdGZEclhJZ2RT?=
 =?utf-8?B?VEJhcjJjd1RTMzRKb2JxMGJ4M0Q3cUdWK2FwaDM3Z1VkTkRpWFdhaXk1MkE5?=
 =?utf-8?B?SVVwd3ZjMk5XMi8yRlJ1cjZZY2RXcXlHdFREcGZ5WTN3L1AzQzZxc2VZdkFV?=
 =?utf-8?B?bzB4UmVTcUZCZ3RtN0NJYkNVNDFRdGVmbitsZ2xmOENBT0kzcGN3c25aYlEw?=
 =?utf-8?B?K1JtallaQWhQWDBuK1FRamlSMWphbElKaVVSWU5iaVJHN2JwYVY2RUUzNFJh?=
 =?utf-8?B?cHdRZVJGdDlDYnZpV042SnMzbDdiNlUyNlYvUU1oZ1RzNWlPSWRuZlVRSTVj?=
 =?utf-8?B?NkkyMVlmVkdzM3NTV20veDI2Vi9JL2gwNTZwZm1tWmNYQ21zSnNvSXNoem9N?=
 =?utf-8?B?bnBKaGNqRC8yM2ZabDB1dS9jVE9SZk12SzFWOEFmMm9yTjJTaHVRR2wvOU1a?=
 =?utf-8?B?ZjBPa0NEcmZNYkUwdTlKWGgrN1I4Ymh6KzBhbEd1MWw0aFBPdDZISUN0N0Q0?=
 =?utf-8?B?TkFWRXp4YnYzb1ZZRkxkcTZ0a3Npd0ZCYjFRZGR5cnhpOWFHaHFmekcrd1l4?=
 =?utf-8?B?UHdvWFpTQzBiNUhYbFlYc2M0QnVJaTZRMjJpekdKSEVCT3FlK08vejNtWnBR?=
 =?utf-8?B?RE4vdnY2SUhGMVFXZ0p1UnRadDhzYURVS3QvQlRpUFd6ZExiUFBMQzBBVGpr?=
 =?utf-8?B?cDg3dWpTRDZxckp5eDNUNVpuQU5HWWprUFlDZ21xNjg0OWc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?alpUTDN2bktYU2lXWVM0QzFDYy9INWdoekdkYUtyYkpCVmRhL1E5OHZLY3Nn?=
 =?utf-8?B?NElMQVRKNkwvR25WbjIwVEl4NGJVV0czeTFuaTFGdDltRUhrSkl2OEtVTmxW?=
 =?utf-8?B?cWJiSVJFeFRmZGNXM3NlOG1nR0s2Y0Y2TlgwcjRabitZT3RBcnIrUmNVM3pT?=
 =?utf-8?B?YVVXbXlGdU1zSlNsNUlDVHBLYVRjTGdhalJUK3IxOXlCbGFqQWo1NVNBQU1p?=
 =?utf-8?B?RkNWQ1MrZGdnOVFSMjd0US8wcGVsS0NFbktwaXR4dTMya25KNVRZOS81OGVW?=
 =?utf-8?B?aG1jcVkzaEJlOHJZMTJhRUZIMU1weGVYaGxSZkVJbkR1WjBiNkExMUhleGhl?=
 =?utf-8?B?L2gxaEpDeEoyaytrY3YzQkhIWnBRalNXcytTOTYxd2dYWGxvWWhmK3RqbVA3?=
 =?utf-8?B?V1BkWXB4TGZ3WVpKMGFnNWprRE5uemFqZ0h5RGJhN3Q2V0dDYXlvcDVnaWM2?=
 =?utf-8?B?NlJ0cWoyOG5yd3U5QmVKZkwxS3B6WnRYVGpncytkU1JnNE4wVmtJOFFRSDBC?=
 =?utf-8?B?ZFVQa1NNUEJod1RxdjI3WWxwZWN4OVpJN09mSXpGVUJvemVKVGxpZEVXQlhF?=
 =?utf-8?B?RDJhdXpvMU82akoxVThzNzhuV1JLV09qdnFQTU9YTlVaMFNvcThEV2lOb3Iw?=
 =?utf-8?B?dUpnQ2Ztd2N6clJ4R01McW5LZkRnbFJDMjB2MklhWHBPRVdYZ0JxRzNpcVlr?=
 =?utf-8?B?aFpzUzNaYkdrREdBR0FVRHNydEV5YzFZeWxHb2p2dk1OUDBJcWo5amcyQlM1?=
 =?utf-8?B?N3Fnekp2L0IyZTRxcnRvR0o3c1NEcmxLZjRaQjRxQXNHdEpURFNqYnRxM0lT?=
 =?utf-8?B?LytMNHNkSlA4MlM4TXhxUVlHODRlSi9UaWJKL0xtUW9Vd0hGVDE0RmNOSzg0?=
 =?utf-8?B?ajFQdWJsT1pKSExTYjkwdytXY09BOTQ5dElBeTJaVWtKejUzTjh0U1RoQmJt?=
 =?utf-8?B?eXJiQkJ5Z1NFenpwZ3pIWEY5VTRHMVBwVUNrQUdjejhkb0t4ZUpmdkk3Rm9D?=
 =?utf-8?B?MnliMDZHUmUyaGgyclh5bGtwRUY1SFQzWXJoYlcyUlVXK0dMWnU1V0d2UTk5?=
 =?utf-8?B?enY1d2k4WXRiY0dwM1FlNVF6UTJmSkh1bG9MdzF2bWtQQzUwdG1MVHFsMGFj?=
 =?utf-8?B?UFNZTCtiTkhRMCtmTU1uQXBJc3NwR1Q1Nk5rZ3Zad00zQ3ptNUtMdERDNzg5?=
 =?utf-8?B?RlNBQ0syNnA3eExrZ2FwcEFXd1hTZ08yUE1tZS9McEZpWjRsVTF4eDlOWWJ5?=
 =?utf-8?B?T0pxS0tqOXQ0NFI2cnJyL0xCZWptL1Roei82K01BUThoMnRnSnJTUHFWWk5I?=
 =?utf-8?B?d2xLdlpvV3dYZnhJU3d1dTdiT2xHVkFPMzJPcXRlNktrSEZpRU9qSDErd0Z6?=
 =?utf-8?B?ckJKQkN5MnhGNmY0R0FTM3BUZFF2d0tGS1lGR3RCK1pKWmtUanFqQjdnbHJo?=
 =?utf-8?B?NWhmN2cyRFdpcTlXSmFuMERSS2g2MkRSTk81V2hZdjR5eENIS3ArTDFuUy93?=
 =?utf-8?B?YVg3dGZtbzlJd2pYYnVmYUdYbEZmU2R1S082NTNyT3l0cU84SmtGclZBNXBL?=
 =?utf-8?B?TWNjY1NyUmcrK2NYa05KaWNBdStNYTVyUU9LTTM2Q1lFNFg4TWhCWUpnNnRk?=
 =?utf-8?B?QS95eFRibDBUNHlpRllTN010TkFCUGs2QWFZRTkvSkVGeVhCWElqeXhwMmRD?=
 =?utf-8?B?NjUvaXZscGlvY1F4bFYyODFwVG9lZUtpblpGUnVFcVhwMjFlM2QrNmNLSlQw?=
 =?utf-8?B?OFJOTWRvU2dMRit1UzdDUytVQi9SenNXenJLQXM0MURWb2dpM0RUVVRDU3Nx?=
 =?utf-8?B?ZkJTOHVGK3FpQWhlNjdQeXppL0pxc1V2V3FvZUpaRHBZWW9WaitYTWdJTGQw?=
 =?utf-8?B?UzQxVlFNdzViRCsvNnU4WHlRTTVrQzlZUndBZEt6R29BV2xVM2FibnB1SVVW?=
 =?utf-8?B?TWh4VmJNQ3oyd1V5bEtHeXp4TlUyU0hDMi9tc2djZGRLRHlNczlVdnFVanNy?=
 =?utf-8?B?ZU5rM3pSWWk0RVpOQi9CTVlRV2dXZS9EM3lBVTJBcmNNeGRjSW5iV2tCalZk?=
 =?utf-8?B?NkVvOTlUUXRqYmpGSmhLbXNwYmd5ZjRZVG9zTkRGc2dhMWFNT0t2b1hMRmZ4?=
 =?utf-8?B?UUtiMXdVdHlaNDJOcmQvblg0QlM3ZnlSbm5Uanp4WUFBcHdDVU0vV3AzUTVW?=
 =?utf-8?B?akE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96d26950-1540-4092-e1a3-08dcc7ff8610
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2024 07:52:25.9191 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BVf24Uhk7e2WVUi1CxxIqW0cXM0dk5nC0EFwFAxZB3i18Hl0DKY/kqsYQE3OgbsicZQoFsqJ3iHwag7TrZXyDtaPowiVlkgmawfElrjoNUg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8102
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724917953; x=1756453953;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=poriqBz/5NU84dHTrKYCZ6KuPef8D/a9Jd25495pe3I=;
 b=kLvPbcWL9tFgHOwtiWTgjzN3AcxeoJCcoswbCzX10qtTCWpQwy7MIE4s
 jExkZFHPjvAoRzMeUzYK21cAPEA1kIYcHUPH76OXjm4hN7FiCn52iYN8t
 jkDrEzgD9UcHujTXB1HVCxa8MVNkM2RVF+wGO0UeE7z9Fk4R0iVRCQpFb
 NFo+xnfiBe9C2+SEYP/+e5QHIBGQZF3hlEppdsiOutzRTmz2JhtGNXRjQ
 e0NAvd11z3ApwpqFG3gq4reh8vm6aBp5cJo4hn7pYzTpoxhuyfXSVASh0
 S9fxQS6MTK/a5ZWA7CYm2ocH73+aU7uXG/5Lk2+ISN7PnjlMUupb2aErc
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kLvPbcWL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix accounting for
 filters shared by multiple VSIs
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYg0KPiBL
ZWxsZXINCj4gU2VudDogV2VkbmVzZGF5LCBKdWx5IDMxLCAyMDI0IDY6NTYgUE0NCj4gVG86IElu
dGVsIFdpcmVkIExBTiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4s
IEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+DQo+IENjOiBLZWxsZXIs
IEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIGl3bC1uZXRdIGljZTogZml4IGFjY291bnRpbmcgZm9yIGZpbHRlcnMg
c2hhcmVkIGJ5DQo+IG11bHRpcGxlIFZTSXMNCj4gDQo+IFdoZW4gYWRkaW5nIGEgc3dpdGNoIGZp
bHRlciAoc3VjaCBhcyBhIE1BQyBvciBWTEFOIGZpbHRlciksIGl0IGlzIGV4cGVjdGVkIHRoYXQg
dGhlDQo+IGRyaXZlciB3aWxsIGRldGVjdCB0aGUgY2FzZSB3aGVyZSB0aGUgZmlsdGVyIGFscmVh
ZHkgZXhpc3RzLCBhbmQgcmV0dXJuIC1FRVhJU1QuIFRoaXMNCj4gaXMgdXNlZCBieSBjYWxsaW5n
IGNvZGUgc3VjaCBhcyBpY2VfdmNfYWRkX21hY19hZGRyLCBhbmQgaWNlX3ZzaV9hZGRfdmxhbiB0
bw0KPiBhdm9pZCBpbmNyZW1lbnRpbmcgdGhlIGFjY291bnRpbmcgZmllbGRzIHN1Y2ggYXMNCj4g
dnNpLT5udW1fdmxhbiBvciB2Zi0+bnVtX21hYy4NCj4gDQo+IFRoaXMgbG9naWMgd29ya3MgY29y
cmVjdGx5IGZvciB0aGUgY2FzZSB3aGVyZSBvbmx5IGEgc2luZ2xlIFZTSSBoYXMgYWRkZWQgYSBn
aXZlbg0KPiBzd2l0Y2ggZmlsdGVyLg0KPiANCj4gV2hlbiBhIHNlY29uZCBWU0kgYWRkcyB0aGUg
c2FtZSBzd2l0Y2ggZmlsdGVyLCB0aGUgZHJpdmVyIGNvbnZlcnRzIHRoZSBleGlzdGluZw0KPiBm
aWx0ZXIgZnJvbSBhbiBJQ0VfRldEX1RPX1ZTSSBmaWx0ZXIgaW50byBhbiBJQ0VfRldEX1RPX1ZT
SV9MSVNUIGZpbHRlci4gVGhpcw0KPiBzYXZlcyBzd2l0Y2ggcmVzb3VyY2VzLCBieSBlbnN1cmlu
ZyB0aGF0IG11bHRpcGxlIFZTSXMgY2FuIHJlLXVzZSB0aGUgc2FtZSBmaWx0ZXIuDQo+IA0KPiBU
aGUgaWNlX2FkZF91cGRhdGVfdnNpX2xpc3QoKSBmdW5jdGlvbiBpcyByZXNwb25zaWJsZSBmb3Ig
ZG9pbmcgdGhpcyBjb252ZXJzaW9uLg0KPiBXaGVuIGZpcnN0IGNvbnZlcnRpbmcgYSBmaWx0ZXIg
ZnJvbSB0aGUgRldEX1RPX1ZTSSBpbnRvIEZXRF9UT19WU0lfTElTVCwgaXQNCj4gY2hlY2tzIGlm
IHRoZSBWU0kgYmVpbmcgYWRkZWQgaXMgdGhlIHNhbWUgYXMgdGhlIGV4aXN0aW5nIHJ1bGUncyBW
U0kuIEluIHN1Y2ggYSBjYXNlDQo+IGl0IHJldHVybnMgLUVFWElTVC4NCj4gDQo+IEhvd2V2ZXIs
IHdoZW4gdGhlIHN3aXRjaCBydWxlIGhhcyBhbHJlYWR5IGJlZW4gY29udmVydGVkIHRvIGENCj4g
RldEX1RPX1ZTSV9MSVNULCB0aGUgbG9naWMgaXMgZGlmZmVyZW50LiBBZGRpbmcgYSBuZXcgVlNJ
IGluIHRoaXMgY2FzZSBqdXN0DQo+IHJlcXVpcmVzIGV4dGVuZGluZyB0aGUgVlNJIGxpc3QgZW50
cnkuIFRoZSBsb2dpYyBmb3IgY2hlY2tpbmcgaWYgdGhlIHJ1bGUgYWxyZWFkeQ0KPiBleGlzdHMg
aW4gdGhpcyBjYXNlIHJldHVybnMgMCBpbnN0ZWFkIG9mIC1FRVhJU1QuDQo+IA0KPiBUaGlzIGJy
ZWFrcyB0aGUgYWNjb3VudGluZyBsb2dpYyBtZW50aW9uZWQgYWJvdmUsIHNvIHRoZSBjb3VudGVy
cyBmb3IgaG93IG1hbnkNCj4gTUFDIGFuZCBWTEFOIGZpbHRlcnMgZXhpc3QgZm9yIGEgZ2l2ZW4g
VkYgb3IgVlNJIG5vIGxvbmdlciBhY2N1cmF0ZWx5IHJlZmxlY3QgdGhlDQo+IGFjdHVhbCBjb3Vu
dC4gVGhpcyBicmVha3Mgb3RoZXIgY29kZSB3aGljaCByZWxpZXMgb24gdGhlc2UgY291bnRzLg0K
PiANCj4gSW4gdHlwaWNhbCB1c2FnZSB0aGlzIHByaW1hcmlseSBhZmZlY3RzIHN1Y2ggZmlsdGVy
cyBnZW5lcmFsbHkgc2hhcmVkIGJ5IG11bHRpcGxlIFZTSXMNCj4gc3VjaCBhcyBWTEFOIDAsIG9y
IGJyb2FkY2FzdCBhbmQgbXVsdGljYXN0IE1BQyBhZGRyZXNzZXMuDQo+IA0KPiBGaXggdGhpcyBi
eSBjb3JyZWN0bHkgcmVwb3J0aW5nIC1FRVhJU1QgaW4gdGhlIGNhc2Ugb2YgYWRkaW5nIHRoZSBz
YW1lIFZTSSB0byBhDQo+IHN3aXRjaCBydWxlIGFscmVhZHkgY29udmVydGVkIHRvIElDRV9GV0Rf
VE9fVlNJX0xJU1QuDQo+IA0KPiBGaXhlczogOWRhZjgyMDhkZDRkICgiaWNlOiBBZGQgc3VwcG9y
dCBmb3Igc3dpdGNoIGZpbHRlciBwcm9ncmFtbWluZyIpDQo+IFNpZ25lZC1vZmYtYnk6IEphY29i
IEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gLS0tDQo+ICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5jIHwgMiArLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guYw0KPiBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3dpdGNoLmMNCj4gaW5kZXggZmU4ODQ3MTg0
Y2IxLi4wMTYwZjBiYWU4ZDYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2Vfc3dpdGNoLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9zd2l0Y2guYw0KPiBAQCAtMzE5NCw3ICszMTk0LDcgQEAgaWNlX2FkZF91cGRhdGVf
dnNpX2xpc3Qoc3RydWN0IGljZV9odyAqaHcsDQoNCg0KVGVzdGVkLWJ5OiBSYWZhbCBSb21hbm93
c2tpIDxyYWZhbC5yb21hbm93c2tpQGludGVsLmNvbT4NCg0KDQo=
