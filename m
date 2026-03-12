Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHIWDgfmsmktQwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 17:12:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 263642754E2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 17:12:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 980818474E;
	Thu, 12 Mar 2026 16:12:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ob33XrwZK-ja; Thu, 12 Mar 2026 16:12:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04E56847B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773331969;
	bh=S2r3mEx4jaS69b6pg4TeplPYQyNYaMq5f3Q1pXlTbJ4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jN7pcCjQkQUM88GrtMTCzbeRJ5Zl6vMO4dew/uwqQHGIB6TKoBcYNYIoy865Xq9Y2
	 Hsq+WypjRFKKvGzCA0NGxKXJhxVi0MqoyjGLK7J3kcWcj5xilR7H8JsFmU6j+wZVAR
	 Wme5WxErnA/y5zJFDquMPdDvj7RU1O+9Lfy7CL7iyeZOgxFDD5m/xhNosv7OEurxAY
	 6jRFCbJZ5UbBg5Wm/o0Oi1Acm40aa62ahWG4jCKWouAWU8D518SGiw4IR7Wi36a7WK
	 xOddf+0XYtGk79UJiDTjyAUWEj4zEF134LUyQHdvYCY50aXwSKTog3Z+8/9QXCJCGr
	 //wIqeJrCl24g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04E56847B0;
	Thu, 12 Mar 2026 16:12:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D5FAD282
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 16:12:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB30B418C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 16:12:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PNR6_n4036rT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2026 16:12:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 691914107B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 691914107B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 691914107B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 16:12:43 +0000 (UTC)
X-CSE-ConnectionGUID: X4MrIJ9RTTOlkWgfgjRCbQ==
X-CSE-MsgGUID: 5QOTGNe8TEi2FqQ9IQ3wTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="85910033"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="85910033"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 09:12:42 -0700
X-CSE-ConnectionGUID: wo9a9boLQ3W77nLAysyVeA==
X-CSE-MsgGUID: UCZc7QZASc6MQg3o49dwnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="221051544"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 09:12:26 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 09:12:16 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 09:12:16 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.16) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 09:12:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aQffyITYkzTS7flG4mkV7DfqRy6p0yvoelsD1vPvzqmebccUjnkt1BqsOASVKXX4x3BQJ0/fhMjJjYTbKnlf3lvYGmjtJVizJ69cNSh5jhuSL2AQ01AGkoVtcw3unypqT9dvuaTwpqb+jjgJ7vlCBtf1HWVN6s4fqOYqq9QZwsk1A9WzGZGdEs/5dSSqLdPPfixlVnwkDluMZyAhItvv5kGdMIcI6g35NEL5jpCBIoBM372SFwDMdrPpAdQ5KcYZcdMKZRMeyPvTlVgDa8AjH2VNO5QGAihTlm5OehOlbQf/y69qehIByv+JbnNkYOFrLMG4EmrTpDQKs37UJp4uYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S2r3mEx4jaS69b6pg4TeplPYQyNYaMq5f3Q1pXlTbJ4=;
 b=BztW+Cme5OBlZFfQyBCT3cw5ysoYvV9bvxO9E6neEsl0PT5FFXC3+hYCwymttBgqy/O1ZLFwr0kDKiWbQkgNkrKS4GIU57Keqr5x34a5354EeTMbgD3X8v5XNkdeHaxX/rr3vxJFgx2JDRU8FQbxz4nMP5ci3XJHEh43dAgT8+mP0ZXNwXUvKgg+BXL7/+njvxLtEkUIMgxIflWkKsSVdgeYD4aMFtVpIeABrP99SEHA1GvIK5GAlGmSYhMUpM5kPkTPOM6wrwVlwR5CjOhT6Qgc7hMTjtxIa8k1CJOgDbe0WZCQKoI2qggdWbyMknWbNKzpzgNtgx2i25vyrDOpjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS4PPFDA9EFDFDB.namprd11.prod.outlook.com (2603:10b6:f:fc02::55)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.12; Thu, 12 Mar
 2026 16:12:12 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9723.000; Thu, 12 Mar 2026
 16:12:12 +0000
