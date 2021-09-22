Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 801F2414B76
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Sep 2021 16:12:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C2184057E;
	Wed, 22 Sep 2021 14:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A9ahmx38IerD; Wed, 22 Sep 2021 14:12:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BCA540480;
	Wed, 22 Sep 2021 14:12:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6AE4B1BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 14:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 59CBE613C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 14:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=lenovo.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sq08tZ0n5sWi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Sep 2021 14:10:45 +0000 (UTC)
X-Greylist: delayed 00:13:47 by SQLgrey-1.8.0
Received: from mail1.bemta24.messagelabs.com (mail1.bemta24.messagelabs.com
 [67.219.250.3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4215A613BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Sep 2021 14:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1632319017; i=@lenovo.com;
 bh=XU09EZJnXcgV+knhRoEQYscBdkDb6XlRVAHpVf5qLxk=;
 h=Message-ID:Date:MIME-Version:Subject:To:References:From:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=sydI9gulNZoEedy5AtXbcNJeiX+KMHmWoDd/UR9J0ZogB8hzSKVySfZ+TLmvJLfMF
 IeloblLS0wxL1vmPL1fC4rRUJYpVZrC1k+wqTM494L10a/+D/lEOV7t2YLKUHWv6YS
 Mn8Q3wbrzSLhbwoajtbE+RWhaCKXu7urs9RqhXTQzIJwwryeOLamtry5HBWQMHgqiP
 5/FCFV686F0VfyeIPTtI93TjNZ5X8OZjPxvXd3PXQmlu8LNIRkzOhoBYrWmOvIrqut
 mEl4x1xkKXMBaLVa9/JWe3RmC2fupbDbyBJQ+9zGYrnvOgwKQXmvG6aGc9ouRMXBTG
 Zv4mr46Y62yeQ==
Received: from [100.112.128.36] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-3.bemta.az-a.us-west-2.aws.symcld.net id 68/BB-13679-9263B416;
 Wed, 22 Sep 2021 13:56:57 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrMJsWRWlGSWpSXmKPExsWSoV9rpatp5p1
 o0HGL2eL/rd+sFrt/TmZ0YPJYvOclk8fJ5tIApijWzLyk/IoE1oy26zsYC+7LVmxrWsvYwHhF
 qouRi4NRYCmzRM+UtSwQzkoWiQ273jJ2MXICOR1MEh+P24HYQgIzmSQ+f+YFKRIS2M8k8WLlE
 VYQR0LgHqPE3RlrWCAynYwSu7f+YINomcgk0fggCyLxhFFi7c7nUFWPGCUeHZ7CClLFK2ArsW
 7vZSYQm0VAVeL5syY2iLigxMmZT1hAbFGBcImOp+uA6jk4hAX8JF6/zwUJMwuIS9x6Mh+sVUT
 AV+Lu4T2sEIvzJQ4+eAP2A5uAtsSWLb/ARnICrVrWcogFotdCYvGbg+wQtrzE9rdzmCF6lSV+
 9Z8HsyUEFCReNB5kg7ATJHr+PYKyJSWu3bzADmHLShw9O4cFwvaVOHJmJROErSUxb+49qJoci
 XmXvkPZahJrJtyBqpeTONV7jmkCo+4sJB/PQvLaLCSnzkJy6gJGllWMFklFmekZJbmJmTm6hg
 YGuoaGRrqGRha6hhbmeolVuol6pcW65anFJbpGeonlxXrFlbnJOSl6eaklmxiBKSeloGH3Dsa
 Xrz/oHWKU5GBSEuUVuuKVKMSXlJ9SmZFYnBFfVJqTWnyIUYaDQ0mCl8XEO1FIsCg1PbUiLTMH
 mP5g0hIcPEoivEt1gdK8xQWJucWZ6RCpU4zGHBNezl3EzLFk45JFzEIsefl5qVLivF9BJgmAl
 GaU5sENgqXlS4yyUsK8jAwMDEI8BalFuZklqPKvGMU5GJWEeb+BTOHJzCuB2/cK6BQmoFP4V3
 qAnFKSiJCSamBisCl2XmF0mvNWLr/nva1PkybwzuvZPHGyUpTja94HWp8y5/f/nORbmTqLMyn
 hc+UPTfMeJWWpov3z1MQ+3s3c9NP64q/zr5Vic9W+TPpxhPuZctjCH2EubyZzBLF+qYozre1l
 knvfdf1xru2emhmx9sqSOyW1sqwi5lXueTFB49D6Q+ZLX4TslX7kc3dBunXG96wD+SuL177LU
 WRq6FqwJ+p1ZlP37UmGZR6RF5O2bUmoiDJJ9Zt1d9WhNxpLvhyMOeny5LDbxxdFTvt+yv6yqH
 xz4W/RlHXf47NXfhFeWuoevfH/7d9TuhLU3rgu4mWxMrNzEJsxvyVL9fcq1eJm7kKdr+pzjmq
 brzzBvvSHEktxRqKhFnNRcSIAXBy/2kYEAAA=
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-10.tower-326.messagelabs.com!1632319015!62508!1
X-Originating-IP: [104.47.125.58]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.4; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 20243 invoked from network); 22 Sep 2021 13:56:56 -0000
Received: from mail-sg2apc01lp2058.outbound.protection.outlook.com (HELO
 APC01-SG2-obe.outbound.protection.outlook.com) (104.47.125.58)
 by server-10.tower-326.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 22 Sep 2021 13:56:56 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZZcUjJ0bTkUOlPN4lpBLlUjnlMGmdIiE1eZ5iew3PBpKdDr+mrXRfvTPAF+XxZftXMECn9YYYSD9/PZISmDXJj4gsWoKatWUOaj6upfa6IYK2sjDfK+ajdGlWX3W9jFQ8IJruazbA4MMeo7mqoE5Q9yMhB9BUwpBhF1741Fm8s4eg41T0TECxA4CbTdqLzXBXI/I557s0H0pCblpX/PiclBAN2xYPA7ZIxjnZjG6uLy5W3DGEFrGIFYQZ4DjYq1MUDhuhTqKopjnuCqZTfJXI+zuI9XrCWP64er1AzZO1D6D8345Zo0mVsqkcbfoDrmkQqNugW/+uxYJDB06aogsbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=XU09EZJnXcgV+knhRoEQYscBdkDb6XlRVAHpVf5qLxk=;
 b=jErrPyC2SRUdLS6L6Qlz4R45aU/aEVpLTAbbLWDyTAWNPOhurzeC0PcqtmxtdMoDIHcWxWXTYYCWaYbuqraH3yKDAkAkGIJ1X7uBwhogVxVEKwCyPC+K2U1FWYJd7LbBQf7b0bNApaUONLch/jAD7NfvwcYNMXLe1I7qeBTxwArKuGetClGrOz/XJ9K0myHynt8RdDpKlQ73Z5+HMKxMCtIIIaAJRgTcpY65jDnumgipPG/GHqCDEo/ch+lCY85eQsZ/e7W6F6oHo1YRIejbUX6qJ33LugUkXO90IqDbIlDQjEx6COahp8E7TXqyLeqPENN9eZMPOvnYRhF9Letn+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 104.232.225.6) smtp.rcpttodomain=intel.com smtp.mailfrom=lenovo.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=lenovo.com;
 dkim=none (message not signed); arc=none
