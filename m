Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA8075262B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 17:08:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E18E613DF;
	Thu, 13 Jul 2023 15:08:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E18E613DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689260919;
	bh=57taHPZye6OGPkPchy9B6o1uBGEp+5GPsFIpC8LeS28=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ylfP0mMzORYJcJNq3O78Oz+UOQjG/1hzIS6RCuRatQngBNyMQidiLRnjELaMvS9en
	 04rBUP+jygmUpWUmDkOSN6hhfMJ8yiIklxW4QA0K+dxtqfxIMPrb9BoS93xoC3Eazn
	 44cWs05az3z8QCgH5tuR7kDxki/yPPPiauv1Pz6AaavZ3j0ze9G/4xsjaq0gGrWOQ3
	 KZ3T6zRkQXCX6aMRrAptY9uf+lfOKPVXs+jJ/6Ank0CX1CqKUlZAs7VnNokyzt7lUr
	 NNo1B6D8Z7NJH8vg472k5qcq+kfk5jB3nswXqYfs2eVW7Bb5lf3GScYxTkTCdXkvEX
	 QNZAHWiM4M7+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N2QQ0Z0BkPsC; Thu, 13 Jul 2023 15:08:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F091F613CE;
	Thu, 13 Jul 2023 15:08:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F091F613CE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 134AD1BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 01:54:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC34941C20
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 01:54:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC34941C20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VeUY2c8yT1OI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 01:54:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D0E741BED
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-sgaapc01on2113.outbound.protection.outlook.com [40.107.215.113])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D0E741BED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 01:54:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G3K5q+hcKQXBMBuUf5kpm1+NsHqU6k/foA1MArU3AVaGPbhBVqDrszHHlrrZNU25hC6uHkKhhvv3Lg/XTXxxmyBPSyOTDbG5MRuoGFDY2I03K6yaRkd6Oo9UhQu6lHBm5g5iB+qYUqAV0L7c456P5Y9P/iZmcQggQRuEtSuvI55hItqYmk+QHeHXSP0ZKgmN9GX/KA7gNNgpgJ2aWgFYTT9f1nsiWmNLBuOhGmTq7W95cmOrZz4a0Vcj1O6pnQq2hjh+O/6IHVLUeGPsAWLmtBzvcCvzCWDT6ekYtqGoiYfW7P/PiK9d1ETAnoDkiaIbqlvS8FnsIeZbk5KTsZ970w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t/9PQtJMmuj8MJUzaQtaNZsL/RnXWrf3Z5PfiEQptCM=;
 b=NJn//BzPpjNeyb4H0zN2NoD8Jk/jBEBuiVUSQyc1QoqyHM+pJquzFsNe4ibOB0Odzn9REKMPa1B/bstr5fCO/R+lnsCtAn2kvAjw9ou9xwmEB1zv28ctOZ5s5w7pTlwuRaf+n4sn3H43DoXvTiD6Ouhes8f6x2bE4iw4TlwkPwZ2ZN8O5Yn66f1pNw1iXIT45Rq+GnKI1yBHkMdyj0sIeo4AqlQHH06eQynSaiXHUGyDWVLDaHaGip2E0JoX8OaRcHPat7hvc7+HdkggTnEtzHk5vZRhWuyL2NvvwivBOXjJYS8713zbOwdEjbMJ6Og/HSq/2bFUBjhRp9iHqZW9YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
Received: from SG2PR06MB3743.apcprd06.prod.outlook.com (2603:1096:4:d0::18) by
 TYZPR06MB4111.apcprd06.prod.outlook.com (2603:1096:400:4::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.24; Thu, 13 Jul 2023 01:54:35 +0000
Received: from SG2PR06MB3743.apcprd06.prod.outlook.com
 ([fe80::2a86:a42:b60a:470c]) by SG2PR06MB3743.apcprd06.prod.outlook.com
 ([fe80::2a86:a42:b60a:470c%4]) with mapi id 15.20.6588.024; Thu, 13 Jul 2023
 01:54:35 +0000
From: =?utf-8?B?546L5piOLei9r+S7tuW6leWxguaKgOacr+mDqA==?= <machel@vivo.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH v2] net:Fix an NULL vs IS_ERR() bug for
 debugfs_create_dir() in i40e_dbg_init()
