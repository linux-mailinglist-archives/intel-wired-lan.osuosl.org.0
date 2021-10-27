Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 179FD43D704
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Oct 2021 00:57:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9918C60B38;
	Wed, 27 Oct 2021 22:57:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gLMe25lJiyOy; Wed, 27 Oct 2021 22:57:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E8DF60B3A;
	Wed, 27 Oct 2021 22:57:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E7BB61BF295
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 22:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DFD8A81D5C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 22:57:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vX0Occ43gOfF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 22:57:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A57D082430
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 22:57:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="291119796"
X-IronPort-AV: E=Sophos;i="5.87,188,1631602800"; d="scan'208";a="291119796"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 15:57:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,188,1631602800"; d="scan'208";a="723553516"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 27 Oct 2021 15:57:02 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 15:57:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 15:57:02 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 15:56:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TmdafajgNVXOivEG1NPHZzuK6+zpk5BWF0CevdZN9SoZ6tfkjrdgGoGa69t+s9pWKjx3/B+6rE/2WZj3e+3bRtJi9wjb5uficWXpBQZibW9KyAyh6BIWWQVSoU2TNn1NrfkcmlqLMLXw/FlOrhrgEpP3PNIIaBIc+x5vVI5ljF1jO99ESizjUKeWk3Ss4lGZKC+tOlEZSif2ufqozjM24UQPMMjtg64rB99Iozod65xxurSIPfL6hDMWKjA6eN8TDlSS3EZ4TUa5I2jXv5x7UVB0GuhAA9H8g72vxJVP146tP43bHLeEfKNfYiJ95oMvCMlYlonRl7wUkm/N/SFaog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OOGvzUTOop6YHyxPps//eq9uYN7wNQ2IwyhFP6o4HlA=;
 b=klbLlhZEYpN9sS5RUKDH1MIVJ2eJa79SqLZcslp8Ju/XqPSn/1vs8SfmR3p75ZcYr3AqjqO+7rAlxiKhrH0tpNR9KoLaNBKNmwBctvSzJWUJTUBkuOFqc/R4Qq8hYAd2Xvlw8TZZTd6sK88gClZmBHFZoCEQc9A2pGLGHWdhNc+rh33Yt1jhfZnxBG+hP7dZU0lZDV3MT3LJsa6bDJl1KD6n0NF8HTRhN16SD+nHFk3cn88YtvANQertrieoiIyqV3PPqbF1VovUGz8DejEQM6EjDQBwaCHiF0JzNwEPy8yxTbrJl5Vj+W+2zHWN/ZMGnkncHzcfOXhIiMhl1nAHPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OOGvzUTOop6YHyxPps//eq9uYN7wNQ2IwyhFP6o4HlA=;
 b=hJTxpiXnZ/JWHPpExTb7LBB+85Uw2G7qnNqjANBuT/7LELJxMksL6UmnVoW4YeO7J3fQxkw3f8oiiJUxL9VSdk0/fWOWkfq6pfMkw8ggRMEGX8p7vi0GBXHMrmdg3mXLG4lhmJXgPZQB5Nq30PYFiFboJFPIxeCaB5lzS97dt28=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR11MB1520.namprd11.prod.outlook.com (2603:10b6:301:b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Wed, 27 Oct
 2021 22:56:57 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::1c41:b47d:6152:d72]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::1c41:b47d:6152:d72%4]) with mapi id 15.20.4649.015; Wed, 27 Oct 2021
 22:56:57 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [net-next PATCH v5] ice: support immediate
 firmware activation via devlink reload
Thread-Index: AQHXygyyzY2yNFkwhkqAHetYubrqJKvkvh4AgAK5qIA=
Date: Wed, 27 Oct 2021 22:56:57 +0000
Message-ID: <d72d3aa5-d8f9-8e66-36c2-e266932bdfd9@intel.com>
References: <20211026015537.424232-1-jacob.e.keller@intel.com>
 <e3cafbba-4f77-2ad8-6e94-62ffd2ab1dce@molgen.mpg.de>