Received: from SG2PR02CA0086.apcprd02.prod.outlook.com (2603:1096:4:90::26) by
 SI2PR03MB5830.apcprd03.prod.outlook.com (2603:1096:4:142::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.9; Wed, 22 Sep 2021 13:56:54 +0000
Received: from SG2APC01FT041.eop-APC01.prod.protection.outlook.com
 (2603:1096:4:90:cafe::8c) by SG2PR02CA0086.outlook.office365.com
 (2603:1096:4:90::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13 via Frontend
 Transport; Wed, 22 Sep 2021 13:56:54 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 104.232.225.6) smtp.mailfrom=lenovo.com; intel.com; dkim=none (message not
 signed) header.d=none;intel.com; dmarc=fail action=none
 header.from=lenovo.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 lenovo.com discourages use of 104.232.225.6 as permitted sender)
Received: from mail.lenovo.com (104.232.225.6) by
 SG2APC01FT041.mail.protection.outlook.com (10.152.251.61) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.13 via Frontend Transport; Wed, 22 Sep 2021 13:56:53 +0000
Received: from reswpmail01.lenovo.com (10.62.32.20) by mail.lenovo.com
 (10.62.123.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.12; Wed, 22 Sep
 2021 09:56:52 -0400
Received: from [10.38.48.185] (10.38.48.185) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.12; Wed, 22 Sep
 2021 09:56:51 -0400
Message-ID: <7dba27f2-b94e-0dcd-48e6-62a66ce7662b@lenovo.com>
Date: Wed, 22 Sep 2021 09:56:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20210922065542.3780389-1-sasha.neftin@intel.com>
 <0631366b-808d-f52b-8cf6-2a2cbdd636d2@intel.com>
From: Mark Pearson <markpearson@lenovo.com>
In-Reply-To: <0631366b-808d-f52b-8cf6-2a2cbdd636d2@intel.com>
X-Originating-IP: [10.38.48.185]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail01.lenovo.com (10.62.32.20)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 124f4be0-c5ed-428e-42d4-08d97dd0d5f6
X-MS-TrafficTypeDiagnostic: SI2PR03MB5830:
X-Microsoft-Antispam-PRVS: <SI2PR03MB5830699B831D8BEACCF130BBC5A29@SI2PR03MB5830.apcprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gvWnDXIbzU9I/DK33+1pM1h/JwLZbVkMe5fmGnts05xfjgCGoofzEknreGbkmhg23s0n8LioiY/nZEy+151jpQLwPV1UxNGIRclV1nrBVZBd29yBSGYc4bC+QDZD96Onio/upBs8QZypzB5QYLLPXdRtdrhBYurcp+1PbxjZamhxVM0Elh8asS5F3zfpLUJjmPUviwn/xjX5ikY5g+pNHnV96d8xir5GwuSoLfSVCu8e2JhlFNPle2Uc7tG4klTAvEqGYmwh8C4fhaYdrwnj9i4lrXNgJwhoyy2Mq84QkDLHCrqQgH36lawVnU0juelCZLka8AmtCafUYtb/QMZmxn1OXmJZh+zU6kAz4CZhQolaKhLNEY+OoY2hXHCfE2wnzBxOm1L75i5USBaDQkZWZwkp4O7fNHkKU1001h0xlcrwCSuktKfJPN/C3lr+zP/y4doho9sorHk1N+ydTcf0JZvSqkTw+lotbU/53o5PcGLgvS0FU8yWnEn4pfkMRoKH1dRrpM7K4nyzODRkJuGqn8jCGGCjEY9r3l/MSFMsQ66UmkO+C35gDgKaSf8Q3BsmOfNyf4sMEyfIVDnXtyCiA8SQTWsEAn/pmEdnlN67dOVWb+kntbxIY6BEOORTRHzLBFpn0pMl7FeR0/aB+ebPfikv0OyxPprOD6eXw9eXouv4HjLd8AqlKBAylvnV5OoTiO02pKx+J05wFcww43et/k+5P80aYPjaWZicc1Lao27L9SShP6koHVtqQCoWgXibG3wwqlNuQgoRHfSX/Vlrq4LJWYTs7rOQ4vPfgtEUK5c59jrqUEswZUwT6bQxOFVJ0CEOZe9M1aoSJMcgP8C3e82MoiIQEZa7AQyw6/15xdxQXdNVEZ+Yd8t1pO1WKfMI
X-Forefront-Antispam-Report: CIP:104.232.225.6; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.lenovo.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(4636009)(36840700001)(46966006)(8936002)(53546011)(2616005)(70586007)(36756003)(36860700001)(5660300002)(8676002)(356005)(426003)(81166007)(82310400003)(26005)(110136005)(36906005)(47076005)(2906002)(316002)(86362001)(16576012)(70206006)(508600001)(31696002)(186003)(336012)(31686004)(16526019)(966005)(45080400002)(83380400001)(3940600001)(36900700001)(43740500002);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2021 13:56:53.9744 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 124f4be0-c5ed-428e-42d4-08d97dd0d5f6
X-MS-Exchange-CrossTenant-Id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5c7d0b28-bdf8-410c-aa93-4df372b16203; Ip=[104.232.225.6];
 Helo=[mail.lenovo.com]
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT041.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR03MB5830
X-Mailman-Approved-At: Wed, 22 Sep 2021 14:12:01 +0000
Subject: Re: [Intel-wired-lan] [PATCH v1 2/2] e1000e: Fixing packet loss
 issues on new platforms
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhhbmtzIFNhc2hhLAoKQ29uZmlybWVkIHRoaXMgZml4ZXMgdGhlIHByb2JsZW0gb24gbXkgWDEz
IEcyCgpUZXN0ZWQtYnk6IE1hcmsgUGVhcnNvbiA8bWFya3BlYXJzb25AbGVub3ZvLmNvbT4KCk1h
cmsKCk9uIDIwMjEtMDktMjIgMDk6MjksIFNhc2hhIE5lZnRpbiB3cm90ZToKPiAKPiAKPiAKPiAt
LS0tLS0tLSBGb3J3YXJkZWQgTWVzc2FnZSAtLS0tLS0tLQo+IFN1YmplY3Q6IFtQQVRDSCB2MSAy
LzJdIGUxMDAwZTogRml4aW5nIHBhY2tldCBsb3NzIGlzc3VlcyBvbiBuZXcgcGxhdGZvcm1zCj4g
RGF0ZTogV2VkLCAyMiBTZXAgMjAyMSAwOTo1NTo0MiArMDMwMAo+IEZyb206IFNhc2hhIE5lZnRp
biA8c2FzaGEubmVmdGluQGludGVsLmNvbT4KPiBUbzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9z
dW9zbC5vcmcKPiBDQzogU2FzaGEgTmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPgo+IAo+
IFVwZGF0ZSB0aGUgSFcgTUFDIGluaXRpYWxpemF0aW9uIGZsb3cuIERvIG5vdCBnYXRlIERNQSBj
bG9jayBmcm9tCj4gdGhlIG1vZFBIWSBibG9jay4gS2VlcGluZyB0aGlzIGNsb2NrIHdpbGwgcHJl
dmVudCBkcm9wIHBhY2tldHMgc2VudAo+IGluIGJ1cnN0IG1vZGUgb24gdGhlIEt1bWVyYW4gaW50
ZXJmYWNlLgo+IAo+IEJ1Z3ppbGxhOiAKPiBodHRwczovL2FwYzAxLnNhZmVsaW5rcy5wcm90ZWN0
aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZidWd6aWxsYS5rZXJuZWwub3JnJTJG
c2hvd19idWcuY2dpJTNGaWQlM0QyMTM2NTEmYW1wO2RhdGE9MDQlN0MwMSU3Q21hcmtwZWFyc29u
JTQwbGVub3ZvLmNvbSU3Q2I1YjA3M2I2MzA3OTRjOGZmN2I5MDhkOTdkY2QwM2EzJTdDNWM3ZDBi
MjhiZGY4NDEwY2FhOTM0ZGYzNzJiMTYyMDMlN0MxJTdDMCU3QzYzNzY3OTE0MTc0MjMwOTEwNSU3
Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16
SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MxMDAwJmFtcDtzZGF0YT0xVEpHckhX
eFVuZTdtJTJCT1BhQXc1VHVNQUpIek9sZGc1V3M0eFNZMkV3NDAlM0QmYW1wO3Jlc2VydmVkPTAg
Cj4gCj4gQnVnemlsbGE6IAo+IGh0dHBzOi8vYXBjMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0
bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmJ1Z3ppbGxhLmtlcm5lbC5vcmclMkZzaG93X2J1
Zy5jZ2klM0ZpZCUzRDIxMzM3NyZhbXA7ZGF0YT0wNCU3QzAxJTdDbWFya3BlYXJzb24lNDBsZW5v
dm8uY29tJTdDYjViMDczYjYzMDc5NGM4ZmY3YjkwOGQ5N2RjZDAzYTMlN0M1YzdkMGIyOGJkZjg0
MTBjYWE5MzRkZjM3MmIxNjIwMyU3QzElN0MwJTdDNjM3Njc5MTQxNzQyMzE5MDU4JTdDVW5rbm93
biU3Q1RXRnBiR1pzYjNkOGV5SldJam9pTUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJU
aUk2SWsxaGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzEwMDAmYW1wO3NkYXRhPUJSdUphNHBmJTJGaFRh
dSUyQmZEWTFsTU9JJTJGMHdDTVVZaDViQiUyRkpIWmpUSm1RdyUzRCZhbXA7cmVzZXJ2ZWQ9MCAK
PiAKPiBGaXhlczogYmM3Zjc1ZmE5Nzg4ICgiTmV3IHBjaS1leHByZXNzIGUxMDAwIGRyaXZlciIp
Owo+IFNpZ25lZC1vZmYtYnk6IFNhc2hhIE5lZnRpbiA8c2FzaGEubmVmdGluQGludGVsLmNvbT4K
PiAtLS0KPiAgwqBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jIHwg
MTEgKysrKysrKysrKy0KPiAgwqBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNo
OGxhbi5oIHzCoCAzICsrKwo+ICDCoDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9lMTAwMGUvaWNoOGxhbi5jIAo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBl
L2ljaDhsYW4uYwo+IGluZGV4IDY2ZDcxOTYzMTBlMi4uNWU0ZmM5YjRlMmFkIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPiArKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvaWNoOGxhbi5jCj4gQEAgLTQ4MTMsNyAr
NDgxMyw3IEBAIHN0YXRpYyBzMzIgZTEwMDBfcmVzZXRfaHdfaWNoOGxhbihzdHJ1Y3QgZTEwMDBf
aHcgCj4gKmh3KQo+ICDCoHN0YXRpYyBzMzIgZTEwMDBfaW5pdF9od19pY2g4bGFuKHN0cnVjdCBl
MTAwMF9odyAqaHcpCj4gIMKgewo+ICDCoMKgwqDCoCBzdHJ1Y3QgZTEwMDBfbWFjX2luZm8gKm1h
YyA9ICZody0+bWFjOwo+IC3CoMKgwqAgdTMyIGN0cmxfZXh0LCB0eGRjdGwsIHNub29wOwo+ICvC
oMKgwqAgdTMyIGN0cmxfZXh0LCB0eGRjdGwsIHNub29wLCBmZmx0X2RiZzsKPiAgwqDCoMKgwqAg
czMyIHJldF92YWw7Cj4gIMKgwqDCoMKgIHUxNiBpOwo+ICDCoEBAIC00ODcyLDYgKzQ4NzIsMTUg
QEAgc3RhdGljIHMzMiBlMTAwMF9pbml0X2h3X2ljaDhsYW4oc3RydWN0IAo+IGUxMDAwX2h3ICpo
dykKPiAgwqDCoMKgwqDCoMKgwqDCoCBzbm9vcCA9ICh1MzIpfihQQ0lFX05PX1NOT09QX0FMTCk7
Cj4gIMKgwqDCoMKgIGUxMDAwZV9zZXRfcGNpZV9ub19zbm9vcChodywgc25vb3ApOwo+ICDCoCvC
oMKgwqAgLyogRW5hYmxlIHdvcmthcm91bmQgZm9yIHBhY2tldCBsb3NzIGlzc3VlIG9uIFRHUCBQ
Q0gKPiArwqDCoMKgwqAgKiBEbyBub3QgZ2F0ZSBETUEgY2xvY2sgZnJvbSB0aGUgbW9kUEhZIGJs
b2NrCj4gK8KgwqDCoMKgICovCj4gK8KgwqDCoCBpZiAobWFjLT50eXBlID49IGUxMDAwX3BjaF90
Z3ApIHsKPiArwqDCoMKgwqDCoMKgwqAgZmZsdF9kYmcgPSBlcjMyKEZGTFRfREJHKTsKPiArwqDC
oMKgwqDCoMKgwqAgZmZsdF9kYmcgfD0gRTEwMDBfRkZMVF9EQkdfRE9OVF9HQVRFX1dBS0VfRE1B
X0NMSzsKPiArwqDCoMKgwqDCoMKgwqAgZXczMihGRkxUX0RCRywgZmZsdF9kYmcpOwo+ICvCoMKg
wqAgfQo+ICsKPiAgwqDCoMKgwqAgY3RybF9leHQgPSBlcjMyKENUUkxfRVhUKTsKPiAgwqDCoMKg
wqAgY3RybF9leHQgfD0gRTEwMDBfQ1RSTF9FWFRfUk9fRElTOwo+ICDCoMKgwqDCoCBldzMyKENU
UkxfRVhULCBjdHJsX2V4dCk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2UxMDAwZS9pY2g4bGFuLmggCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAw
MGUvaWNoOGxhbi5oCj4gaW5kZXggZDZhMDkyZTVlZTc0Li4yNTA0YjExYzMxNjkgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uaAo+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmgKPiBAQCAtMjg5LDYg
KzI4OSw5IEBACj4gIMKgLyogUHJvcHJpZXRhcnkgTGF0ZW5jeSBUb2xlcmFuY2UgUmVwb3J0aW5n
IFBDSSBDYXBhYmlsaXR5ICovCj4gIMKgI2RlZmluZSBFMTAwMF9QQ0lfTFRSX0NBUF9MUFTCoMKg
wqDCoMKgwqDCoCAweEE4Cj4gIMKgKy8qIERvbid0IGdhdGUgd2FrZSBETUEgY2xvY2sgKi8KPiAr
I2RlZmluZSBFMTAwMF9GRkxUX0RCR19ET05UX0dBVEVfV0FLRV9ETUFfQ0xLwqDCoMKgIDB4MTAw
MAo+ICsKPiAgwqB2b2lkIGUxMDAwZV93cml0ZV9wcm90ZWN0X252bV9pY2g4bGFuKHN0cnVjdCBl
MTAwMF9odyAqaHcpOwo+ICDCoHZvaWQgZTEwMDBlX3NldF9rbXJuX2xvY2tfbG9zc193b3JrYXJv
dW5kX2ljaDhsYW4oc3RydWN0IGUxMDAwX2h3ICpodywKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBib29sIHN0YXRlKTsKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxp
bmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