Message-ID: <0da51c50-3afd-464a-aad8-99e475a31339@intel.com>
Date: Thu, 12 Mar 2026 17:11:56 +0100
User-Agent: Mozilla Thunderbird
To: Philipp Hahn <phahn-oss@avm.de>
CC: <amd-gfx@lists.freedesktop.org>, <apparmor@lists.ubuntu.com>,
 <bpf@vger.kernel.org>, <ceph-devel@vger.kernel.org>, <cocci@inria.fr>,
 <dm-devel@lists.linux.dev>, <dri-devel@lists.freedesktop.org>,
 <gfs2@lists.linux.dev>, <intel-gfx@lists.freedesktop.org>,
 <intel-wired-lan@lists.osuosl.org>, <iommu@lists.linux.dev>,
 <kvm@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-block@vger.kernel.org>, <linux-bluetooth@vger.kernel.org>,
 <linux-btrfs@vger.kernel.org>, <linux-cifs@vger.kernel.org>,
 <linux-clk@vger.kernel.org>, <linux-erofs@lists.ozlabs.org>,
 <linux-ext4@vger.kernel.org>, <linux-fsdevel@vger.kernel.org>,
 <linux-gpio@vger.kernel.org>, <linux-hyperv@vger.kernel.org>,
 <linux-input@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-leds@vger.kernel.org>, <linux-media@vger.kernel.org>,
 <linux-mips@vger.kernel.org>, <linux-mm@kvack.org>,
 <linux-modules@vger.kernel.org>, <linux-mtd@lists.infradead.org>,
 <linux-nfs@vger.kernel.org>, <linux-omap@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-pm@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <linux-s390@vger.kernel.org>,
 <linux-scsi@vger.kernel.org>, <linux-sctp@vger.kernel.org>,
 <linux-security-module@vger.kernel.org>, <linux-sh@vger.kernel.org>,
 <linux-sound@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-trace-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
 <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>,
 <ntfs3@lists.linux.dev>, <samba-technical@lists.samba.org>,
 <sched-ext@lists.linux.dev>, <target-devel@vger.kernel.org>,
 <tipc-discussion@lists.sourceforge.net>, <v9fs@lists.linux.dev>, "Igor
 Russkikh" <irusskikh@marvell.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 "Jakub Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Pavan
 Chebbi <pavan.chebbi@broadcom.com>, Michael Chan <mchan@broadcom.com>,
 "Potnuri Bharat Teja" <bharat@chelsio.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Taras Chornyi <taras.chornyi@plvision.eu>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Iyappan Subramanian
 <iyappan@os.amperecomputing.com>, Keyur Chudgar
 <keyur@os.amperecomputing.com>, Quan Nguyen <quan@os.amperecomputing.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-38-bd63b656022d@avm.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260310-b4-is_err_or_null-v1-38-bd63b656022d@avm.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB9PR05CA0028.eurprd05.prod.outlook.com
 (2603:10a6:10:1da::33) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS4PPFDA9EFDFDB:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f0f9ecc-edd7-4e03-1a3f-08de80521e93
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|22082099003|7053199007|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: 0JzyEtz+ZbY+UJfay1MMx6cC7k0VDpTAisQfHr8ee8fhRS9oZ/3EkK0SYa4H9xO+17cqN8E+INuWd0bDOhg6KyMSzQi4RLCB8yuN8addTN8WfkoDEXNJd3uynlJwQMFvJpVc5/6mTD+E8XvzGrnqrFo3mdW0yJLnV+UL+VFlNvaI7d3JY+amn8fmczN5NWzLWPhGBAt2EMHTRLTc8v8nGb0g73JENOqONAlmDCfKE0GXQx238nSbuoRBzBGsrkpYLX0pGkMHDk5HsKqQySnqWHSIGAs9FIfiQ40DdaWm8mwqbOfnJpoxF8PSYWVX02H6lUXF2NuGRZVoW0O6iEmJTBTtk47r/Uob+aS0SdHobYpGy2JhDE1CFbFyiD8Rhr9YqFpB6I7pUC5CO376reeOmS1ggrEUisVWCJ8UCW/cm7uZVmRS7KJnFOPnJ0H1rbHeXczxrtg13GUOjBpAoeHkI6e72lLPv5Xj5OOdYD8GCbWA6bNGCfVjbZXkKtYzNhOp9gtoZ1NNYTLIklJDjukLNoia6KYo5rUKZkX3sMViba6m8oY1T/8y6T83Q7cSeVNXpdvgJ+D3rUuF66Bn29BhUp50Gss35pc8jsAIvV92tpazJssg2Yfv3zGruCBTbGG6uKoA/+Lyct3jhQyr2suol6i7dMGHlSURpaY/Y65Ye+icJJRzr306I9/r63LzJ5Kl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(22082099003)(7053199007)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UTh0emRrTjRWY2xrdUwrdmFCeDU4bmVmeGtUQTI5MnZ2MnQ5UmJtWFllN3Nv?=
 =?utf-8?B?WVZpMHFMNGREY2IxMllKYnY1UGxWanZTNlFHTGk1QjdyS0lvTVh4eU9BUkhk?=
 =?utf-8?B?L2tJRUJEN1RQdmlqUUtvY2hhOGgrSis2Y00wTC9uU0U4WXZuOUZWL25kWXNX?=
 =?utf-8?B?eXBRZkprWlpkUFU4M2RPckgxNlFBM0lCZnIxZzJpeWV0UmczVkMweGRHUFM3?=
 =?utf-8?B?Sjh6TWE3WVNJd21XM1RQODMzT1J3c2ZTa1NyUEs4dTdmMlNtQXlzZU5nVzND?=
 =?utf-8?B?K29aRHA4ZDllcmNWRFNZeDBRUTNheWd2dWNWdHY4RjJIVnhuRGNvRG93NVZv?=
 =?utf-8?B?dGhPVkUvYlJSbmhxZDJFMEF5TU5Bb3RkbjlvVktNQWVqWWlRSWMyNlFYei8v?=
 =?utf-8?B?ZFdzUFpFR0xseWs3ZDNRbW5qenowWXM3MEpjTldRc0J6eVdBT0prNTNqQUF2?=
 =?utf-8?B?SjloL0Jzd0lnSC8yTkFvMzJtemJzckxHeEVKU1FmcU5lcXcrT29BWGsvNmFB?=
 =?utf-8?B?SEE0ZlFaTlkvOUNHZDdjRDN2Vzg4Y1lEOFlRRitsOC9IOVJrSi93YnFyRnB0?=
 =?utf-8?B?d1ZjTm1TUWl4TnBQSytnektHR1hzWk1mT1BuTi9ZVlJyaFlWTVJjSnZ1WUo3?=
 =?utf-8?B?MEUyYkUraHNhcTRtMmNMa3VIS1ovVFlVbTYyc2NVMDlYN2svaDRHYmlpa0lz?=
 =?utf-8?B?RjhZaEF0eVZTUDJBREtqZTdaMkNobkkwTURGTmFHOFlnNGUwSTFSRmEvSmFF?=
 =?utf-8?B?TnE5RXp4MmZOeEFzZ0xUZTBZSlh0VWVnams3eWlpWTNOL1JmN3RleEExRVo4?=
 =?utf-8?B?R0JyVUg1ZkxnV21LSUtocHMzSDJ4bTdYTFpBK1VPWjVoTnBEU1NKaHRLUW1z?=
 =?utf-8?B?ODFUYTdUZm9ZUysrUm9pbEd5ZXZXd1J5ZGRsMjV6eXRmWVIvVUkva2FSYjVC?=
 =?utf-8?B?OUFyTVhNQ2xCWkJEdnNjUm1VM0VLM2lEYkVnazRSalVzQUl3cFk3UDhMcHBJ?=
 =?utf-8?B?U2pMWC93eUIzZy9QVGJGQkp6d21rRTR1R1gyWUdScVdkRVo5R1FTcDlvOGI4?=
 =?utf-8?B?cmNLeWdZKzJnaDlYa0xMSXNRamg3YWE5eWhsTldaS21jaUNDVHBKZGdOcEZT?=
 =?utf-8?B?V2wrZWNhOTBCVEdkMnpIdTNWdGt6MlJXTXlRdDIzanYreUEydGsrTU92SVFu?=
 =?utf-8?B?OHluS3JyS0RiR2N0UVU0V01Ub1l0K2hZVjNjeTJiVEFhTklBWm52eHRWQjI3?=
 =?utf-8?B?THByM21VZ3V2QVV2ZWJEWG5SbFNRZzdoR0lnM0F6aDBxSFU3aU1RbEZYa0VL?=
 =?utf-8?B?SUc5ZDRkWXRhWkRvamZxMlh6eDBGSVJJeHZnanBRU0FUaE5lcUZXMzB4WSt2?=
 =?utf-8?B?cFBNRC91b0FlaSthVXpjK1VnZXMrakl2enVYdFMrU09UZHNQbnY1dk15V243?=
 =?utf-8?B?UEdGL05LczgzTHMrUlRVNk9IallyLzFyb0xwbkxYZ0wrZm9PeUx2MXVwbzEx?=
 =?utf-8?B?NTA4Wk9GUlpFRElnUEpNNDZqODAxQ0F0ejdQS1JZaGtmd1V3MG5QYnZ5K1Rs?=
 =?utf-8?B?MGFTK3VsblR1M3dQaDB6NHhkV3pUaUFERTd4UUxQQjlSK2JsZjRQNForNENm?=
 =?utf-8?B?MFpKYjVWc21qOXBKSmR4T1F3TW9uaFpxY0EzWVZZZFRoMW5RWk5HdWNTMmJr?=
 =?utf-8?B?OWtBbG9XODhZNEphWURHbjdwYnNEUlNPcGRQNmtvNHhuSHZQN2VBQ21MWUxD?=
 =?utf-8?B?L04zYzQvRTBzc25HSGtLMHNBWlgzZTFud1VOUGdTVkhRU0lydExMZ1hiRUVk?=
 =?utf-8?B?OEo3SGtYelUxRW1QT05oNG1FVlB6WDIxc05TVU5EMVpQb0w0WjJIdVFVTnNG?=
 =?utf-8?B?eUhPZm5hZU1JeG5tbTRMbUNKR0h6R2xEaEdyWFRSWksrWnE4UkY5NkZlM2ZX?=
 =?utf-8?B?N0h6WSszYVZhQUVOREhCNDdlZmlXV3UvUFMwbG5sbWFjS3pPWEdnMlBqRGxG?=
 =?utf-8?B?ZWpmb1NNUWN6UDg3NVVwTlhKZGZ4RThBdUI5cFJjazZKWUhyTmZyRm9VZ0Nx?=
 =?utf-8?B?VmVXMXg0T0dtODErRndFcndkWG5EeGY5NGNsSDdoYTZRZFpLbDAwU0pDSnRD?=
 =?utf-8?B?NVRYS3RZNkZvRVEwVjNlajFJVTRVZlM0ek9JbnozeFBQY1U0c25BaFkzMGl5?=
 =?utf-8?B?bG1FZlBZdGxZTGdmSnFHdXdjR240OGZGR3JiQ2w4UE1YSHNaVVMydG9CZHo2?=
 =?utf-8?B?OVRkd0hTaENFTEhscWluWVN2N3RCOWUrTnRuTEs5NHRtWVoxK21LSDQvWnpD?=
 =?utf-8?B?WkhKZkp4U3dVVzE2VG9Fc0hERXRBdUFWRHlSWjdGMDNmUEZzYW1VY1lDNEtF?=
 =?utf-8?Q?lEcw5NvkT6Xp+YVo=3D?=