In-Reply-To: <e3cafbba-4f77-2ad8-6e94-62ffd2ab1dce@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2aad018a-b26f-4553-4dde-08d9999d140d
x-ms-traffictypediagnostic: MWHPR11MB1520:
x-microsoft-antispam-prvs: <MWHPR11MB1520C05B41DC20944B126C94D6859@MWHPR11MB1520.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7tq3tVO50zXCptbpvL58f81qwiaYhM1YEnAPwwNoIV7Fau+4A7tyrZeF1rwKCdnPhNUQDxuVzjWnvuLRxZxGaXgwTOArrDHW2dJWW7gmw2RYOXP3LtWEqWD5h0ybxH3ZIb9aALAB9wxzoKRN7OF3cnVGgqWJBBmqjMF8aEYCQeyOC9lU7QdUcAWqBgTtGGpCeb2M4FOjdDh73LDuYpu86WebKm4MHA3TRWY8RuCNCoEPsOQ4xQCeFpg64Ps9aFdPErDwoHeURQT2WGLqNbAc46cyVHSbciRqLkfLcG5Mg8xXNphXeJwVEIIWXfVewDpF6/9zcu6GR6WBclqVRJcZA4Hn2wHJ3Y6stPz9+/nwLkNrpMMBZ6MiazH+6kFBrmqsnbtJapnNGNGb1hKvBXSbPdSq1B4PLiFQSaZSXtDVIiZMDsNXBgM2xvrzKNIM2O6jOYQs3eS2v2JTF4CMvT4JVIRpznhS30d0i064aaAvQvqmo46W/LmzVVAnJsbrzRCd1tGIEbU7HiPO3B5vMgQhNcewIKMtg2QhLtCAhH2zM5r424baJp2GeWbFh7onG88GgU0HXd5wn/eF4+Q3oOO5Fa+pgEYUgGE5CTM88BNsl3NzJ4sQN2JeShu8COIV3E/E8NnUa7eHK/LH60BZ05IxoVuGOQRaV5nKo32aKB309adrgGcpCzJjngD5jxTH1T/gkuPTa678A7kYnHE/wL+VL0Kea+N5iBOpnx3F1vasXRvsQ95PjcoVD61w2JUxaQEkJzHochTtLIIXpFVkD/SyPOV/zXAgBnMEsm3tiGX2Cac=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(53546011)(6486002)(66476007)(26005)(6916009)(186003)(66556008)(64756008)(66446008)(6506007)(508600001)(2906002)(5660300002)(316002)(8676002)(4326008)(31696002)(38070700005)(8936002)(54906003)(86362001)(6512007)(76116006)(122000001)(31686004)(36756003)(83380400001)(38100700002)(71200400001)(82960400001)(66946007)(2616005)(14773001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UHN0N2xsRlNScUVRU1JkVnlxUytaR1lGdmxISGluc0FkWjAxL3UxbkJndHhw?=
 =?utf-8?B?Y0NCR09reHAwbUcxMW9HSUdGeVFYVzEwMGtkdXp5ZEVBc0IvNi82bC9pd0ZB?=
 =?utf-8?B?aFdqbXhVYTErVjBydVRPTll6dWdlSGdsam9IdDNwVmlVbjN5aUdOY0crZkg0?=
 =?utf-8?B?NzVGVENiU0xITzVNSjByOXNYWS9HdGhEYkk5QjR5cjN6YjZVcDgzRFE4S1BB?=
 =?utf-8?B?RHQ5aitPZTZWQTNUbGtHaExPNDhDYjl6dDdvSHI3RHhKZmdHZDloU1E4QzY5?=
 =?utf-8?B?ZlhvNExvNWRNbUt6NnJncGFCdDBLZExua21vbjNyZlpsTndYWUdkdmcwcVR4?=
 =?utf-8?B?QTlmeUxxbnhPd0t3ZmJNWGRoeE82ZXBFSWpUS1J6cFFURU1VWVJsS0I5OCs4?=
 =?utf-8?B?Nms5R1kvRlhRSEtuVzVzVFp1R0p2RnJnU21LRHA2U1VDU3Zlemp0MkVVSEZm?=
 =?utf-8?B?ak1pSGxMYk5wOEd5YWRackRzQzJGd25peHYwbWJaNGZXbjA5RENEOVpJMFVF?=
 =?utf-8?B?ZTBHbEttY215dFVyeGE0cUJneFhkZHlHL2NRZ0t4aVZoN29aMldPWTdHYkNS?=
 =?utf-8?B?dmxkN0grOFB4UC9uQytaeFJvWXp4Q0hTRHlyRXFtaXRqZGwyR3JPOFBMUzUw?=
 =?utf-8?B?Nkh1VVdROTAyaEFWN0ZLcnRGSE1BY3pLL2lnaVlJYkJESlIvS2NWQTJrRHFk?=
 =?utf-8?B?VEpXMVNxaUlpL25TUng3bWN0TjM4bkNWWnJMYzBqWWxDK2ZHMWhBQU9uZzE4?=
 =?utf-8?B?MFRKOXlJTEZyUFNFYXp4cVg4WVlxL1g1Yk0yaUJBeWRieWxnTGx5TFcxVUNN?=
 =?utf-8?B?RkR3bVdacGRqUm9ZMnBQK3lJalZzdmNQMFkxY3o0RisvaCt3eTZuZkhkVlpK?=
 =?utf-8?B?bjl3clNJOTN6d1VCT0NaRjI5VmNDOTltZG5QTWhsc0RaaEpPU29EdEFUWFZO?=
 =?utf-8?B?MWZTdDgweFJ6OUN3R0E5RXc1ek5zNW9hSmU2MUtxbnhtNnhaMFI1eWp4cTh3?=
 =?utf-8?B?Q0ZxUGlCS2U4SjUwdy9JbU5mclBkSEdCdTZRVlhQNUtYcWg0MkNWbEhJaGY3?=
 =?utf-8?B?bGk3Vk16cHBMMXY2R2l2MW55a0ZzSkppRUhsanA0aHoxRndVSU5paE1LMVRB?=
 =?utf-8?B?ZzlYeFF4bCswQnExaFdYNXJ4S3YraE04S0hkVWJ1TXRpRDdvc0xHSlB6ekl6?=
 =?utf-8?B?blhxeHBGK1NHMTZPSWNTWXV1VWNOMm41Zy9BTE04NzVHNGM1bDQzNEVscUda?=
 =?utf-8?B?RmI0aEl1TEZ2c2hMdVBEb0RWSEdZWW42a216WjZ5K0JXMmt4MGtXUUQyYTRN?=
 =?utf-8?B?blYxWWh5YmZkNnNnYUwxb25ibFl5OXlKRmp5VWl2cHBtdmFiZEJYYzZYOU5G?=
 =?utf-8?B?WWloVStlK2kweXkyQWhTMEQ0Y2MrTk1hVWlsWCtoMHNUQUl5RjRPSEJKS2JL?=
 =?utf-8?B?VUV3b1BLc1NuM3V6eWZTdFUweEJrc0FtSEQvb3pQcW9ZY3pyS3l5T3pxeFhX?=
 =?utf-8?B?NndRK1oxU296Q0lqUENoekxsSXNHM3g0bkRmSmwwakhMa1pVKzFRa2pINkE2?=
 =?utf-8?B?TnZsL2ZjSHB4bVJRTVZHZzdIQUtyOEtIVVJpNUNMWDJ1TTBibG54a2ljTzBq?=
 =?utf-8?B?dTZTeThnbW9GQUNRNDN4OHc1aUtSSVRmUURMY0RIN3NzekRQUU9vRisxT0k2?=
 =?utf-8?B?Z2ErOTRGSDlDYUZpNndVbmp3U0RzL1dOc2NlZ2Nia1dBWnF6WjZRM2Z0cXNv?=
 =?utf-8?B?S3QvTloySWVxZlpsVzhpek1tTGVVSDgwcVlqdTVuUEI2Smx2S0UwdjJCVVp1?=
 =?utf-8?B?emYrMS90d1lBTUxsU2Vtbk9ISlRHWHNWMXBabndRYUx6dGdCOHdHb1BFY3or?=
 =?utf-8?B?ZGZ4N3VUSDl1bnVSTlpwK0JaZHlRMHBiM2toOTdla3hTNjQwUWdZK1BTM1hF?=
 =?utf-8?B?ZTQyR01ZTGJ4VWJhN1JNSExURnFNMXpyMHJnbFZsMjJSZVRjV1ltelhPSDdR?=
 =?utf-8?B?QTFXeTloN2R0R2l4QmRmQmg3MlAvd09yVWNnbHh4RXhkd2VZL096d29qbzZO?=
 =?utf-8?B?N3hnYURJZnY3dk11ZzJpNGtIS1JZblVKKys3bDVyNlBmMGw2eXJwS0FDV1NR?=
 =?utf-8?B?bW1PeTZlVXVEY1Flb0JiUE80RmVmaExsbEplZDRkMGRFek1FUmZZZzRSa3Jh?=
 =?utf-8?B?ejRjMFQ2TDg2ZC9vNkNHMXZ4ZDNLczhPNlI0aS9FUWw2Z0o3NHk2US8vbnFN?=
 =?utf-8?B?ZTFiaUtISnNibXNHeTFQdWl2UjlBPT0=?=
Content-ID: <061560AE2C3F354D8E13EF439FEDCD51@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aad018a-b26f-4553-4dde-08d9999d140d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 22:56:57.4120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /sZiwsJbqMISpcpgwo6JrmvQAylYY9fSkClhGt5QnGI5q99IW8a/MPYfE8fme01HAebouBP1/r6lMUcFCuLbs9OPZ7lUnk0n4Eu4TLY6Pf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1520
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH v5] ice: support immediate
 firmware activation via devlink reload
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvMjUvMjAyMSAxMDoxOSBQTSwgUGF1bCBNZW56ZWwgd3JvdGU6DQo+PiBDaGFuZ2VzIHNp
bmNlIHY0DQo+PiAqIGNvbXBsZXRlbHkgcmUtd3JpdGUgY29tbWl0IG1lc3NhZ2UgZm9yIGNsYXJp
dHkNCj4+ICogVXBkYXRlIGRldmxpbmsgaWNlLnJzdCB3aXRoIGRvY3VtZW50YXRpb24gYWJvdXQg
cmVsb2FkDQo+PiAqIGV4cGFuZCB0aGUgdGVybXMgIkVNUCIgYW5kICJlbXByIiBmb3IgY2xhcml0
eQ0KPj4gKiBSZW5hbWUgdGhlIGljZV9kZXZsaW5rX3JlbG9hZF9kb3duIHRvIGljZV9kZXZsaW5r
X3JlbG9hZF9lbXByX3N0YXJ0IGFuZA0KPj4gICAgcmVuYW1lIGljZV9kZXZsaW5rX3JlbG9hZF91
cCB0byBpY2VfZGV2bGlua19yZWxvYWRfZW1wcl9maW5pc2guIFRoaXMgaXMNCj4+ICAgIGRvbmUg
dG8gY2xhcmlmeSB0aGVpciBmdW5jdGlvbmFsaXR5LiBJdCBpcyBhbHNvIGRvbmUgYmVjYXVzZSBh
bnkgZnV0dXJlDQo+PiAgICBzdXBwb3J0IGZvciBkZXZsaW5rIHJlbG9hZCB3aXRoIGRyaXZlciBy
ZWluaXQgd2lsbCB3YW50IHRvIGNvbnRpbnVlDQo+PiAgICByZS11c2luZyB0aGVzZSBmdW5jdGlv
bnMgdG8gc3VwcG9ydCBmaXJtd2FyZSBhY3RpdmF0aW9uLg0KPj4gKiBJbmNyZWFzZSB0aGUgbWF4
aW11bSB3YWl0IHRpbWUgZm9yIEVNUCByZXNldCB0byBjb21wbGV0ZSB0byAyIG1pbnV0ZXMuDQo+
PiAgICBJdCB0dXJucyBvdXQgdGhhdCBpbiBwcmFjdGljZSB0aGUgcmVzZXQgbWlnaHQgdGFrZSBh
IHdoaWxlIChsb25nZXIgdGhhbg0KPj4gICAgdGhlIG9yaWdpbmFsIDIwIHNlY29uZHMgSSBoYWQg
aW4gdjQgYW5kIGVhcmxpZXIpLg0KPiANCj4gV293LCB0d28gbWludXRlcyBmb3IgYSBkZXZpY2Ug
cmVzZXQuIFN5c3RlbXMgd2l0aCBjb3JlYm9vdCBhcyBmaXJtd2FyZSANCj4gKGRlcGVuZGluZyBv
biB0aGUgYW1vdW50IG9mIG1lbW9yeSkgYm9vdCBpbiBsZXNzIHRoYW4gb25lIHNlY29uZC4gOy0p
IA0KPiBLZXhlYyBtaWdodCBhbHNvIGJlIGZhc3Rlciwgb3Igd291bGQgaXQgYWxzbyB0YWtlIHRo
ZSBzYW1lIGFtb3VudCBvZiANCj4gdGltZSBmb3IgTGludXggdG8gYnJpbmcgdGhlIGRldmljZSB1
cD8NCj4gDQoNClRoZSBvcmlnaW5hbCB0aW1lb3V0IHdhcyAyMCBzZWNvbmRzLiBPdXIgdGVzdGVy
cyByZXBvcnRlZCBzb21lIGNhc2VzDQp3aGVyZSB3ZSByZXBvcnRlZCAidGltZWQgb3V0IiBidXQg
dGhlIHJlc2V0IGNvbXBsZXRlZCBldmVudHVhbGx5LiBJIHdhcw0KcHJvYmFibHkgYSBiaXQgbGF6
eSBoZXJlIHdpdGgganVzdCBpbmNyZWFzaW5nIGl0IHRvIDIgbWludXRlcy4NCg0KVGhhbmtzIGZv
ciBwdXNoaW5nIGhlcmUsIHNpbmNlIEkgZGlkIHNvbWUgYmV0dGVyIGludmVzdGlnYXRpb24gb24g
d2hhdA0KYWN0dWFsbHkgY2F1c2VkIHRoZSBzbG93IHJlYnVpbGQuIEl0IHR1cm5zIG91dCBwYXJ0
IG9mIHRoZSBOVk0NCmluaXRpYWxpemF0aW9uIHByb2NlZHVyZSB3YXMgdmVyeSBzbG93LiB+MTAg
c2Vjb25kcyBwZXIgUEYsIHNlcmlhbGl6ZWQNCmR1ZSB0byBOVk0gcmVzb3VyY2UgZm9yY2luZyBl
YWNoIFBGIHRvIHRha2UgdHVybnMuDQoNClRoaXMgd2FzIGNhdXNlZCBieSBvdXIgbWV0aG9kIGZv
ciBsb2NhdGluZyBzb21lIGRhdGEgZnJvbSB0aGUgT3B0aW9uIFJPTQ0Kc2VnbWVudCBvZiB0aGUg
Zmxhc2guDQoNCkZpeGluZyB0aGlzIHJlZHVjZWQgdGhlIHRpbWUgdG8gcmVzZXQgYnkgfjIwIHNl
Y29uZHMgZnJvbSAzMSBzZWNvbmRzIG9uDQpteSBzeXN0ZW0gZG93biB0byAxMiB0b3RhbC4gTG9v
a2luZyB0aHJvdWdoIHNvbWUgc2ltcGxlIHRpbWluZyBsb2dzIEkNCndhc24ndCBhYmxlIHRvIHNw
b3QgYW55IG90aGVyIG9idmlvdXMgb2ZmZW5kZXJzLiBUaGUgYWN0dWFsIHJlc2V0DQphcHBlYXJz
IHRvIGJlIGRvbmUgcmVsYXRpdmVseSBxdWlja2x5LCBidXQgdGhlIHByb2Nlc3MgdG8gZ28gdGhy
b3VnaCBhbmQNCnJlc3RvcmUgZHJpdmVyIHN0YXRlIGlzIHRoZSBidWxrIG9mIHRoZSB3b3JrLg0K
DQpJIHN0aWxsIGtlcHQgdGhlIHRvdGFsIHRpbWVvdXQgaGVyZSBpbiB2NiB0byAxIG1pbnV0ZSwg
c2luY2UgdGhlcmUgYXJlDQpzb21lIGNhc2VzIHdoZXJlIG11bHRpcGxlIFBGcyByZWxvYWRpbmcg
YXQgb25jZSBzZXJpYWxpemUgKFJUTkwgbG9jaywNCk5WTSBzZW1hcGhvcmUsIGV0YykuIFRoaXMg
Y2FuIGxlYWQgdG8gYSBsb25nIHRpbWUgdG8gcHJvY2VzcyBhbmQgZmluaXNoDQpyZWJ1aWxkaW5n
IGFsbCBQRnMuDQoNCj4+ICsJZXJyID0gaWNlX3dhaXRfZm9yX3Jlc2V0KHBmLCAxMjAgKiBIWik7
DQo+PiArCWlmIChlcnIpIHsNCj4+ICsJCU5MX1NFVF9FUlJfTVNHX01PRChleHRhY2ssICJEZXZp
Y2Ugc3RpbGwgcmVzZXR0aW5nIik7DQo+IA0KPiBTb21lIGluZm9ybWF0aW9uIGZvciB0aGUgdXNl
ciB3aGF0IHRvIGRvIG1pZ2h0IGJlIG5pY2UuIChIb3cgZG9lcyB0aGUgDQo+IGxvZyBtZXNzYWdl
IGxvb2sgbGlrZT8pIE1heWJlOg0KPiANCj4gICAgICBEZXZpY2Ugc3RpbGwgcmVzZXR0aW5nIGFm
dGVyIDIgbWluLiBQbGVhc2UgcmVib290IHRoZSBzeXN0ZW0uDQo+IA0KPiBb4oCmXQ0KPiANCg0K
SSBkaWQgY2hhbmdlIHRoaXMgdG8gYmUgImRldmljZSBzdGlsbCByZXNldHRpbmcgYWZ0ZXIgMSBt
aW51dGUiLiBJJ20gbm90DQpzdXJlIEkgd2FudCB0byBjb2RpZnkgInJlYm9vdCB0aGUgc3lzdGVt
IiBpbiB0aGlzIG1lc3NhZ2UuDQoNCj4gVGhhbmsgeW91IGFnYWluIGZvciBpbXByb3ZpbmcgdGhl
IHBhdGNoIHNldCwgYW5kIHRha2luZyBzbyBtdWNoIHRpbWUgdG8gDQo+IGFuc3dlciBteSBxdWVz
dGlvbnMuDQo+IA0KDQpUaGFua3MgZm9yIHlvdXIgZGV0YWlsZWQgcmV2aWV3IQ0KDQo+IFJldmll
d2VkLWJ5OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0KPiANCj4gDQo+IEtp
bmQgcmVnYXJkcywNCj4gDQo+IFBhdWwNCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
