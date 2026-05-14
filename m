Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMsuBvO4BWpZaAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 13:58:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D1F5414BF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 13:58:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A0FC640EDA;
	Thu, 14 May 2026 11:58:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Usa03g110Y2z; Thu, 14 May 2026 11:58:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF6DC40EDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778759918;
	bh=NDHoNC3JQQcIyZcIHmMp/TvDYcWl9wLNTuMKT0QrKWc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=77faxR9zV8GyiM1/tCD7gD884Am2tzo9Zzoz3aWcJp6nbhm+Fy6KtREDNIkQkCVGA
	 m7Vt9bY9RWf018abbAe0kbjsQPgN2hDKOg1NNN/M4rT7vm1Yc6LPdKbUypKOqdvBnl
	 E2ytoCrjR+m+1Zhp80PbnINON33prE17QhcJ1OGIi5SYxGKx6RdsmEM2K5mtiHoE1G
	 LbQZVqWibyzum9VQ1ioEtsZB6/sxCsFFJFt6psGVb0FmoRlzp2RcT1y5KebFkBHWo1
	 WgKZyMBZRpVBsa7QTT3aFXvQWgRKHIzPM826RawM6xIoVooggEQPr0zeqU1hvCseLp
	 CEe/XoxvRggSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF6DC40EDB;
	Thu, 14 May 2026 11:58:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A1D9737F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 11:58:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 93722406CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 11:58:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6elKQlrpN7YZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 11:58:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0B338406CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B338406CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B338406CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 11:58:34 +0000 (UTC)
X-CSE-ConnectionGUID: xbg7AynxQlWbjdrncevR7A==
X-CSE-MsgGUID: 7JkGhOZiTdiRNJeLj93UPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="90394113"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="90394113"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 04:58:33 -0700
X-CSE-ConnectionGUID: So3cwAqNQc2jO0Rhv4i9hg==
X-CSE-MsgGUID: LCBg6afCRfOuzmpHVFsUdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="262116323"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 04:58:33 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 04:58:33 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 04:58:33 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.60) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 04:58:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FQkpO7ad2D5UQFm88aFwgHKWxhDhrrmFh5zhCPaWvkJ9FO0MlzVMqFWePg00UuHmxz1LTAezYB0efIkPvxsWRy9gmy3CWEnwb+zyXrvLEa2NcQLDFvw7wyQNgb0VT7eglt67IrmJ9W59dwSraYC0nGNHr9b2J/yhfhTVxK4bEltuSbsAFfUUhkQUs1N0mQzIaomDwgSsxLrhfNt6qLjCmZwsI/f/AsGnERsRGngqSlX8X2Q93usAykqahnc8ej9y16K5cfg4kAyt6bkhj7zTqxKJqxbDILZ8XNz4RHFX87FquPwvtybiGGGgUTj2gZioCTALSbcl7R8s+GICk27RXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NDHoNC3JQQcIyZcIHmMp/TvDYcWl9wLNTuMKT0QrKWc=;
 b=SVPDDbRYqyjJ0yu9CN8mUEL/7WIB/GEYXb8l4nVkCHIZMWFqfhNIk7IngaGjSubgfOQZIPuA1KTYvNjuxWENXvoUQo52STHPJkfMqv7X56wGBIV0/RNMk8J5mUe5Dm5NjSJ4JG9q2iiTbLzkefrZba4IFbwt7fwKk9Al1FwM2QezMMP/ZgYUz2Y6gbrlel53X4NOqUL5V4Fr4z83iHygLh+8Ij/NxyGvdGHW28fL6ioaYOlZlbsWnGljYYnCfYPXccRSkTHrTbpRUhmwz6rzWqJlV17+o97ZiFWY02aJFP+p1WTB0lTsSUVsOSC/wzaoYxj21JlG8yfOBHae80e8Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4904.namprd11.prod.outlook.com (2603:10b6:510:40::10)
 by MW6PR11MB8392.namprd11.prod.outlook.com (2603:10b6:303:23a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Thu, 14 May
 2026 11:58:22 +0000
Received: from PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305]) by PH0PR11MB4904.namprd11.prod.outlook.com
 ([fe80::ff04:50e9:d186:6305%7]) with mapi id 15.20.9913.009; Thu, 14 May 2026
 11:58:20 +0000
From: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>
Thread-Topic: [PATCH iwl-net v2] ice: support SBQ posted writes with
 non-posted support for CGU
