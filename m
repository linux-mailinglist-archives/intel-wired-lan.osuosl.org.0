Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B45A681FBD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 00:35:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A11140B87;
	Mon, 30 Jan 2023 23:35:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A11140B87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675121704;
	bh=URXN77/dKDoPsdadnmDhe5BPKik1zytzE/rHq/afvaY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3JFe9mC0nJuu+E2WQpdA9YJjlaoCCPVs+VlC+EBETTodg27yGf9eUPCImrpFw0a38
	 /dRn5HvwK/GM5eQZIIBTZBP7OG+wPuUf9xtAFNoHubpFaLSaQWd99Bc7At5OQchCxL
	 zHQGK30XTH07thX3yt0sLYRSx8x+x/X+H3DbO4K9xsl7YkWhGsMjGxhLVS+8lLzobo
	 XfLvS+U3TERj+XsNf2pI7SW26KH76NofiKYjNNqnaJBe01cNe7bSFU6JfdfwIHCiv6
	 efIewV2Sy5UnXY6M25ufxPjCsN/l+Qgj19LB8gTkBoOQ61xNngtq6JozNgAwM2GOK0
	 iAqO7y8tErUCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j9oaEpZ-V55V; Mon, 30 Jan 2023 23:35:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EEF0A40BA4;
	Mon, 30 Jan 2023 23:35:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEF0A40BA4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F0281BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 23:34:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6AEE740B69
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 23:34:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6AEE740B69
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eIAHmou3ceG8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jan 2023 23:34:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5E8240AA8
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A5E8240AA8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 23:34:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="355025619"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="355025619"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 15:34:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="772719505"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="772719505"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2023 15:34:55 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 15:34:54 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 15:34:54 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 15:34:54 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 15:34:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PQ7g6cR+lpy9uKOLA4V4dwHcrp3Yw06xaPF0ZN3kXy8+ICDf77tveE7bZsVMilxAwq1eD2NbkG3m9KX6DJj/u5eI5ctys5b21pQd2QOVfU4SjrYi9ehHafh5gHPONPgPcfs2tzi6tIpx3Ry4OcwXh7eTElD1PvArZdQucy5UrxGEbZ7OxK+VNUD8zFpcb7MQDJWOSTgZ45hEKB/p6WPKAoeoxADn9+/B/P/RPpcrb5wnT0yhZxRSFbW0OoToekfHWar1dkLtLRxUafJPk0E+JDmp1VqkEVzhQYp4Jfz58vvt2j92iKJW0gj20lf9C1aL+m3QIzMyXBDNFAFCHUW2xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FRRRDp0lA1eeeVFkWry5vnaGhJTqSS2mWRwYVosTMlY=;
 b=CGvPhDZ2oV4lI9kfJK5IrdzQr4c7+MmQdPdaEPHypvwDW64DCqO2DcbkUvbbDILhQx6TXKJUE0rD2oniqqYPb3g5Q8nfGn1KzxCQEl+EoxNrC5Sn5ar3uP6KWCjZuDoncW8El48Jbtl91Er4uZgKqwU6w4ztwohbBS5r3ZYcNNIjOkX81aNpx3eRzyrXS+zf/qO4k+eQbrUdCY4TVVqXN52TXe2DWfvzUmwH716rFeI7S8/uHi8TTxKbg7SGrsCNSR1pfmJ80H19LHXR7Gl/0HERSXqowsNYUvqyxJiGX7eWNTShpUNzqYPOt04XqIHPD9WIA8O33j5lNAJmCYhbcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by CY8PR11MB7195.namprd11.prod.outlook.com (2603:10b6:930:93::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 23:34:50 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::6e10:28f9:f32b:c0d3]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::6e10:28f9:f32b:c0d3%3]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 23:34:50 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Dave.Ertman@intel.com"
 <Dave.Ertman@intel.com>, "Saleem, Shiraz" <shiraz.saleem@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 05/13] ice: Fix RDMA
 latency issue by allowing write-combining
Thread-Index: AQHZK6PNhVnK46F5OE2o+5BNBxc2VK62zN8AgADg8WA=
Date: Mon, 30 Jan 2023 23:34:50 +0000
Message-ID: <PH0PR11MB5095133D185FFC8E81B06558D6D39@PH0PR11MB5095.namprd11.prod.outlook.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
 <20230119011653.311675-6-jacob.e.keller@intel.com>
 <83d3f5c1-1f3f-a08e-1632-df8bc7b8ab7b@intel.com>
