Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE87D6E164A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 23:03:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 85F61616BA;
	Thu, 13 Apr 2023 21:03:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85F61616BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681419800;
	bh=fKtfQ/4QK3yEWLzCHJi46hg3GpRmsK29XZ6WF4/bFj8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1fWHzIONaqFAaK29oyjDGJgb5+7+hNLKHyTHavt1eRTb8wJFwo3tJgifP0gd/GijW
	 Ez+hXrWUc3aa5eS+DqWEshEep3LsM/hwlHCceUQn+XzCOz+iGsXMRoteSnty8eLDre
	 H/YXk2kekLyICJICHAJxsfimzzpwzOk42MdkwsLIwMk1E2HtQDYI55/+6rBRY2YdTQ
	 Kmo0/N25l7/z8/dHeGB6lHJAthFHHCDvdeFGL/6SuopA8EMA8hn78wbGBS6CcbP5Ii
	 M/bgjs/UOZUfoKTvrZC6OB7L6SvKkjlN7iV0kurZ/UKbJTWgSb2gHGIIHfZ9EuBDLu
	 uCNIzHp7CcKzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c4dilMXBg-GT; Thu, 13 Apr 2023 21:03:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23D926059F;
	Thu, 13 Apr 2023 21:03:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23D926059F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E9CB61C3DED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 21:03:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68CEA40996
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 21:03:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68CEA40996
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XQAkQC1A3SiL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 21:03:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAEF440933
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam04on2074.outbound.protection.outlook.com [40.107.100.74])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EAEF440933
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 21:03:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kA5IXhrcAUVQ6Oj8faLmFIU6xX+L2E76XQa46P5cNzSPh2WYu/MTapnzEWuYDu3+DRHTa6alUm/oBKmKnkTGTa7zPy7xdX1q1po6HXP3cJ2fBXTCxOohoB6lrxP89SscQ0WFn+DNv5L7L3UMywY7zPooBBdVO7xLrTJQsYa3SDm9fm647O7FQjJvN7GhI2aDKI+SdlPnc3R59GgQJb+/8JdnguWJrH7nCM2Hihs/Hs8dx7wczmpKj5aISPkZEyJanNfoW2Ebul51VMWpfkNAs/2kFcVRM0siaccqjE1e6puIHz6DDlKEz0/zLODD0M+fe4Ta4uAEXFOzxqaOGnZNTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y07GllS5v7qUf0nrsxKP1QcbEjtj2S4b4Z4sZy12oSc=;
 b=FVbAoPkruqOI2/KHl8YOuNUo3daWjQQ1z57ZLxGUOqARvDpLw1aMbaHfsEC/P2xC05VCSv99rKxSb79/SM+tizmbuxRyefpG7EQFtxfdoGpY0w9jdXQ9l2IOmfx4u4RZWln9H8fi2GzGbbc2kFGfi7ZYl9rPX85e+uQMFeQEh8kkMYcRP8tQdPFWcCW/qZy0CH4hqUmN4Uw1hrRKr7qcX9ZH4/NnAxarjicGk7J79teii1MAZQOY62FufVSKrosMB8dEXF7NK64bxFg3mBh0YstAW+NfxrNKOqEEooJ4MR6R+k0Q66AAq8H+pfJNoCPaulfH2q2xqBmFEQM7GvMNWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DS0PR12MB6583.namprd12.prod.outlook.com (2603:10b6:8:d1::12) by
 DM4PR12MB6011.namprd12.prod.outlook.com (2603:10b6:8:6b::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.30; Thu, 13 Apr 2023 21:03:05 +0000
Received: from DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::e786:9262:56b5:ca86]) by DS0PR12MB6583.namprd12.prod.outlook.com
 ([fe80::e786:9262:56b5:ca86%6]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 21:03:05 +0000
Message-ID: <15ca06c3-8344-0396-1bb4-38f219a31369@amd.com>
Date: Thu, 13 Apr 2023 14:03:01 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.0
Content-Language: en-US
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <20230329140404.1647925-2-pavan.kumar.linga@intel.com>
 <49947b6b-a59d-1db1-f405-0ab4e6e3356e@amd.com>
 <a5b7f1e4-8f14-d5fb-8f88-458d7070825d@intel.com>
 <f7c7c691-d173-73ab-c24a-79c22e6ef3b0@amd.com>
 <ffd66203-4349-0986-2130-f8b156f1923a@intel.com>
 <ffe43a28-641c-c263-2ea2-67882b476cde@amd.com>
 <aeb969e0-b829-d869-a93c-1d15755367ce@intel.com>
From: Shannon Nelson <shannon.nelson@amd.com>
In-Reply-To: <aeb969e0-b829-d869-a93c-1d15755367ce@intel.com>
X-ClientProxiedBy: BY3PR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:a03:254::9) To DS0PR12MB6583.namprd12.prod.outlook.com
 (2603:10b6:8:d1::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR12MB6583:EE_|DM4PR12MB6011:EE_
X-MS-Office365-Filtering-Correlation-Id: efb9ce54-4481-420e-78f1-08db3c6279a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y2shO46CjI+ksh78qMZxVy2olHmArB7X4JMJW+6sWt80af1pNMaly4jraN5jxclGoVQ0NId21lT2Ls8iB8tKQi5Q6DUH7hhEVrkmhv7PxBtcpr1MkYfpw9Tf+5emfZp4TGlbjFb+C93PrFzNWruGqFem19mf3Hy3tI/NusEPmLUc194Xt+b9AvcZkD67a+mR8pZbDizIMpaJXAuKxqwxvAsXdwxzvliLJZ3RALFvheN7NGsh6i5o7rFiHhFMONTVim3kB5R2W1aKxd6fDQQ5twIZe2AQ/hW9WoiM3nFRocm1C5KA3nMZGnzRZFeUDYOv/6LbHS2Li96wHA49GA4X9nQGL5gXsyWmR5VkgtLDeBjM4BtCscfeGV1d/dxr94pCnQ0fIKjIavcaIVdpOUiAW8nbN5SO7rjdURMUCrEW+UxztwImbV8tlD5In0Uh68Xb7SpNq3U882t7xdZGPtFHvMN1dM2qdOZHEGoRpIC//7vo/wubbEsS2JNx9FqNrMg/S0OGcy2Qqh5730lcOyAQGawLGU0/pJCvSU4iz5N8hhQL/I5li42fs0mOeaEiMj3+Ij2jsr06udeAyO+rNdkyTgTuIChryAPxdox8QJenDWtiwfl+zGsbTYm776e4ajzt0R2H4KDgSqwvmaNxViYahQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR12MB6583.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(366004)(39860400002)(346002)(396003)(136003)(451199021)(4326008)(7416002)(53546011)(6506007)(6512007)(26005)(6666004)(38100700002)(6486002)(83380400001)(186003)(2616005)(44832011)(36756003)(2906002)(8936002)(31696002)(66946007)(86362001)(66556008)(110136005)(478600001)(54906003)(66476007)(8676002)(5660300002)(316002)(41300700001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2RheVNGT3B2Q0dYSmpuTFI1ODczT3NyNmtZeG5TZ0FTQ3V0SEU3M2cyYkJk?=
 =?utf-8?B?c0FYQzJ1dmN1THVMZ2c0R1FuNkVqUTJ0MFBrZnJCMG9zelEza0ZTUlh3R3FY?=
 =?utf-8?B?a0JxdmpPVG83NjZPM0JLTmNGcGRyeWsvRlQrWVhKVXl6ald6aFFTSHhNNWRx?=
 =?utf-8?B?SmFFOEtod1phM3l6b3hoZHo5MmJqWGJPUUxKTFpQcHVIZnlWV1h2Q1k5dlc5?=
 =?utf-8?B?aExOUlZGRDhucWpPRGxiTjY2SHQzNDAxRlBlM2E0aHdVZmMrYUNQUXp6OU5Q?=
 =?utf-8?B?Uy9KTWNoVEh3a0JMais5ODM0VEZvZmdZUGIyd2o3Vm9SdG0ycFNGRHRrNXdB?=
 =?utf-8?B?WVZ6aE0rSGkxOTNDNFZZNUFXVVZSZjFpZ1lmY1lONDdhUEErU2RlMDNyU202?=
 =?utf-8?B?QytlTGJoU0RmSExIeGQvQ2RrKzA2NFEvK09ESHpkOXFsQWloSUx5NEo1a3kx?=
 =?utf-8?B?SUZ2NFNFVHgzQTY3MlVVZlNXZ1dWRU1VSXJzNUZjWWVuOFJmSFI4Q05ZZ0lq?=
 =?utf-8?B?SUdQUFNLQVRCL2tDQkxTOGtkMmxOaDZock4rME9pVzdRN1VTQzArRWlrUkdK?=
 =?utf-8?B?Y0V2b1BZVmhLYXErcGJqZGpnTUNkOFB2Z0xuTWNxZzgwdVN1YTdla0hsbitQ?=
 =?utf-8?B?Q1ZHcWsrakVhMmJaSllPb3pPY2J1TXNhcnFvbFhyaXJiS2twRkVaNi9xVzFk?=
 =?utf-8?B?cFpjYjBhWDhIOGh6VUp2VEZreXhES0VQZmViZlFaNldKUUcxanVJNFJrQ21Z?=
 =?utf-8?B?ZklxNytmVmZSZ0dRcXNuUElHRytFQnpobXlUY2h6OE9CN2hHMldEd2JNVUxR?=
 =?utf-8?B?Tk92dzZ0S1RJbHFFQ0pSNFN5YUR0ajJxbG10a3h3YnpJVlMyN3FGY2xrOWJN?=
 =?utf-8?B?UzhOOWdIWWJVL0RzaVY3a3QvK1ltNWtld2ppTzlBSkFUNDNyK1dBczM3S3Fz?=
 =?utf-8?B?aVdBb2U5eFloRFJPa3plUEMrbk8rbDJ1VElCR24rM1RUVXJCMGlaUzJBbC8w?=
 =?utf-8?B?dC9xTkNNZFlEcEdGZzFyT0xSWGJzRGxWQXBkNjVoSnQ1Uml6akl4Q2FNMEs5?=
 =?utf-8?B?MW91SHRKVW1jTWxoMmMybFNwUU1scUxvUXVCZ2wwTmF6RndWL0dVcDZITHJG?=
 =?utf-8?B?Q0pzUGNGZzY2V3N3UTRPd1dPZWFNRWM0eWluWERJZlVaVGN1YzNaekl4S3Vv?=
 =?utf-8?B?Y2ZzejZoVVBDOUpwZU0xazgrcElwT3BOd05sNjZaKzlnSTJNRWV4NnUwQ2xk?=
 =?utf-8?B?NjFRc1NRcHJiWC9uWURLR1hvcDhSNzE0ZlJZNmpPbExBSWY2d2hxWWJrTlJM?=
 =?utf-8?B?OHJpMk1GUXVxZit1SnBUdjlMU3BCc2crRTVlSUkxV25EVFo5NEVndHUvOFhR?=
 =?utf-8?B?NkNybFU0bFZlSGZJdWR6N2tNWW1oUkNCOXF4dmVpVWYwbkh4bTFDK1h2bUV1?=
 =?utf-8?B?MzV5K2IvdzIxdkpQZTJnTnFORDR1SElTaEQrbVFVSnljSTl5ZjdHV0RNUFp2?=
 =?utf-8?B?cFJuTGNTMDVPUUdNL24vdHRDTXVYcUQ4U29oUzZNL0hDVDRFSEJSTml6c1hm?=
 =?utf-8?B?TXR5L1ZyZktCNW1LQ0F5T3NkWDJLRUxWN1VqZE04a043bDRZVlpuMHQyMGpP?=
 =?utf-8?B?VVIvWE9WYk1DY3NrV1FrU0pndW51NWJQemFLY2d6TURLR3k2NmNVdnJ3bnVT?=
 =?utf-8?B?Q2QwelJ6VWVoNHlkb2hTNHdDWUpBbm53S016d3lIMThZWTY1RTVCL1FOcy9D?=
 =?utf-8?B?ZnV3VWNqZ3podncrcTNwdTd3Q2V1Y0wrYi9PMkx0aXV5cXV4M0hzZ1hmdEdz?=
 =?utf-8?B?RjQ2VXZoS3Rld3ZhU0psbjVWWk1FNkVYNndDL0M1dkM2WUxlb2hHR2o2WmxH?=
 =?utf-8?B?L3lvTlgrU2lrL3NQcHZuN2xtT1dOcU0yTkxzdDArTVRXYUhGbEgrdlB5U01D?=
 =?utf-8?B?MlRaaTJLWEphdHRrOUpGY3RvcFhVSE9wN1IvWTlQSE4xUEFSbUJ2Q1Jhb2Ji?=
 =?utf-8?B?WS9YR3c2SGdxTWw2QWk4c0NjcjVyekRna21KMmJSek5BYlVIL0dwTzNkMVJR?=
 =?utf-8?B?UEhKMldFVitGT05UK0JiN2tKUG9sTmtwbTVvaUFpVUEvSWVNUC9lT2tlUUVq?=
 =?utf-8?Q?RM0seebhFPCX2JaDNNlnmPFbE?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efb9ce54-4481-420e-78f1-08db3c6279a9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB6583.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 21:03:05.1115 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lOwDSiy87qpLngeTwe8l0MIFY2C7cAJyhfLefkOTA/TVZWGI7lemgBSrCmMEk7jZg7RCwHaWB88EHJeHJZQskA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6011
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y07GllS5v7qUf0nrsxKP1QcbEjtj2S4b4Z4sZy12oSc=;
 b=ntyhiDVIkFaJdUeAighLM6JdqNXIotDvOPi+Cw1N9XD3UGP7ZVj/iprasHl6+l7jtyTlh7oD4NTvrwB88D18AltJm82sOr2MaTY7g4V5RihGv0R+NyqJBzWfBerUsGfF9McRKlZ/oqW9ebY4tZQ9+ORHbqszudhQt/1Ql0OXZTo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=ntyhiDVI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] virtchnl: add virtchnl
 version 2 ops
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
Cc: willemb@google.com, netdev@vger.kernel.org,
 Phani Burra <phani.r.burra@intel.com>, decot@google.com,
 shiraz.saleem@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNC8xMy8yMyAxMTo1NCBBTSwgVGFudGlsb3YsIEVtaWwgUyB3cm90ZToKPiAKPiBPbiA0LzEy