X-Exchange-RoutingPolicyChecked: k+VKSPAM7KWe+eF9eQg7nB4SNgLOqJ5F7bFdYbbZTeKXANRkNzvGEEYyC8gBkAnYBQbBnLETSuGZzhg7V4slfrEEpJGCeVVYiKSNWO4OGl7pZi68LFMzCHTPrtuvVgpFVD4uDxqt1/HNubsnanmP1G8FAl6IOpxVKnaoPEg/NVcU52Q0KSEBFFkAPBogHPZy7e9fZJLJe3ETdjYg9N6IwBd9le+DB9VqnLVHfYvwevLcu2RqYd8Pnb86MrH17SC1qPrVolB8jsGaZJmKP6DFKbBWzt6ba1ADz8SHmFKvpVy8K5W1mh+EmY5zJIOQfUYIOwbE9LGf9+WF/pWC99LnEQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f0f9ecc-edd7-4e03-1a3f-08de80521e93
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 16:12:12.3882 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NEdWwkLUzCzbtdV4esOcW+KF0h2yXcJdE4EMktG7LaB1JizSgLunmzY78asDDAwWKzmb3uxKUCQCT5c3xwKLv6ET/L3+njS36DMvqibeYL4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFDA9EFDFDB
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773331965; x=1804867965;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5bFRno/x5CuND9g6xv0lanCw5CYbDU9w0cEWHBHlDpc=;
 b=ifgMUu6Z6eZdRcKn1pxe2ybBW7extGI2EdSddWRWUaKOd0bkIvR3OJE3
 3iRqAVfa5UVVD5PIV+Jb1DSTXP5YZIlSvuAoLiNw2lJYM3RPAvApQoLeB
 /awyZ/gsfJl6Q7zbLHttB7Gt/JVXLLchY8tBfisIWOTE5xR4BYhK4CEVw
 acVOfxvFESyAImgYUx8zGeFk8TpNSWKEV16thIlSWH0APRV7unu1Y9WLC
 kny6hGZI1B3ZLBxfUELGZPNp1bZJwRPWJxPuxjdY8J75qE2g4FA4b4mLX
 AoJMTUyDVtdWLLqjkzT+lUBAl/ZwAu6wNvrST1SpdxTbmbUMakTCvCyAk
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ifgMUu6Z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 38/61] net: Prefer IS_ERR_OR_NULL over
 manual NULL check
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:phahn-oss@avm.de,m:amd-gfx@lists.freedesktop.org,m:apparmor@lists.ubuntu.com,m:bpf@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:cocci@inria.fr,m:dm-devel@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:gfs2@lists.linux.dev,m:intel-gfx@lists.freedesktop.org,m:iommu@lists.linux.dev,m:kvm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-block@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-btrfs@vger.kernel.org,m:linux-cifs@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-erofs@lists.ozlabs.org,m:linux-ext4@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-hyperv@vger.kernel.org,m:linux-input@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mips@vger.kernel.org,m:linux-mm@kvack.org,m:linux-modules@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:linux-nfs@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-phy@lists.infradead.o
 rg,m:linux-pm@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-sctp@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-trace-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:ntfs3@lists.linux.dev,m:samba-technical@lists.samba.org,m:sched-ext@lists.linux.dev,m:target-devel@vger.kernel.org,m:tipc-discussion@lists.sourceforge.net,m:v9fs@lists.linux.dev,m:irusskikh@marvell.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:pavan.chebbi@broadcom.com,m:mchan@broadcom.com,m:bharat@chelsio.com,m:anthony.l.nguyen@intel.com,m:taras.chornyi@plvision.eu,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:iyappan@os.amperecomputing.com,m:keyur@os.amperecomputing.com,m:quan@os.amperecomp
 uting.com,m:hkallweit1@gmail.com,m:linux@armlinux.org.uk,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,lists.ubuntu.com,vger.kernel.org,inria.fr,lists.linux.dev,lists.osuosl.org,lists.infradead.org,lists.ozlabs.org,kvack.org,st-md-mailman.stormreply.com,lists.samba.org,lists.sourceforge.net,marvell.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,broadcom.com,chelsio.com,intel.com,plvision.eu,gmail.com,foss.st.com,os.amperecomputing.com,armlinux.org.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[72];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 263642754E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/10/26 12:49, Philipp Hahn wrote:
> Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
> check.
> 
> Change generated with coccinelle.
> 
> To: Igor Russkikh <irusskikh@marvell.com>
> To: Andrew Lunn <andrew+netdev@lunn.ch>
> To: "David S. Miller" <davem@davemloft.net>
> To: Eric Dumazet <edumazet@google.com>
> To: Jakub Kicinski <kuba@kernel.org>
> To: Paolo Abeni <pabeni@redhat.com>
> To: Pavan Chebbi <pavan.chebbi@broadcom.com>
> To: Michael Chan <mchan@broadcom.com>
> To: Potnuri Bharat Teja <bharat@chelsio.com>
> To: Tony Nguyen <anthony.l.nguyen@intel.com>
> To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> To: Taras Chornyi <taras.chornyi@plvision.eu>
> To: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> To: Alexandre Torgue <alexandre.torgue@foss.st.com>
> To: Iyappan Subramanian <iyappan@os.amperecomputing.com>
> To: Keyur Chudgar <keyur@os.amperecomputing.com>
> To: Quan Nguyen <quan@os.amperecomputing.com>
> To: Heiner Kallweit <hkallweit1@gmail.com>
> To: Russell King <linux@armlinux.org.uk>
> Cc: netdev@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-usb@vger.kernel.org
> Signed-off-by: Philipp Hahn <phahn-oss@avm.de>