Thread-Index: AQHc3tRZfcpI8HnZTUqJn6zPnz9cnLYKJYCAgANMRYA=
Date: Thu, 14 May 2026 11:58:20 +0000
Message-ID: <PH0PR11MB4904E65A7FAA26DD5B6EFBE994072@PH0PR11MB4904.namprd11.prod.outlook.com>
References: <20260508102247.826375-1-przemyslaw.korba@intel.com>
 <20260512092740.290008-2-horms@kernel.org>
In-Reply-To: <20260512092740.290008-2-horms@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4904:EE_|MW6PR11MB8392:EE_
x-ms-office365-filtering-correlation-id: a2b5cb8a-673d-4018-d0a2-08deb1b017fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|22082099003|56012099003|11063799003|4143699003;
x-microsoft-antispam-message-info: TnoHTKVsujQCD1tRJAADyQ2OO6CDIbf3oeHiekbjj1leesAfve8bnWQwaJa52shPgklwMMFUVFW/u/Utwbe+GmXg+cfeG1cYufSs+TEpdlMMu+DJ++91M2J607zqBdWwvLi1PAKBqjkb7kB/p2BkAl9AC201uggF95Yg8vHWuYPA6/o0BxYYqN/w+ZwNziQZpCJ9OFHSrkwDxx9MZCF0xde59RHnwF2iWlttVnD6h/ZZKQHuAWEBrT2zTKjh4itBHZtUGa8HGUk4L1Unjl+u79Fef4F6UTtZgk1eZ4ogQaXVZ73az5+llZdi2mpwXl2A45LynyT8aFU5Y9f0ySlAn+Nt9sBWUPTC3lQAbyekbaGs+i3AJq7vCv6J+eUZfvV27g3FXT4oZYb9F6cLmB8oKx8gHfWpBTC+JyXYmg1RGw7CKD6RBsw+paWf/hxPNwVW5Y23sSAPvQ9F4x3Eo9JaN76Frg0TmM7yeSULbj4Oyoesim7yE9H3XYSjgYPEOoRQrzLPQxTHQDA6TRjKnLtQUKrqgx+wh/jzy6s9A9ULSHGnRoVnUw9DGyc64/VujjhZd6KsbNooQk1Hi0Bkoz+XmfJMqZfEfmz80g8DFVxT6C4TgWnwAd9VtitwQvwk1jHi+ZfwLwQpqiGc20MFhMTh6Lhcv0G4cCKdTPyiVVttiisRIyPnoasxWxNWA9bJdHDZhrR2h878ItmbzVAhQdXxTQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4904.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003)(11063799003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3U1Tkw2ZEhWbDJCSTdpVmdoNlFzdHV3MkEwc2MvNzJwcFI1dllQNU16VDFo?=
 =?utf-8?B?TWN5VklhOE1lbHFVWUo0NHA4ZE02Vk1xQ09OWUx5bSs4NTZDRTlMSkZ4eTdr?=
 =?utf-8?B?V0VVK2tWZWZiN3lHN3d0T0VJeHFpb3BldHczV0dEeEJ6RVJBWDZEcmxQQmJi?=
 =?utf-8?B?eVk0QkxmeGlnL2IrNy95UE9TWmVLTWpya1UvYXpLYytXQnVUdW5pRXFSUWgx?=
 =?utf-8?B?Umg4eW9DUzd3QThkdWlLQnFodVA5L1F6WGVNRXNhYU02dmZheUZiTFNZMUZX?=
 =?utf-8?B?M2ZBTzlTTmlkbC9DbkozbDRPSmZRenBoTU1iVVRpa3FEb3BhSGs2bVA3a0tp?=
 =?utf-8?B?K240Rm5zNGxONkw1dThRa0VyL2NCalRNeWVheDNwTXpHSFZnUURhU2szdEVQ?=
 =?utf-8?B?TGR2SHc3Y25OSmd6ZG5aZWhIdXErMTlnTTlBeUNYRm5sajQwS21tZWZUSlFk?=
 =?utf-8?B?TE1FaFdHZ3Z1Q2JwTTI1SXJxOEdHOFhwY1NQbXJ2U0tYNU5GZXkzMzhzM1VN?=
 =?utf-8?B?eTRiNlgxL0FrY0o3QlM3SHd3alFqUlBSMVorTzlrU1ZOTmw5OEYrWU02YlU2?=
 =?utf-8?B?VlhKOFJCWjhhT1c2d1NiUkdDdFRuazRPNzBnZmJuek02ZTdxa1VYalFWN3Zq?=
 =?utf-8?B?OVRQbGRsQy9STWRqL1Q4Z2I3SnlBWTlReGFXREhpVjhndHd1a212SXU5QVpu?=
 =?utf-8?B?dkNxVzVqdmQxeURob3Q1NVVFSXd1QVN2aTNzQWozT25wN0YxbTBmK3lMVUF5?=
 =?utf-8?B?VWVnNW01bzlZNVNya3dEckVMU29hWUxPUDVsZjdLc0JDU1NxOG52RWF5Ykls?=
 =?utf-8?B?S0I2ampDcFFKNVpTTW54dkZCVFRPZ1NzNW9LcllxS1dPbGEvUlBMRUF5Ujdl?=
 =?utf-8?B?dy96bitVK3BuY3R4aDhjNGRybjZTaVdnOG9tUTN3eHBTRy9YbDZwaDlwZXNB?=
 =?utf-8?B?SEswY1Q4Zkt1Ylp1d3hCQ3E3OUFkbFd3SGxXZFp3R2VNRUNYUndQbEZIbHVF?=
 =?utf-8?B?bXBnd2tXZEpKNTE0alJLTVY2bmYzUUsyNEQ5VVFNMVBaR0hCRFg4SVFheitx?=
 =?utf-8?B?WTNHSzJkL01tRG1ndXpWeVprWjVCYTQ2ajc5YTg1R2FERkNtUlp6S3M1Q3h3?=
 =?utf-8?B?dDhBWjZPbXg1RDFYaWlXbmM2K0NvODFOZnBmUk5ZM3pINjlnVVMzSWV4QStL?=
 =?utf-8?B?U0hCaXdramFXU3E1UXEyTFRHN290SEdHRUJoZ3hDVWt0NGhOZHhnbDFWMWFh?=
 =?utf-8?B?N1htOGRWV3pidmZLTS9CYTBvU0ZLTytlNFdnS3VZSm90a1VzNy9ac1RsdHk1?=
 =?utf-8?B?bjFQTTZqVldWYnhObUtNQWVQZlhwazFQOVVhaGVQSTl6RkxuZEVaRUtMRHBj?=
 =?utf-8?B?eGsvQ04zRDUyaDZlTHBLb1Zmb3NxM0pRbGNsUlRJdW12U2o2azJKR0pMNzlh?=
 =?utf-8?B?aXhYaExvRXVtM25QWVZ0dGE5a2xpbFJjc3doc0kzbVFsTHg1dXVtVUFKMnZU?=
 =?utf-8?B?UHVxZFQ2UHdYZmExS1lPdWxOVXdGeENjcjZsdElKOEVYSWF6b3NGdFNCQjNM?=
 =?utf-8?B?YXM0MzhIcXl6aDZ0TXR5eWZQZjRYMFJoa0RsY1NqYU1kNjNRZHpPS2w0Qkky?=
 =?utf-8?B?UExyNWxVQ05TV25FRWxkZE5OMWJnMElsOW9UMVFVVjYyUkVTc29yRHZnY0U1?=
 =?utf-8?B?OXNKbXkxc1oxVDRMK013bTRkRXhaaUlOSlVWSUM2UktqQjRHK3JxU0tuUmQz?=
 =?utf-8?B?QytWWDhML0VmdmJpdDluWXVIZzBuVGVUdE5adHJUTnBCRkdSb3RsM3BRclNS?=
 =?utf-8?B?a2I3QWFxemQvVjQzQ3RnaHI1RjhPdld1c09iQVJESG50U1IyZ29iSFZ6SHN2?=
 =?utf-8?B?VWFpazNJZU13OUFKL2xlWlFNbVBKVklzVHdyS2tCeHdoNFBhTEFVVWdsTG8y?=
 =?utf-8?B?U05xOU9GN0d2Q3JVM1hYZGpPbHFmWmN6SnhUV0xQLzBSeHJURGcvRUJ0QVU1?=
 =?utf-8?B?OXUvTWlnelVTZ2ZGdk0vd0dwY3pJa2kxZVNIQzJCUXhhN0FIQzlmL0NydWdo?=
 =?utf-8?B?QmFNUTNmbG5tUFhQT0pvaUc2NDQyNC9SQjk5NXlKaE5FaWhITHU3ZjdxSksy?=
 =?utf-8?B?RVB5SjJGL0ttK2thT0R1ZVE2eGhoUCtjbkk0MGk1UVg1d01zWFlTeGNwcVFs?=
 =?utf-8?B?a3ZYWDFXNE9VR1RIYUMybVRLWVBtb2FjRjN2UkVUTDc0SjNQejY3UFFpamlH?=
 =?utf-8?B?eVdoVjV6YTJrZWV5dkVkdlkxMlIwcExwYkt0TkhmMDRUSGRCTVFhdGN0aDA0?=
 =?utf-8?B?Ylg3ZG03SjZpTTZEc1ZvSDVFSjBMMUFtOElzOG4yUmprTEYwTHppZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RQSn8TR07sw0s+cn45S4hZL3wTW3+7mqjDvNOAgSrLI24/T+gk2mCSio2jT64s7QBNcBezqliajjTQhxp1ezSY9AWmHLdyfDTABEpvi3nEGRX2rD+wf7JeMYSwjEcGKURvhsoxQSWNNZu0JjBTPOFFBtlmPcmAbR9rU4gFtuPCgz1eZxUP2SehiRJVyDykrU7SyydAmTfbhW6gI6ya5042R3jx4XXekb0mEcb+HgYoywCEY0qkx7Sz2gjceUgfz6UiZRj5a249J87io83VwQYsMuNQjF/TxcspqpS2urBzXMQqUvv+A9kU9WE7neQoykdMfwbc+PVRkEfwnUnBgH6Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4904.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2b5cb8a-673d-4018-d0a2-08deb1b017fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2026 11:58:20.7646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: puJ7eQJWwjSpcr75n/oZRYOvFgfNIJjl1ZvNuSUQVyFec0fUtaBta79mL/xGcOizsI02or1F0y2eaiU3rtkDUOpO1SJtU6RhA96n7HQv5ec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8392
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778759915; x=1810295915;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NDHoNC3JQQcIyZcIHmMp/TvDYcWl9wLNTuMKT0QrKWc=;
 b=m2OuQDjrfIoEWtAKnNll9WnlC2sD+rCiuIXDHZIWaTCbvo+hNJuzBzuA
 GoQwgqMrrrlA2l6hX/KTtWenX7IUaQ2FXpSbf2a3CA4jx7k8M5/vLeoJ2
 b5GeZGIjJ1GARzRG1NVVF3BNmpLmgrO1Iw9z6rlss8dwsYCuc5PGcAoyN
 u/c/a+00147d0JEAsRn6R/8yBt33tM+2bVaKFItunZDWL4ngjwqtQ6Dqu
 q9zo+Zmob4Uh/mg1H4+mLksb4c8irhFRDKT3wxC4UFlQfuK658MdbZRio
 Ph3Lagdg8oRJxX739AajXaXFnyuHKwP2ixnfH/evAyJhsDCy0j4u18oeg
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=m2OuQDjr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: support SBQ posted
 writes with non-posted support for CGU
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
X-Rspamd-Queue-Id: D0D1F5414BF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,sashiko.dev:url]
X-Rspamd-Action: no action

DQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTaW1vbiBIb3JtYW4g
PGhvcm1zQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IFR1ZXNkYXksIE1heSAxMiwgMjAyNiAxMToyOCBB
TQ0KPiBUbzogS29yYmEsIFByemVteXNsYXcgPHByemVteXNsYXcua29yYmFAaW50ZWwuY29tPg0K
PiBDYzogJ1NpbW9uIEhvcm1hbicgPGhvcm1zQGtlcm5lbC5vcmc+OyBpbnRlbC13aXJlZC1sYW5A
bGlzdHMub3N1b3NsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgTmd1eWVuLCBBbnRob255
IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdyA8
cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVr
c2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47DQo+IEt1YmFsZXdza2ksIEFya2FkaXVzeiA8YXJr
YWRpdXN6Lmt1YmFsZXdza2lAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1u
ZXQgdjJdIGljZTogc3VwcG9ydCBTQlEgcG9zdGVkIHdyaXRlcyB3aXRoIG5vbi1wb3N0ZWQgc3Vw
cG9ydCBmb3IgQ0dVDQo+IA0KPiBGcm9tOiAnU2ltb24gSG9ybWFuJyA8aG9ybXNAa2VybmVsLm9y
Zz4NCj4gDQo+IFRoaXMgaXMgYW4gQUktZ2VuZXJhdGVkIHJldmlldyBvZiB5b3VyIHBhdGNoLiBU
aGUgaHVtYW4gc2VuZGluZyB0aGlzDQo+IGVtYWlsIGhhcyBjb25zaWRlcmVkIHRoZSBBSSByZXZp
ZXcgdmFsaWQsIG9yIGF0IGxlYXN0IHBsYXVzaWJsZS4NCj4gRnVsbCByZXZpZXcgYXQ6IGh0dHBz
Oi8vc2FzaGlrby5kZXYNCj4gLS0tDQo+IGljZTogc3VwcG9ydCBTQlEgcG9zdGVkIHdyaXRlcyB3
aXRoIG5vbi1wb3N0ZWQgc3VwcG9ydCBmb3IgQ0dVDQo+IA0KPiBUaGlzIGNvbW1pdCBpbnRyb2R1
Y2VzIG5vbi1wb3N0ZWQgU0JRIHdyaXRlcyB3aGlsZSBhbGxvd2luZyBwb3N0ZWQgd3JpdGVzDQo+
IHRvIHNraXAgY29tcGxldGlvbiB3YWl0cy4gSXQgYWxzbyBhZGRzIGFuIFNCUSBmbHVzaCBieSBy
ZWFkaW5nIGFkZHJlc3MgMA0KPiBmcm9tIFBIWSAwIGJlZm9yZSBpc3N1aW5nIGEgU1lOQyBjb21t
YW5kIHRvIGVuc3VyZSB3cml0ZXMgYXJlIGNvbXBsZXRlZC4NCj4gDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmMgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jDQo+ID4gaW5kZXggMjRmYjdhM2UxNGQ2
My4uZWM0Yzg1YWQxMmU0ZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3B0cF9ody5jDQo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9wdHBfaHcuYw0KPiA+IEBAIC0zNTIsNiArMzUyLDE3IEBAIHZvaWQgaWNlX3B0
cF9zcmNfY21kKHN0cnVjdCBpY2VfaHcgKmh3LCBlbnVtIGljZV9wdHBfdG1yX2NtZCBjbWQpDQo+
ID4gIHN0YXRpYyB2b2lkIGljZV9wdHBfZXhlY190bXJfY21kKHN0cnVjdCBpY2VfaHcgKmh3KQ0K
PiA+ICB7DQo+ID4gIAlzdHJ1Y3QgaWNlX3BmICpwZiA9IGNvbnRhaW5lcl9vZihodywgc3RydWN0
IGljZV9wZiwgaHcpOw0KPiA+ICsJc3RydWN0IGljZV9zYnFfbXNnX2lucHV0IG1zZyA9IHsNCj4g
PiArCQkuZGVzdF9kZXYgPSBpY2Vfc2JxX2Rldl9waHlfMCwNCj4gPiArCQkub3Bjb2RlID0gaWNl
X3NicV9tc2dfcmQsDQo+ID4gKwl9Ow0KPiA+ICsJaW50IGVycjsNCj4gPiArDQo+ID4gKwlpZiAo
aHctPm1hY190eXBlICE9IElDRV9NQUNfRTgxMCkgew0KPiA+ICsJCWVyciA9IGljZV9zYnFfcndf
cmVnKGh3LCAmbXNnLCBMSUJJRV9BUV9GTEFHX1JEKTsNCj4gPiArCQlpZiAoZXJyKQ0KPiA+ICsJ
CQlkZXZfd2FybihpY2VfaHdfdG9fZGV2KGh3KSwgIkZhaWxlZCB0byBmbHVzaCBTQlE6ICVkXG4i
LCBlcnIpOw0KPiA+ICsJfQ0KPiANCj4gWyAuLi4gXQ0KPiANCj4gPiBAQCAtNDQ2OSwxNSArNDQ4
MiwxNSBAQCBzdGF0aWMgaW50IGljZV9yZWFkX3BoeV9yZWdfZTgxMChzdHJ1Y3QgaWNlX2h3ICpo
dywgdTMyIGFkZHIsIHUzMiAqdmFsKQ0KPiA+ICAgKi8NCj4gPiAgc3RhdGljIGludCBpY2Vfd3Jp
dGVfcGh5X3JlZ19lODEwKHN0cnVjdCBpY2VfaHcgKmh3LCB1MzIgYWRkciwgdTMyIHZhbCkNCj4g
PiAgew0KPiA+IC0Jc3RydWN0IGljZV9zYnFfbXNnX2lucHV0IG1zZyA9IHswfTsNCj4gPiArCXN0
cnVjdCBpY2Vfc2JxX21zZ19pbnB1dCBtc2cgPSB7DQo+ID4gKwkJLmRlc3RfZGV2ID0gaWNlX3Ni
cV9kZXZfcGh5XzAsDQo+ID4gKwkJLm9wY29kZSA9IGljZV9zYnFfbXNnX3dyX3AsDQo+ID4gKwkJ
Lm1zZ19hZGRyX2xvdyA9IGxvd2VyXzE2X2JpdHMoYWRkciksDQo+ID4gKwkJLm1zZ19hZGRyX2hp
Z2ggPSB1cHBlcl8xNl9iaXRzKGFkZHIpLA0KPiA+ICsJCS5kYXRhID0gdmFsDQo+ID4gKwl9Ow0K
PiANCj4gU2luY2UgaWNlX3dyaXRlX3BoeV9yZWdfZTgxMCgpIGlzIHVwZGF0ZWQgdG8gdXNlIHRo
ZSBwb3N0ZWQgd3JpdGUgb3Bjb2RlDQo+IChpY2Vfc2JxX21zZ193cl9wKSwgaXQgd2lsbCBza2lw
IHRoZSBjb21wbGV0aW9uIHdhaXQgYW5kIHJldHVybiBpbW1lZGlhdGVseS4NCj4gDQo+IElmIHRo
ZSBTQlEgZmx1c2ggaW4gaWNlX3B0cF9leGVjX3Rtcl9jbWQoKSBleHBsaWNpdGx5IHNraXBzIEU4
MTAgZGV2aWNlcw0KPiB2aWEgdGhlIGNoZWNrIGZvciBody0+bWFjX3R5cGUgIT0gSUNFX01BQ19F
ODEwLCBkb2VzIHRoaXMgbGVhdmUgRTgxMCBQSFkNCj4gd3JpdGVzIGVudGlyZWx5IGFzeW5jaHJv
bm91cyBhbmQgdW5ndWFyZGVkPw0KPiANCj4gQ291bGQgdGhpcyBsZWFkIHRvIGEgcmFjZSBjb25k
aXRpb24gd2hlcmUgdGhlIHdyaXRlcyBoYXZlIG5vdCBhY3R1YWxseQ0KPiBjb21wbGV0ZWQgYmVm
b3JlIHRoZSBTWU5DX0VYRUNfQ01EIGlzIGV4ZWN1dGVkPw0KDQpIaSwgdGhhbmtzIGZvciByZXZp
ZXchIA0KV2l0aCBFODEwIG9ubHkgb3Bjb2RlIDB4MDEgZm9yIHdyaXRpbmcgaXMgc3VwcG9ydGVk
Lg0KT24gRTgxMCwgdGhlIEZXIGFsd2F5cyBzZW5kcyBjb21wbGV0aW9uIHJlc3BvbnNlcyBmb3Ig
b3Bjb2RlIDB4MDEsIHNvIHRoZSBkcml2ZXIgd2FpdHMgZm9yIGVhY2ggd3JpdGUgdG8gY29tcGxl
dGUuDQpPbiBuZXdlciBFOFhYIGRldmljZXMsIG9wY29kZSAweDAxIGlzIHRydWx5IHBvc3RlZCAo
bm8gY29tcGxldGlvbiByZXNwb25zZSksIHdoaWNoIGlzIHdoeSB0aGUgU0JRIGZsdXNoIGlzIG5l
ZWRlZCBiZWZvcmUgU1lOQ19FWEVDX0NNRC4NClNpbmNlIEU4MTAgd3JpdGVzIGFyZSBzeW5jaHJv
bm91cyAoZHJpdmVyIHdhaXRzIGZvciBjb21wbGV0aW9uKSwgZmx1c2hpbmcgU0JRIGlzIHVubmVj
ZXNzYXJ5IC0gYWxsIHdyaXRlcyBhcmUgYWxyZWFkeSBjb21wbGV0ZSB3aGVuIHRoZSBmdW5jdGlv
biByZXR1cm5zLg0KSSBjYW4gYWRkIGNvbW1lbnRzIGV4cGxhaW5pbmcgdGhhdCwgb3IgbWFrZSBp
dCBhIGJpdCBjbGVhcmVyIGluIHRoZSBjb2RlIGlmIHlvdSdkIGxpa2Ug8J+Yig0K