LzIwMjMgMjozNiBQTSwgU2hhbm5vbiBOZWxzb24gd3JvdGU6Cj4+IE9uIDQvMTIvMjMgOTo1OCBB
TSwgVGFudGlsb3YsIEVtaWwgUyB3cm90ZToKPj4+Cj4+PiBPbiA0LzEwLzIwMjMgMzoxMiBQTSwg
U2hhbm5vbiBOZWxzb24gd3JvdGU6Cj4+Pj4gT24gNC8xMC8yMyAxOjI3IFBNLCBMaW5nYSwgUGF2
YW4gS3VtYXIgd3JvdGU6Cj4+Pj4+Cj4+Pj4+IE9uIDQvNC8yMDIzIDM6MzEgQU0sIFNoYW5ub24g
TmVsc29uIHdyb3RlOgo+Pj4+Pj4gT24gMy8yOS8yMyA3OjAzIEFNLCBQYXZhbiBLdW1hciBMaW5n
YSB3cm90ZToKPj4+Pj4+Pgo+Pj4+Pj4+IFZpcnRjaG5sIHZlcnNpb24gMSBpcyBhbiBpbnRlcmZh
Y2UgdXNlZCBieSB0aGUgY3VycmVudCBnZW5lcmF0aW9uIG9mCj4+Pj4+Pj4gZm91bmRhdGlvbmFs
IE5JQ3MgdG8gbmVnb3RpYXRlIHRoZSBjYXBhYmlsaXRpZXMgYW5kIGNvbmZpZ3VyZSB0aGUKPj4+
Pj4+PiBIVyByZXNvdXJjZXMgc3VjaCBhcyBxdWV1ZXMsIHZlY3RvcnMsIFJTUyBMVVQsIGV0YyBi
ZXR3ZWVuIHRoZSBQRgo+Pj4+Pj4+IGFuZCBWRiBkcml2ZXJzLiBJdCBpcyBub3QgZXh0ZW5zaWJs
ZSB0byBlbmFibGUgbmV3IGZlYXR1cmVzIAo+Pj4+Pj4+IHN1cHBvcnRlZAo+Pj4+Pj4+IGluIHRo
ZSBuZXh0IGdlbmVyYXRpb24gb2YgTklDcy9JUFVzIGFuZCB0byBuZWdvdGlhdGUgZGVzY3JpcHRv
cgo+Pj4+Pj4+IHR5cGVzLAo+Pj4+Pj4+IHBhY2tldCB0eXBlcyBhbmQgcmVnaXN0ZXIgb2Zmc2V0
cy4KPj4+Pj4+Pgo+Pj4+Cj4+Pj4gWy4uLl0KPj4+Pgo+Pj4+Pj4+ICsKPj4+Pj4+PiArI2luY2x1
ZGUgInZpcnRjaG5sMl9sYW5fZGVzYy5oIgo+Pj4+Pj4+ICsKPj4+Pj4+PiArLyogVklSVENITkwy
X0VSUk9SX0NPREVTICovCj4+Pj4+Pj4gKy8qIFN1Y2Nlc3MgKi8KPj4+Pj4+PiArI2RlZmluZSBW
SVJUQ0hOTDJfU1RBVFVTX1NVQ0NFU1PCoMKgwqDCoMKgwqAgMAo+Pj4+Pj4KPj4+Pj4+IFNob3Vs
ZG4ndCB0aGVzZSBiZSBlbnVtIGFuZCBub3QgI2RlZmluZT8KPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFRo
aXMgaGVhZGVyIGZpbGUgaXMgZGVzY3JpYmluZyBjb21tdW5pY2F0aW9uIHByb3RvY29sIHdpdGgg
b3Bjb2RlcywKPj4+Pj4gZXJyb3IgY29kZXMsIGNhcGFiaWxpdGllcyBldGMuIHRoYXQgYXJlIGV4
Y2hhbmdlZCBiZXR3ZWVuIElEUEYgYW5kCj4+Pj4+IGRldmljZSBDb250cm9sIFBsYW5lLiBDb21w
aWxlciBjaG9vc2VzIHRoZSBzaXplIG9mIHRoZSBlbnVtIGJhc2VkIG9uCj4+Pj4+IHRoZQo+Pj4+
PiBlbnVtZXJhdGlvbiBjb25zdGFudHMgdGhhdCBhcmUgcHJlc2VudCB3aGljaCBpcyBub3QgYSBj
b25zdGFudCBzaXplLgo+Pj4+PiBCdXQKPj4+Pj4gZm9yIHZpcnRjaG5sIHByb3RvY29sLCB3ZSB3
YW50IHRvIGhhdmUgZml4ZWQgc2l6ZSBubyBtYXR0ZXIgd2hhdC4gVG8KPj4+Pj4gYXZvaWQgc3Vj
aCBjYXNlcywgd2UgYXJlIHVzaW5nIGRlZmluZXMgd2hlcmVldmVyIG5lY2Vzc2FyeS4KPj4+Pgo+
Pj4+IFRoZSBmaWVsZCBzaXplIGxpbWl0YXRpb25zIGluIGFuIEFQSSBhcmUgb25lIHRoaW5nLCBh
bmQgdGhhdCBjYW4gYmUKPj4+PiBtYW5hZ2VkIGJ5IHVzaW5nIGEgdTgvdTE2L3UzMiBvciB3aGF0
ZXZlciBhcyBuZWNlc3NhcnkuwqAgQnV0IHRoYXQKPj4+PiBkb2Vzbid0IG1lYW4gdGhhdCB5b3Ug
Y2FuJ3QgZGVmaW5lIHZhbHVlcyB0byBiZSBhc3NpZ25lZCBpbiB0aG9zZSAKPj4+PiBmaWVsZHMK
Pj4+PiBhcyBlbnVtcywgd2hpY2ggYXJlIHByZWZlcnJlZCB3aGVuIGRlZmluaW5nIHNldmVyYWwg
cmVsYXRlZCBjb25zdGFudHMuCj4+Pj4KPj4+IFdlIGNhbiBjZXJ0YWlubHkgbG9vayBpbnRvIGl0
LCBidXQgZm9yIHRoZSBwdXJwb3NlIG9mIHRoaXMgc2VyaWVzIGl0Cj4+PiBkb2Vzbid0IHNlZW0g
bGlrZSBhIG1lYW5pbmdmdWwgY2hhbmdlIGlmIGl0IG9ubHkgaGVscHMgd2l0aCB0aGUgZ3JvdXBp
bmcKPj4+IHNpbmNlIHRoZSBkZWZpbmUgbmFtZXMgYWxyZWFkeSBmb2xsb3cgYSBjZXJ0YWluIHBh
dHRlcm4gdG8gaW5kaWNhdGUgdGhhdAo+Pj4gdGhleSBhcmUgcmVsYXRlZC4KPj4KPj4gSSB3YXMg
dHJ5aW5nIG5vdCB0byBiZSBvdmVybHkgcGVkYW50aWMsIGJ1dCB0aGUgbGFzdCB3b3JkcyBvZiB0
aGF0Cj4+IHBhcmFncmFwaCBhcmUgY29waWVkIGRpcmVjdGx5IGZyb20gc2VjdGlvbiAxMiBvZiB0
aGUgY29kaW5nLXN0eWxlLnJzdC4KPj4gV2Ugc2hvdWxkIGZvbGxvdyB0aGUgd2lzZG9tIHRoZXJl
aW4uCj4+Cj4+IExvb2ssIHdoZXRoZXIgd2UgbGlrZSB0aGlzIHBhdGNoc2V0IG9yIG5vdCwgaXQg
aXMgZ29pbmcgdG8gZ2V0IHVzZWQgYXMKPj4gYW4gZXhhbXBsZSBhbmQgYSBzdGFydGluZyBwb2lu
dCBmb3IgcmVsYXRlZCB3b3JrLCBzbyB3ZSBuZWVkIHRvIGJlIHN1cmUKPj4gaXQgc2VydmVzIGFz
IGEgZ29vZCBleGFtcGxlLsKgIExldCdzIHN0YXJ0IGZyb20gdGhlIGJlZ2lubmluZyB3aXRoIGNs
ZWFuCj4+IGNvZGUuCj4gCj4gR290IGl0LiBXaWxsIGNvbnZlcnQgdG8gZW51bXMgaW4gdjMuCgpU
aGFua3MKCj4gCj4+Cj4+Pgo+Pj4+Cj4+Pj4gWy4uLl0KPj4+Pgo+Pj4+Pgo+Pj4+Pj4+ICsKPj4+
Pj4+PiArLyogVklSVENITkwyX09QX0dFVF9FRFRfQ0FQUwo+Pj4+Pj4+ICsgKiBHZXQgRURUIGdy
YW51bGFyaXR5IGFuZCB0aW1lIGhvcml6b24KPj4+Pj4+PiArICovCj4+Pj4+Pj4gK3N0cnVjdCB2
aXJ0Y2hubDJfZWR0X2NhcHMgewo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqAgLyogVGltZXN0YW1wIGdy
YW51bGFyaXR5IGluIG5hbm9zZWNvbmRzICovCj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoCBfX2xlNjQg
dHN0YW1wX2dyYW51bGFyaXR5X25zOwo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqAgLyogVG90YWwgdGlt
ZSB3aW5kb3cgaW4gbmFub3NlY29uZHMgKi8KPj4+Pj4+PiArwqDCoMKgwqDCoMKgIF9fbGU2NCB0
aW1lX2hvcml6b25fbnM7Cj4+Pj4+Pj4gK307Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICtWSVJUQ0hOTDJf
Q0hFQ0tfU1RSVUNUX0xFTigxNiwgdmlydGNobmwyX2VkdF9jYXBzKTsKPj4+Pj4+Cj4+Pj4+PiBE
b24ndCBwdXQgYSBzcGFjZSBiZXR3ZWVuIHRoZSBzdHJ1Y3QgYW5kIHRoZSBjaGVjay4KPj4+Pj4+
Cj4+Pj4+Cj4+Pj4+IENoZWNrcGF0Y2ggcmVwb3J0cyBhIHdhcm5pbmcgKGFjdHVhbGx5IGEgJ0No
ZWNrJykgd2hlbiB0aGUgbmV3bGluZSBpcwo+Pj4+PiByZW1vdmVkLiBGb2xsb3dpbmcgaXMgdGhl
IGNoZWNrcGF0Y2ggb3V0cHV0IHdoZW4gdGhlIG5ld2xpbmUgaXMKPj4+Pj4gcmVtb3ZlZDoKPj4+
Pj4KPj4+Pj4gIkNIRUNLOiBQbGVhc2UgdXNlIGEgYmxhbmsgbGluZSBhZnRlciBmdW5jdGlvbi9z
dHJ1Y3QvdW5pb24vZW51bQo+Pj4+PiBkZWNsYXJhdGlvbnMiCj4+Pj4KPj4+PiBTaW5jZSBpdCBo
YXMgdG8gZG8gZGlyZWN0bHkgd2l0aCB0aGUgZmluaXNoZWQgZGVmaW5pdGlvbiwgb25lIHdvdWxk
Cj4+Pj4gdGhpbmsgaXQgY291bGQgZm9sbG93IHRoZSBzYW1lIHJ1bGUgYXMgRVhQT1JULi4uIGRv
ZXMuwqAgSXQgbWlnaHQgbm90IGJlCj4+Pj4gYSBiYWQgaWRlYSBhdCBzb21lIHBvaW50IGZvciBz
dGF0aWNfYXNzZXJ0KCkgdG8gYmUgYWRkZWQgdG8gdGhhdCAKPj4+PiBhbGxvd2VkCj4+Pj4gbGlz
dC7CoCBGb3Igbm93LCB0aG91Z2gsIHNpbmNlIGl0IGlzIG9ubHkgYSBDSEVDSyBhbmQgbm90IFdB
Uk4gb3IgRVJST1IsCj4+Pj4geW91IG1pZ2h0IGJlIGFibGUgdG8gaWdub3JlIGl0LsKgIEl0IG1p
Z2h0IGJlIGVhc2llciB0byBpZ25vcmUgaWYgeW91Cj4+Pj4ganVzdCB1c2VkIHRoZSBleGlzdGlu
ZyBzdGF0aWNfYXNzZXJ0KCkgcmF0aGVyIHRoYW4gZGVmaW5pZ2luIHlvdXIgb3duCj4+Pj4gc3lu
b255bS4KPj4+Cj4+PiBPSywgd2UnbGwgcmVtb3ZlIGl0Lgo+Pgo+PiBJJ20gbm90IHN1cmUgJ2l0
JyBtZWFucyB5b3VyIHN5bm9ueW0gb3IgdGhlIGFjdHVhbCBjaGVjay7CoCBUaGUgY2hlY2sgaXMK
Pj4gYSB1c2VmdWwgdGhpbmcgdG8gaGVscCBtYWtlIHN1cmUgbm8gb25lIHNjcmV3cyB1cCB0aGUg
QVBJIG1lc3NhZ2UKPj4gbGF5b3V0LCBzbyBkb24ndCByZW1vdmUgdGhlIGNoZWNrIGl0c2VsZi7C
oCBJZiB5b3UgY2FuJ3QgZ2V0IGF3YXkgd2l0aAo+PiBpZ25vcmluZyB0aGUgY2hlY2twYXRjaC5w
bCBDSEVDSyBjb21wbGFpbnQgYWJvdXQgdGhlIGxpbmUgc3BhY2luZywgSSdtCj4+IGZpbmUgd2l0
aCBsZWF2aW5nIGl0IGFsb25lLsKgIFNvbWUgb3RoZXIgZGF5IHdlIGNhbiBsb29rIGF0IHRlYWNo
aW5nCj4+IGNoZWNrcGF0Y2gucGwgdG8gYWxsb3cgc3RhdGljX2Fzc2VydCgpIGFmdGVyIGEgc3Ry
dWN0Lgo+Pgo+IAo+IEkgc2hvdWxkIGhhdmUgYmVlbiBtb3JlIHNwZWNpZmljLiBJIHdhcyByZWZl
cnJpbmcgdG8gcmVtb3ZpbmcgdGhlIGJsYW5rCj4gbGluZSBhcyBJIHRoaW5rIHdlIGNhbiBsaXZl
IHdpdGggdGhlIENIRUNLLiBZb3VyIGNhbGwgSSBndWVzcy4KCkknZCBwcmVmZXIgdG8gbGl2ZSB3
aXRoIHRoZSBDSEVDSyBhcyBsb25nIGFzIEpha3ViIGFuZCBmcmllbmRzIGFyZSBnb29kIAp3aXRo
IGl0LgoKc2xuCgoKPiAKPj4+Cj4+Pj4KPj4+Pgo+Pj4+IFsuLi5dCj4+Pj4KPj4+Pj4+PiArLyog
UXVldWUgdG8gdmVjdG9yIG1hcHBpbmcgKi8KPj4+Pj4+PiArc3RydWN0IHZpcnRjaG5sMl9xdWV1
ZV92ZWN0b3Igewo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqAgX19sZTMyIHF1ZXVlX2lkOwo+Pj4+Pj4+
ICvCoMKgwqDCoMKgwqAgX19sZTE2IHZlY3Rvcl9pZDsKPj4+Pj4+PiArwqDCoMKgwqDCoMKgIHU4
IHBhZFsyXTsKPj4+Pj4+PiArCj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoCAvKiBTZWUgVklSVENITkwy
X0lUUl9JRFggZGVmaW5pdGlvbnMgKi8KPj4+Pj4+PiArwqDCoMKgwqDCoMKgIF9fbGUzMiBpdHJf
aWR4Owo+Pj4+Pj4+ICsKPj4+Pj4+PiArwqDCoMKgwqDCoMKgIC8qIFNlZSBWSVJUQ0hOTDJfUVVF
VUVfVFlQRSBkZWZpbml0aW9ucyAqLwo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqAgX19sZTMyIHF1ZXVl
X3R5cGU7Cj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoCB1OCBwYWQxWzhdOwo+Pj4+Pj4+ICt9Owo+Pj4+
Pj4KPj4+Pj4+IFdoeSB0aGUgZW5kIHBhZGRpbmc/wqAgV2hhdCdzIHdyb25nIHdpdGggdGhlIDE2
LWJ5dGUgc2l6ZT8KPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFRoZSBlbmQgcGFkZGluZyBpcyBhZGRlZCBm
b3IgYW55IHBvc3NpYmxlIGZ1dHVyZSBhZGRpdGlvbnMgb2YgdGhlCj4+Pj4+IGZpZWxkcwo+Pj4+
PiB0byB0aGlzIHN0cnVjdHVyZS4gRGlkbid0IGdldCB0aGUgYXNrIGZvciAxNi1ieXRlIHNpemUs
IGNhbiB5b3UgcGxlYXNlCj4+Pj4+IGVsYWJvcmF0ZT8KPj4+Pgo+Pj4+IFdpdGhvdXQgdGhlIHBh
ZDFbOF0sIHRoaXMgc3RydWN0IGlzIGFuIGV2ZW4gMTYgYnl0ZXMsIHNlZW1zIGxpa2UgYQo+Pj4+
IGxvZ2ljYWwgcGxhY2UgdG8gc3RvcC7CoCAyNCBieXRlcyBzZWVtcyBvZGQsIGlmIHlvdSdyZSBn
b2luZyB0byBwYWQgZm9yCj4+Pj4gdGhlIGZ1dHVyZSBpdCBtYWtlcyBzb21lIHNlbnNlIHRvIGRv
IGl0IHRvIGFuIGV2ZW4gMzIgYnl0ZXMKPj4+PiAocG93ZXItb2YtMikuwqAgQW5kIHBsZWFzZSBh
ZGQgYSBjb21tZW50IGZvciB0aGlzIGZ1dHVyZSB0aGlua2luZy4KPj4+Cj4+PiBXZSBjYW4gY2hh
bmdlIHRoZSBuYW1lIHRvIHJlc2VydmVkIHRvIG1ha2UgaXQgY2xlYXJlciwgYnV0IHRoZSBzaXpl
Cj4+PiBjYW5ub3QgYmUgY2hhbmdlZCBiZWNhdXNlIGl0J3MgYW4gQUJJIGFscmVhZHkuCj4+Cj4+
IFRoYXQncyBmaW5lIC0ganVzdCBtYWtlIHN1cmUgaXQgaXMgY2xlYXIgdGhpcyB3YXMgaW50ZW5k
ZWQuCj4gCj4gUmlnaHQuCj4gCj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3LAo+IEVtaWwKPiAKPj4K
Pj4gc2xuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