In-Reply-To: <83d3f5c1-1f3f-a08e-1632-df8bc7b8ab7b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: anthony.l.nguyen@intel.com, Dave.Ertman@intel.com,
 shiraz.saleem@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5095:EE_|CY8PR11MB7195:EE_
x-ms-office365-filtering-correlation-id: 61022472-92fd-49e7-aea0-08db031a9501
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4n/pIdZs6kbWc0cMZ7s8zl6xZD8fVFJv2vGRvkwRQxOz3vvsJpZwJWZH2ppkfWKWDigyn+qfuM20iQvpw0htFoELLoaHzhvhQVjYh+cxO7Hc7JVOmBse4dvbUSSI0InXDLYGd39euHEeKko7pT1x9S8e4k7mg1NGyUdtYTcGHior/n+Zk8lRykULUYIfJ1Jn2hxbmHz9nbKW8Trtl++3fjGvggyS+OXC1b0R6ZB+ZKdO86iln/S0tWWhCDkIfvH6rNVf7y3/WKHc779Vw/l7WAprH2fafWLg5YXQej7lDSXGmjUse3A5zsGPhFjiLjO3jPWgpiUPU6xDIlCfozCr2D2ZlY5A0tZSi+UKR70L4kXuCLuOXF20SAIK2n8WgFcEGBX+dv2D0BZFle8HwY9PAXUL3HJnQ/wczZVfh4qDOOCvaHOUPYfE/OQzEEqZxAagXXVHYxpqdpafib4YufCcz9K1zu3gGNgmfICbnE+XDVkcwrx7fpsqvjcZU6v/k4Wh5kwVNRSAb/d9cMH4FvCJB9CY/ewI/vM4L0UJNYYKaEnNr9YvrVKB5O9FSvERjR2z56NK9P8OYBdEZQN8EyTVdx/nFKilRpsV6bpNSzX8dPN78JdrduRnwmZDYyHp7bTj5qNYlWD1MEAM/PlB8pKCmiKnr2eIVNcWRYBcogKhFS+J/H05TBaGEiVlMGe4iV8y+no0fnVkBRO/nNjUo8GJ+g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(136003)(39860400002)(396003)(366004)(451199018)(83380400001)(38070700005)(38100700002)(122000001)(82960400001)(86362001)(7696005)(2906002)(71200400001)(53546011)(6506007)(26005)(9686003)(186003)(478600001)(55016003)(33656002)(66946007)(8676002)(66556008)(66476007)(66446008)(64756008)(52536014)(8936002)(41300700001)(76116006)(4326008)(6636002)(54906003)(5660300002)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eTFyOG1PWnlIN1hzaTRGSXNnKytmODFQeHFSYU8raDFsNGJjUnBoQUJwaDRX?=
 =?utf-8?B?d1ZCQmg3aDNTOUxyZC9yZnNWQmVWNzVBdWhLUUpGYmZEOHdnUVdLeTBDUDZ2?=
 =?utf-8?B?YmNjV1BndS9tTW9sWTRqODNqWEFoZkpramx5Qi9ST2tnOUIwMXdzV0FiVlVn?=
 =?utf-8?B?emcvdlY3cERURVk0N2RraGtHSFF5MXZBYk90NjBSNWVlS0VnS1FSemNLc2VI?=
 =?utf-8?B?ckpWMERqYytmR1RLMXZQVThGOGxFNXpPelJEN0VYbXM1M1ArNmJoZ0FiZnFh?=
 =?utf-8?B?SnVrOEFqRkVXWjJxbENKWTNZR0ROY2gySFFzVkhjaC9NRm0vanRtYUlDQlIz?=
 =?utf-8?B?U3BLU09jaEFuQloySEpDVVNhMTNsdjhNVWNnYnBZRy9oa0RKSzhPMFRQa2J1?=
 =?utf-8?B?QU9HcDFQV1gzSG5JMzBQTzF4T1NrdG5lbHVVTmhYcUFUd3FIcmFkWTRiYmxD?=
 =?utf-8?B?UlIyTkhKL2hqMEk1eDR1MEVWcWVYckFBUHl2eTBVQTV2MUVFTFFTNlhqZGt5?=
 =?utf-8?B?K1FCWDRNMUVibWh0YmxDMmFDRmVkeTJKSnEyaGdHdlZFV0x2WUZ6OWFwSVow?=
 =?utf-8?B?b0VhRFpqS3lEVjZoWXIyaTN3UWxXWGFDQzJtTnNlZTRDMkNPRkpyRVMvU0J4?=
 =?utf-8?B?RENnRklZd2xPaUVPdGovUHhlMTkyUnFFM0lRNFo2RFJLaWhsdjltZTRaMnlj?=
 =?utf-8?B?UmtaWUJDZmxnL3R5UDgwa3k2ZGF3SE45MVlXZmxOSzV3UnBncFJCbEdIR0NE?=
 =?utf-8?B?ejRCYjFvQkJqaEZnVk5MRDd5WWxZYkdDMGs2TGw4WHIyY09TV1QwUGZhUUU5?=
 =?utf-8?B?TXpIbXhCTWc3cUs2YlVUTWhId2JVdEVlVCt6b3dFOVN0d1JXS2Jtc3MzUTlI?=
 =?utf-8?B?ZU5jNTF3aldLbksvaExqdVZNRnlXUHllZk1OaCsxYnVwUXBLc1pFNVp3cVVM?=
 =?utf-8?B?UlBOVkhoWldESTh4S2F4MmVJQ25NUDRsT1JHRUU0bzY1V0hDWUhjckhzdWor?=
 =?utf-8?B?SjV6c3dCcWRPV2xFTmlJeTM3cXVpMHl3RnhEZ3dNb0IzWnB3WVErRm5YZFhE?=
 =?utf-8?B?NmhUUk40SkVRd29KbXRUcm4yK3ZmZXFYcVdmWTdZUitrSmNvZDJZNE5XN2Nn?=
 =?utf-8?B?VStvWUlya3NIZmZOVVZtc3BZOGVjeFIrQWNyT3lBbGQ4WEJYQ05Melpaa3JK?=
 =?utf-8?B?RmdWdjlyeU1VbWQ5T0t3WUQ0WFBSK2VrcE5YS0ZmYWFCUVhaNHpRZnUrcEwr?=
 =?utf-8?B?RUdKejNQUW9JMEpjVnd6a2U1WUJIU1E3RE1IdjVCSUtZZDZ1WG5FMGc2UTV2?=
 =?utf-8?B?SjlaNFZIRFRxdFJUMzdWb052ckQyMjVHVnQ5Q2o2UHVSdE9XUVZIOFRTeHRr?=
 =?utf-8?B?UXQ4V3A2bFp1bFFRQTFrdmtSa3pvbStDYlAvZm5Rb21DVDFWVExGODlmZkdH?=
 =?utf-8?B?c3AvbmdQaVd2ZytDZktZZGNNMjYrUkgySlRVZFhMZ1N4S3JJaU0xUlRMVC9t?=
 =?utf-8?B?eGtQczZoeDRqQmVveUxRbll0RCsrMEQxd0ovYWN3UXB5bnRCSUZlS29FMlRO?=
 =?utf-8?B?QUU1c2ZEWnF6cTJEMWlhMHhDSmJENWl4NGNubEZ3amVRejN1V1VOczVERnNQ?=
 =?utf-8?B?VzJjNVNrMzd3b2JaRGhIazU1NUhpbUxJanJuOXNrNldrYktXYkgyZ1JTZ09N?=
 =?utf-8?B?bmNWWTIrQmFyYzlqWTBQelVOWmF4d1g5SVJQdlBpUlRxVkI3SnRpdWRHb3pD?=
 =?utf-8?B?VXFyMHNIVGZDY1hJVDZERHdoQU5LVGV3bWVIUUVPQnlGQzdKbXYvLzMybWZn?=
 =?utf-8?B?bG5TRHp5NjJDb2trNFBnQVNGdjUwc1ZadVp4SG9XRFNha1ZqUmxxZWVyOW1Z?=
 =?utf-8?B?UzJDTHRWNFdLK1ZBdkczTDgvK2pJb2NCSG5iVE8xSnlYMUQxTE53OXBMWEZx?=
 =?utf-8?B?WXJxdWdhb3B4alViaU1HZnJWYTdwQVVGbUlxd2txVmFDS2VTQ3MzbzYveDdu?=
 =?utf-8?B?MVA1ODh2dllKanF4L25YN3p6MnZsQVVlUCtwQStSbVlUdWhOK2NBdHM3c0E3?=
 =?utf-8?B?ZlBtMzVmZTRmMzBwWkwyVmUyK2NtQmFqak5ENVFiZ0NZL2xJaUE2RFBlaGo0?=
 =?utf-8?Q?QqjENVlwi+UbDHhmDjXM0Bmlp?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61022472-92fd-49e7-aea0-08db031a9501
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2023 23:34:50.6693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7jrEs6aT8hSL/tCR5UqMinjucsHyF7ZP+4+ozGxyL1aaggmSD16uG8ftCLZnUptty7/zsKF6MjlAZdTd9k148zt+h6htN3zngDKlX+u288g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7195
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675121695; x=1706657695;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FRRRDp0lA1eeeVFkWry5vnaGhJTqSS2mWRwYVosTMlY=;
 b=midfLtz++B8KUtOFuRiq2E4MSIhP3/HVQZHjtdWj08eBhGtoVaMtQPci
 EmloV7ojCJ1iX6dWsF1hs8zXyCSL/uoMbolXcD7sTt3/y8eK+1n2RbXxp
 /FMmkdGAm4hjJPAVl4kycF5iLiIg6D6DxQTCC5u7/7QzRA9SEW6yHmJvO
 8/dpoSLoSN3VAhy1QsdAvs7LHZV8u9v/l07AMdg/LULthfKw/nw15ln/U
 1v9TktnYu9HhoKJlqnmItCakdzyccJLhOQEU1oGDhhz+rLeJ7XBIKvPF1
 Kn/uzHmyC7rPodcX0KF6hhMKyatm76F89xdDlDqhTTA+SSIp4YHtZ8m/7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=midfLtz+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 05/13] ice: Fix RDMA
 latency issue by allowing write-combining
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> Sent: Monday, January 30, 2023 2:03 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; netdev@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH net-next v2 05/13] ice: Fix RDMA latency
> issue by allowing write-combining
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> Date: Wed, 18 Jan 2023 17:16:45 -0800
> 
> > The current method of mapping the entire BAR region as a single uncacheable
> > region does not allow RDMA to use write combining (WC). This results in
> > increased latency with RDMA.
> >
> > To fix this, we initially planned to reduce the size of the map made by the
> > PF driver to include only up to the beginning of the RDMA space.
> > Unfortunately this will not work in the future as there are some hardware
> > features which use registers beyond the RDMA area. This includes Scalable
> > IOV, a virtualization feature being worked on currently.
> >
> > Instead of simply reducing the size of the map, we need a solution which
> > will allow access to all areas of the address space while leaving the RDMA
> > area open to be mapped with write combining.
> >
> > To allow for this, and fix the RMDA latency issue without blocking the
> > higher areas of the BAR, we need to create multiple separate memory maps.
> > Doing so will create a sparse mapping rather than a contiguous single area.
> >
> > Replace the void *hw_addr with a special ice_hw_addr structure which
> > represents the multiple mappings as a flexible array.
> >
> > Based on the available BAR size, map up to 3 regions:
> >
> >  * The space before the RDMA section
> >  * The RDMA section which wants write combining behavior
> >  * The space after the RDMA section
> 
> Please don't.
> 
> You have[0]:
> 
> * io_mapping_init_wc() (+ io_mapping_fini());
> * io_mapping_create_wc() (+ io_mapping_free());
> 
> ^ they do the same (the second just allocates a struct ad-hoc, but it
>   can be allocated manually or embedded into a driver structure),
> 
> * arch_phys_wc_add() (+ arch_phys_wc_del())[1];
> 
> ^ optional to make MTRR happy
> 
> -- precisely for the case when you need to remap *a part* of BAR in a
> different mode.
> 
> Splitting BARs, dropping pcim_iomap_regions() and so on, is very wrong.
> Not speaking of that it's PCI driver which must own and map all the
> memory the device advertises in its PCI config space, and in case of
> ice, PCI driver is combined with Ethernet, so it's ice which must own
> and map all the memory.
> Not speaking of that using a structure with a flex array and creating a
> static inline to calculate the pointer each time you need to read/write
> a register, hurts performance and looks properly ugly.
> 
> The interfaces above must be used by the RDMA driver, right before
> mapping its part in WC mode. PCI driver has no idea that someone else
> wants to remap its memory differently, so the code doesn't belong here.
> I'd drop the patch and let the RDMA team fix/improve their driver.
> 

Appreciate the review! I proposed this option after the original change was to simply reduce the initial size of our bar mapping, resulting in losing access to the registers beyond the RDMA section, which was a non-starter for us once we finish implementing Scalable IOV support.

Searching for io_mapping_init_wc and io_mapping_create_wc there are only a handful of users and not much documentation so no wonder I had trouble locating it! Thanks for helping me learn about it.

@Dave.Ertman@intel.com, @Saleem, Shiraz it looks like we need to drop this patch and modify the iRDMA driver's method of requesting write combined regions to use these new interfaces.

@Nguyen, Anthony L Can you drop this patch from the series on IWL or should I send a v3?

Thanks,
Jake 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