Thread-Index: AQHZtLsr+oGfGkkIJ0yxJe3KFxfYWK+2nXWAgABQ+DA=
Date: Thu, 13 Jul 2023 01:54:35 +0000
Message-ID: <SG2PR06MB374377D08613C1A6DB466752BD37A@SG2PR06MB3743.apcprd06.prod.outlook.com>
References: <20230712121943.7597-1-machel@vivo.com>
 <bdf08528-1e45-0b7a-e617-63151aa89e0d@intel.com>
In-Reply-To: <bdf08528-1e45-0b7a-e617-63151aa89e0d@intel.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SG2PR06MB3743:EE_|TYZPR06MB4111:EE_
x-ms-office365-filtering-correlation-id: 5afd29c0-59c2-463c-6cdd-08db83441c00
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v6JZwBO9eSNqcf8PdsEblzG18zJwW59XCGCMnReMfKauHwOQ0XsqrSgl95m8rWxFhApV3bzeqtLTvWezp2sY5ziBF8ldcPlBXtpLTvlNqeRQStBbKcS7OHcAQEaZSr/v0OkR1Ox0SaqktU+8Fnineco+bQiogGgqGxs9X3MIFJbtoDUqMSZDgXLf03Vpjbs9HTUasSes2RTQwB6VTs3BDd/Nn7m4iucm7XqOnOT1rvRjuNkldIGE9kmBeorRhBKup0hAuWngR2HiJEc9Mx/F7rCNqwNjNqxz4fPDp4byXs3Ubkj6Vu5lHGW5dcBF8NIo3BOyuaecIPyq4Jq5PVljuwZHEiZoAdyE8yrjnGoux7dpXSvS5DmMMiQj+z5dL+W/yob7mbuMlox8J37OM5Wslyp6mccIGGPKz01iRddoOV+zPo4zYtf1UuQ0oPJxAzr8Z8fgimTPON5uvNIIGNmdnvJawCLubYR/ge+tDuQFlBXJSaPCkNQnV4Ou/prAm3qNqx6ej4iEKkFhgmqz1n3ooWRktLwRyK4/HddRHA7+yBC/IdQyn4/q1YSDc3BHXPtjqrmkN8D5X1xmk5kkaZCTUUh8+d+RcyH1cfxyd7CI+ws=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SG2PR06MB3743.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(39850400004)(136003)(346002)(366004)(376002)(396003)(451199021)(38070700005)(33656002)(224303003)(86362001)(38100700002)(122000001)(55016003)(478600001)(71200400001)(54906003)(7696005)(966005)(8936002)(5660300002)(52536014)(316002)(76116006)(66946007)(66476007)(2906002)(6916009)(4326008)(64756008)(66556008)(66446008)(41300700001)(83380400001)(85182001)(53546011)(9686003)(6506007)(26005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SnJIVGZ6dkhhcTU1ZVlXS1BzT01iMGw1d0x6Um5wRzhjdkRxOS9oMDJBK3pB?=
 =?utf-8?B?a0ZIQ1gzWjl3ZmRnTDE4ZGgyYTN5bC9ZUUV2N3kxMFczRmVidXdYd2NNRUpm?=
 =?utf-8?B?aVdFamZPbXZ2WG81aDA3ekNYb2U4ZVZLTjZ4ZFFkSHN1TVdXcC9mbTJwcHFB?=
 =?utf-8?B?Y3RibzBpWHpDekpvNk9EVm9PVDhBcnc5UHhGSkNUeXA0emx0VzJaclV0RnNn?=
 =?utf-8?B?ZXVEMnRMa1hoUGdCdXZpWkVMWVpGeDQ3cDh5dkNpbmdETmRmd1ViSXRQNDlI?=
 =?utf-8?B?NGQ0WUxJTlg1eWVaaVhzTVBjcm42M2FVaHV5UVhvaGdjcnQ4Tlc4ZkNzWHlE?=
 =?utf-8?B?OFZCbDNGS0VTNkNiY2lXbGE1d2gwSlhnY2NaZ29tMjEwOGVpYTJZUThvWWhk?=
 =?utf-8?B?L25vSXBOL28zYXNBVHVPTTBQS3lVUGN4UXp4Y0RBay9BdGtDcmFjbDM4MUFi?=
 =?utf-8?B?SzdMK2xKR1pybS84WWl3TzdBNGVHWXRuL0xMVHZsd3RWMlJrNVpNUmFpV3pt?=
 =?utf-8?B?b2NxbG9hZHNXYnB4RTdqYzZZVGZaazZ4TVZTeGhERmpMejVPNTQ5R2lTZTRo?=
 =?utf-8?B?bHFaNCtLQmF1THlTQVc0Y25jQWhOUnp5eHhrbU5CRDY5YkhTV1FjWkVzb2Zq?=
 =?utf-8?B?cGhBNXI5QkZtR2xqSVFJbjZ6SVdycHBrdll6T1R2bXJRazI3NWsyYlI2bm5m?=
 =?utf-8?B?QzJjUlpQUy84bEZHdEdYdVRJdWxhUDdGZUNuZzhSa3ZPZ3lhUndxalpSRU5j?=
 =?utf-8?B?cEw0TlJML0g0ZTkxV3hnSnpqVDFNWmg5SSs0WHlnMHhtdStLeXArbXh3RXl4?=
 =?utf-8?B?V1JhSUxYTUY0bk5pdndxUGZyY1phcnJUYnRBZndtc0oyQ2E2T3ZBN1YyS1d5?=
 =?utf-8?B?NnV5WXQrVTJSUzNqMG5QN3JOczJlUGdzbE5QdDBpemM2akREWHlEdFBXV1Zx?=
 =?utf-8?B?ZGNBS2FKNGEwYjZBN0svV2FkQTV6aWl0SDdWQTF4Y1FGWExMVS9NbEtoeWlq?=
 =?utf-8?B?ZFN5NUtBbFRFWkM1bVZCUGE5ZkYvZzB4WVMxS3RHYWRYaFY1Yi9HSSswcWxh?=
 =?utf-8?B?OXIzSkU0a2VXb2I4REU2NW83enVoUjBNUFN0bHpwU00rdnVKUnZZM1RiazRh?=
 =?utf-8?B?enB3Y1QzYjBnQ1U5SXZYU21MNFJnbFNwMGJRanNqK2p5bU9jUEZGLzkzWk1z?=
 =?utf-8?B?ZkIvNFFWbFZzU09ONG9ueGhad0IrWC81ckZHOWpzQ0dQbkYzSXZnUlBLbnZn?=
 =?utf-8?B?blNkcjQ1dFczaDNZbGJoZlhpSDUvN2RwTTB5V2NWWmNia0RIazNoeGxWOTZT?=
 =?utf-8?B?d2x4NDBJWGptYlJhYXo2Qk9JZ0ZiQ3pwMExyaWRFSTNzWXVnTTEwbGRpZHh2?=
 =?utf-8?B?MmpMSkFZNGhsM2EzcDJQZHlORndDanZCdXRLekhUV29pekpqeldnZGJLOERz?=
 =?utf-8?B?U04rZysyd0x3dkN2ZWN2MlZ0dG1BbnQveWVIZ0ZYRGIrbUkySlNNRURINkVI?=
 =?utf-8?B?OTd0Z2poZFJtL25LK0ZNYnlEcC9xeUFLcjJ3OEg5Ty9LU3N4bkZuMENyWTJ0?=
 =?utf-8?B?bTBFUDRPRUJ6N0s1dEt5cXBXQXFzVXJiVWlBdXFZYWI3SXhjazJFbVJoanZx?=
 =?utf-8?B?VmhlRzRVVkZWMWloOFQvc2l4OW12d09SUjUzYXBPZ2lsOU5xOFNpaHJST3Rx?=
 =?utf-8?B?V01pTFNxN1pmNXE4TWM5QmNGbU5RZmc2NmZ4bWFYWCtTM3l1ckFHQnVyWEpt?=
 =?utf-8?B?N1g2MllWbXpPV3pLcU1ZRzV4cXpMMlU5cTJ3YkdtWWtqYWhLSkVNQ2hjVEE1?=
 =?utf-8?B?SE5MTnM3M00vMUN6VUlla1NKSHBEUEk0V0VKa0dsQWtPWXM2ZjhHR0JoeFRu?=
 =?utf-8?B?Zm9mTDRBUjNLcFlONnJOZmViWVU5VnRKbU9LUk1ETEIwNHBBM1hVL0huYndi?=
 =?utf-8?B?UEFTVGgwNnhtNlFQTTlqVVRkaHhCNWsvcS9WMTEzMjlUSkJYWGZUMkJwbllG?=
 =?utf-8?B?NitHdDQrSStIMWUyQUIva0I5U3FCbzVUMzJDYkRmK2plVkJjYTdMbkdZVXBt?=
 =?utf-8?B?TU9sZTNiSlkwVTQ0R1NWWXBteERKNVVsSjRPaXo1SmhXYVJVSjBjSDNOUnM2?=
 =?utf-8?Q?kqH8=3D?=
MIME-Version: 1.0
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SG2PR06MB3743.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5afd29c0-59c2-463c-6cdd-08db83441c00
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2023 01:54:35.3473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IR7bX3rAnMdtGvA0T+cIHIdolozS2vxUluqEO1wZSs5DH+Vq/ASefL+rTz30+SDS0ILYUYqoZRxXBcGX4JtVKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB4111
X-Mailman-Approved-At: Thu, 13 Jul 2023 15:08:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vivo.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t/9PQtJMmuj8MJUzaQtaNZsL/RnXWrf3Z5PfiEQptCM=;
 b=aI70JZ+DbGFLhBJffrLRZhUVz/ADQ/+yxojEC+2JjvOw8/XYf85lNXmek4CQL/J5PROaXPJgABXb3VkMADUfBdAAQMzodg8kv1VgierYmvYQyf882w2+mUGnFSlyhV8qGLciQpm5T1oZ/bA91IJ247JSaimP6evQtHAxNf2H9ZdFsaHU6CoeybUGP+6qOp9E4/rJQgvjNfVazhdkNPuQ7khW2xedGDWyhyCDEOxZw7+ZtHVHc3IU2o5x7Y65qxpu2fYI88bH+IGw3WBguLVgnfZryTQaDWbnstZ/8dxHhG/kmWJwd0wstBIg4CgHCW1QgzsdEhE1x1lv0raBKJGBCQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=vivo.com header.i=@vivo.com header.a=rsa-sha256
 header.s=selector2 header.b=aI70JZ+D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Subject: [Intel-wired-lan] =?utf-8?b?5Zue5aSNOiBbUEFUQ0ggdjJdIG5ldDpGaXgg?=
 =?utf-8?q?an_NULL_vs_IS=5FERR=28=29_bug_for_debugfs=5Fcreate=5Fdir=28=29_?=
 =?utf-8?b?aW4gaTQwZV9kYmdfaW5pdCgp?=
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgVG9ueSBOZ3V5ZW4NCmdvb2QgbW9ybmluZywgSSBoYXZlIHJlc3VibWl0dGVkIHBhdGNoIGFj
Y29yZGluZyB0byB5b3VyIHJlcXVpcmVtZW50cywgcGxlYXNlIHJldmlldyBpdCB3aGVuIHlvdSBh
cmUgZnJlZSwgSSB3aWxsIGJlIHZlcnkgZ3JhdGVmdWwuDQrwn5iKDQpSZWdhcmRzLA0KV2FuZyBN
aW5nDQotLS0tLemCruS7tuWOn+S7ti0tLS0tDQrlj5Hku7bkuro6IFRvbnkgTmd1eWVuIDxhbnRo
b255Lmwubmd1eWVuQGludGVsLmNvbT4gDQrlj5HpgIHml7bpl7Q6IDIwMjPlubQ35pyIMTPml6Ug
NDo1Nw0K5pS25Lu25Lq6OiDnjovmmI4t6L2v5Lu25bqV5bGC5oqA5pyv6YOoIDxtYWNoZWxAdml2
by5jb20+OyBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT47IERh
dmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEVyaWMgRHVtYXpldCA8ZWR1bWF6
ZXRAZ29vZ2xlLmNvbT47IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbyBB
YmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
ZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0K
5oqE6YCBOiBvcGVuc291cmNlLmtlcm5lbCA8b3BlbnNvdXJjZS5rZXJuZWxAdml2by5jb20+DQrk
uLvpopg6IFJlOiBbUEFUQ0ggdjJdIG5ldDpGaXggYW4gTlVMTCB2cyBJU19FUlIoKSBidWcgZm9y
IGRlYnVnZnNfY3JlYXRlX2RpcigpIGluIGk0MGVfZGJnX2luaXQoKQ0KDQpPbiA3LzEyLzIwMjMg
NToxOSBBTSwgV2FuZyBNaW5nIHdyb3RlOg0KDQpQbGVhc2UgZGVzaWduYXRlIGEgdHJlZSBmb3Ig
dGhlIHBhdGNoIChuZXQgb3IgbmV0LW5leHQpIFsxXS4NCg0KSWYgeW91IGNvdWxkIGluY2x1ZGUg
dGhlIGRyaXZlciAoaTQwZSkgaW4gdGhlIGNvbW1pdCB0aXRsZSBhcyB3ZWxsLiANCkFsc28sIGEg
bml0LCBidXQgdGhlIHRpdGxlIGlzIGEgYml0IGxvbmcsIHNlZW1zIGxpa2UgaXQgY291bGQgYmUg
YSBiaXQgbW9yZSBzdWNjaW5jdC4NCg0KPiBUaGUgZGVidWdmc19jcmVhdGVfZGlyKCkgZnVuY3Rp
b24gcmV0dXJucyBlcnJvciBwb2ludGVycy4NCj4gSXQgbmV2ZXIgcmV0dXJucyBOVUxMLiBNb3N0
IGluY29ycmVjdCBlcnJvciBjaGVja3Mgd2VyZSBmaXhlZCwgYnV0IHRoZSANCj4gb25lIGluIGk0
MGVfZGJnX2luaXQoKSB3YXMgZm9yZ290dGVuLg0KPiANCj4gRml4IHRoZSByZW1haW5pbmcgZXJy
b3IgY2hlY2suDQoNCkFzIGl0J3MgYSBmaXgsIHRoZXJlIHNob3VsZCBiZSBhIEZpeGVzIHRhZyBh
cyB3ZWxsLg0KDQo+IFNpZ25lZC1vZmYtYnk6IFdhbmcgTWluZyA8bWFjaGVsQHZpdm8uY29tPg0K
PiAtLS0NCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZGVidWdmcy5j
IHwgMiArLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9kZWJ1Z2ZzLmMgDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2Rl
YnVnZnMuYw0KPiBpbmRleCA5OTU0NDkzY2Q0NDguLjYyNDk3ZjU1NjVjNSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2RlYnVnZnMuYw0KPiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfZGVidWdmcy5jDQo+IEBAIC0x
ODM5LDcgKzE4MzksNyBAQCB2b2lkIGk0MGVfZGJnX3BmX2V4aXQoc3RydWN0IGk0MGVfcGYgKnBm
KQ0KPiAgIHZvaWQgaTQwZV9kYmdfaW5pdCh2b2lkKQ0KPiAgIHsNCj4gICAJaTQwZV9kYmdfcm9v
dCA9IGRlYnVnZnNfY3JlYXRlX2RpcihpNDBlX2RyaXZlcl9uYW1lLCBOVUxMKTsNCj4gLQlpZiAo
IWk0MGVfZGJnX3Jvb3QpDQo+ICsJaWYgKElTX0VSUihpNDBlX2RiZ19yb290KSkNCj4gICAJCXBy
X2luZm8oImluaXQgb2YgZGVidWdmcyBmYWlsZWRcbiIpOw0KPiAgIH0NCj4gICANCg0KWzFdDQpo
dHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9wcm9jZXNzL21haW50YWluZXIt
bmV0ZGV2Lmh0bWwjbmV0ZGV2LWZhcQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