this is too trivial change, especially when combined like that
https://docs.kernel.org/process/maintainer-netdev.html#clean-up-patches

> ---
>   drivers/net/ethernet/aquantia/atlantic/aq_ring.c        | 2 +-
>   drivers/net/ethernet/broadcom/tg3.c                     | 2 +-
>   drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c    | 3 +--
>   drivers/net/ethernet/intel/ice/devlink/devlink.c        | 2 +-
>   drivers/net/ethernet/marvell/prestera/prestera_router.c | 2 +-
>   drivers/net/ethernet/stmicro/stmmac/stmmac_main.c       | 2 +-
>   drivers/net/mdio/mdio-xgene.c                           | 2 +-
>   drivers/net/usb/r8152.c                                 | 2 +-
>   8 files changed, 8 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/aquantia/atlantic/aq_ring.c b/drivers/net/ethernet/aquantia/atlantic/aq_ring.c
> index e270327e47fd804cc8ee5cfd53ed1b993c955c41..43edef35c4b1ff606b2f1519a07fad4c9a990ad4 100644
> --- a/drivers/net/ethernet/aquantia/atlantic/aq_ring.c
> +++ b/drivers/net/ethernet/aquantia/atlantic/aq_ring.c
> @@ -810,7 +810,7 @@ static int __aq_ring_xdp_clean(struct aq_ring_s *rx_ring,
>   		}
>   
>   		skb = aq_xdp_run_prog(aq_nic, &xdp, rx_ring, buff);
> -		if (IS_ERR(skb) || !skb)
> +		if (IS_ERR_OR_NULL(skb))
>   			continue;
>   
>   		if (ptp_hwtstamp_len > 0)
> diff --git a/drivers/net/ethernet/broadcom/tg3.c b/drivers/net/ethernet/broadcom/tg3.c
> index 2328fce336447eb4a796f9300ccc0ab536ff0a35..8ed79f34f03d81184dcc12e6eaff009cb8f7756e 100644
> --- a/drivers/net/ethernet/broadcom/tg3.c
> +++ b/drivers/net/ethernet/broadcom/tg3.c
> @@ -7943,7 +7943,7 @@ static int tg3_tso_bug(struct tg3 *tp, struct tg3_napi *tnapi,
>   
>   	segs = skb_gso_segment(skb, tp->dev->features &
>   				    ~(NETIF_F_TSO | NETIF_F_TSO6));
> -	if (IS_ERR(segs) || !segs) {
> +	if (IS_ERR_OR_NULL(segs)) {
>   		tnapi->tx_dropped++;
>   		goto tg3_tso_bug_end;
>   	}
> diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c
> index 3307e50426819087ad985178c4a5383f16b8e7b4..1c8a6445d4b2e3535d8f1b7908dd02d8dd2f23fa 100644
> --- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c
> +++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_tc_flower.c
> @@ -1032,8 +1032,7 @@ static void ch_flower_stats_handler(struct work_struct *work)
>   	do {
>   		rhashtable_walk_start(&iter);
>   
> -		while ((flower_entry = rhashtable_walk_next(&iter)) &&
> -		       !IS_ERR(flower_entry)) {
> +		while (!IS_ERR_OR_NULL((flower_entry = rhashtable_walk_next(&iter)))) {
>   			ret = cxgb4_get_filter_counters(adap->port[0],
>   							flower_entry->filter_id,
>   							&packets, &bytes,
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> index 6c72bd15db6d75a1d4fa04ef8fefbd26fb6e84bd..3d08b9187fd76ca3198af28111b6f1c1765ea01e 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> @@ -791,7 +791,7 @@ static void ice_traverse_tx_tree(struct devlink *devlink, struct ice_sched_node
>   						  node->parent->rate_node);
>   	}
>   
> -	if (rate_node && !IS_ERR(rate_node))
> +	if (!IS_ERR_OR_NULL(rate_node))
>   		node->rate_node = rate_node;
>   
>   traverse_children:
> diff --git a/drivers/net/ethernet/marvell/prestera/prestera_router.c b/drivers/net/ethernet/marvell/prestera/prestera_router.c
> index b036b173a308b5f994ad8538eb010fa27196988c..4492938e8a3da91d32efe8d45ccbe2eb437c0e49 100644
> --- a/drivers/net/ethernet/marvell/prestera/prestera_router.c
> +++ b/drivers/net/ethernet/marvell/prestera/prestera_router.c
> @@ -1061,7 +1061,7 @@ static void __prestera_k_arb_hw_state_upd(struct prestera_switch *sw,
>   		n = NULL;
>   	}
>   
> -	if (!IS_ERR(n) && n) {
> +	if (!IS_ERR_OR_NULL(n)) {
>   		neigh_event_send(n, NULL);
>   		neigh_release(n);
>   	} else {
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index 6827c99bde8c22db42b363d2d36ad6f26075ed50..356a4e9ce04b1fcf8786d7274d31ace404be2cf6 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -1275,7 +1275,7 @@ static int stmmac_init_phy(struct net_device *dev)
>   	/* Some DT bindings do not set-up the PHY handle. Let's try to
>   	 * manually parse it
>   	 */
> -	if (!phy_fwnode || IS_ERR(phy_fwnode)) {
> +	if (IS_ERR_OR_NULL(phy_fwnode)) {
>   		int addr = priv->plat->phy_addr;
>   		struct phy_device *phydev;
>   
> diff --git a/drivers/net/mdio/mdio-xgene.c b/drivers/net/mdio/mdio-xgene.c
> index a8f91a4b7fed0927ee14e408000cd3a2bfb9b09a..09b30b563295c6085dc1358ac361301e5cf6b2a8 100644
> --- a/drivers/net/mdio/mdio-xgene.c
> +++ b/drivers/net/mdio/mdio-xgene.c
> @@ -265,7 +265,7 @@ struct phy_device *xgene_enet_phy_register(struct mii_bus *bus, int phy_addr)
>   	struct phy_device *phy_dev;
>   
>   	phy_dev = get_phy_device(bus, phy_addr, false);
> -	if (!phy_dev || IS_ERR(phy_dev))
> +	if (IS_ERR_OR_NULL(phy_dev))
>   		return NULL;
>   
>   	if (phy_device_register(phy_dev))
> diff --git a/drivers/net/usb/r8152.c b/drivers/net/usb/r8152.c
> index 0c83bbbea2e7c322ee6339893e281237663bd3ae..73f17ebd7d40007eec5004f887a46249defd28ab 100644
> --- a/drivers/net/usb/r8152.c
> +++ b/drivers/net/usb/r8152.c
> @@ -2218,7 +2218,7 @@ static void r8152_csum_workaround(struct r8152 *tp, struct sk_buff *skb,
>   
>   		features &= ~(NETIF_F_SG | NETIF_F_IPV6_CSUM | NETIF_F_TSO6);
>   		segs = skb_gso_segment(skb, features);
> -		if (IS_ERR(segs) || !segs)
> +		if (IS_ERR_OR_NULL(segs))
>   			goto drop;
>   
>   		__skb_queue_head_init(&seg_list);
> 

