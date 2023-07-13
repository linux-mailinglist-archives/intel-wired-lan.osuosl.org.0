Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 866A9751EC8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 12:25:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29BE46132E;
	Thu, 13 Jul 2023 10:25:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29BE46132E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689243932;
	bh=OP8J71lT+zZ2yYbWRlzBMCM9N/KrwtLC+ycwQpd1oeE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p9YPgHVIfu6gkOZbbMuggtwzl42YbcIUJ2QnPeu9kY2oP7eK3eoQg9FBd8KkgeenE
	 VZhgZkxuv0Wus6rQbnFiN/9pTCXM4In63bOzR7KYuPvSurqjTIMErlBp6+7rziiSd0
	 pFAIhJllXZ92+/H9CzULHOINOjmV1d1dHmgm8RSKcZg/bnwKJqd+Vaa/ao/l2GRnVJ
	 y3uz9r1uDW1SQOdje/P8pHZAOGL6vJawu32EZXhtImC+UomvSlcylQtkUoxYsi55rv
	 X+KoAxN4cYGwobM4+8O2KT72tRAl9f7ZOVu3QCMuOTLeLIMhAB1GLeJkfZNh8NFN0r
	 7sMOLTO2nPeNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5iHjj5tPIsdA; Thu, 13 Jul 2023 10:25:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF3056130E;
	Thu, 13 Jul 2023 10:25:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF3056130E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 03D7D1BF392
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 10:25:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF7CF83C40
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 10:25:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF7CF83C40
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rXbRV12T-VHC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 10:25:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA16183BFC
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01on2103.outbound.protection.outlook.com [40.107.14.103])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA16183BFC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 10:25:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b+V+KoxVg8sNB5GefDjkrdJasF4Oz90jsSdTJphcTCyyYWSkSG/WVXaPEp/vM4Pj2KEz52QMp3ksF0Qz6ZgNSxRPE+v0z7vAMXZsBkpq28+N81cWck1jRztucnDQq71AJgdn/JL46xKZknSxqp0+Ac3G38hAhYeko6mLctt283wuWmTyB/QY/MzG0UU+KiqpxggQTk91oTP8cnL2lrbpg0Ujqzt8cOnBZ2PBmXJ3+ZXqAnX0sIHo9Cb9ni7S3oDXKX06UFFg6xYrOmOnCip7aou/jhqSj9bIOnnbsuWx6HFDB5JK86wfT03DG66+4HJQ3wK97kTOlkAWOEgf3I42kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HzxRcSt+9oQMP42uKyi7VJ3Wf/cTEBEc3msW7xSLOns=;
 b=Kyt9VhL2/eBe8itJ3TwkI/ESD/OraWFjD/r7gTivBeXHMAnbPaVSKW0iVVIAnGEVFUdS7NRjoqzVYsYKXKXKg/X/ZZMXMSaaZ0UjUog9Vg6Ut8EdZMVUbzU77XwYTnc/sFEHZNv4BAnL32wFmsEVR6hS9QCojvlaIOvg6l7+QTl7YYZ8Gn8F6mTJ2DylYXEp1b2d/8M3j/RdaBQH1+6gZ11DFrr36iLD3442YHXBsq+wmgOBREr19qyOoCZyjkSuMVFgvR6Rnr2K8EK3YxRobdyYv2dslaB4VgZWTA6RcdFQOPjcvds+ZOdnybWpxguulsFOO4S2Yz3x9P6THJ52cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=est.tech; dmarc=pass action=none header.from=est.tech;
 dkim=pass header.d=est.tech; arc=none
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:1e7::15)
 by AM8P189MB1458.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:24a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.24; Thu, 13 Jul
 2023 10:25:21 +0000
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6]) by DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6%4]) with mapi id 15.20.6588.017; Thu, 13 Jul 2023
 10:25:21 +0000
From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
To: Simon Horman <simon.horman@corigine.com>
Thread-Topic: [PATCH iwl-next v2 3/4] igb: add AF_XDP zero-copy Rx support
Thread-Index: AQHZs+24lTx4SAv3QUuv8AAqRChLwK+3cSuAgAAG+tA=
Date: Thu, 13 Jul 2023 10:25:21 +0000
Message-ID: <DBBP189MB1433B99F674420A06C65C7549537A@DBBP189MB1433.EURP189.PROD.OUTLOOK.COM>
References: <20230711114705.22428-1-sriram.yagnaraman@est.tech>
 <20230711114705.22428-4-sriram.yagnaraman@est.tech>
 <ZK/D9c0TYzH30wqf@corigine.com>
In-Reply-To: <ZK/D9c0TYzH30wqf@corigine.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DBBP189MB1433:EE_|AM8P189MB1458:EE_
x-ms-office365-filtering-correlation-id: ef6db898-00f8-4760-a04b-08db838b7643
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gmdYiYalfz5EFY83I98rE9AbZasgDyMi1zwZdumsjlI2R13zxZuuI1qcHnT+Hzh3IEtNBlFf0+ViUAT3uTTrKbx1+uvPZQSnXmK7LI6SNMxhVD1Ovd+7iPokCO7CmfDDgLGeMHnRT3mynVgFczdanNn4eZPfAXMpeJW6nxO+j8q5N8mm9l57AzZMGjAcTs+UgRG5yoym9PqU8ADtUA3UFkO6qvhMynONS/O3DmIrlodg0meQJyguFt6cB0dKOy3qRp4Hl3YyP/X8YWXpeOu2XMNDham9aKPDVw17PA0GP4Aoh73BVPBxUbTd6I8mL38b16eFvPukycfHwgJmBYhd4qX10eIYoPPh67h+sfKZCyTsVpAgrc72SarCnY2hBke3GTH/0NjUiXHsRPHhLZAm1lLcXf1XQU8+ghO9J7f9XvtCvI5YRRsX36AYlB+h+AJHv4H/n8Gvhv+wokmQ1NFl8q1g1xcptU2Y0nDjTlIsIA9fYS8tFEWeH0vpToIco+kaZjGsLJTo35yz2m83GU16zJZr9FIwnHaRNCSVvfQ7JZCiEPki73EiqKikIn3l7o8ocqmEoCi7L2z7AuEHyOVu9o5UEAN4oLEHX3zar8f5rlyr42LmGHljqR4BdeDjAU+A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBP189MB1433.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230028)(39840400004)(346002)(396003)(136003)(376002)(366004)(451199021)(8936002)(8676002)(316002)(54906003)(44832011)(52536014)(5660300002)(66946007)(76116006)(41300700001)(66556008)(66476007)(478600001)(2906002)(71200400001)(7696005)(26005)(9686003)(6506007)(53546011)(186003)(83380400001)(64756008)(7416002)(66446008)(4326008)(6916009)(38100700002)(55016003)(122000001)(86362001)(33656002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aUsxSVVUQm9qOFJnbW1UZ3A2QWk3Q01GSUlHQlp6R1RQWDhYajlLLzZ4T0pG?=
 =?utf-8?B?QS84ckRpd0dZeCt2WW5hWWR3K1hlRFBES1g4Y0FQVXJTcXo5dVloRW9SNFpT?=
 =?utf-8?B?cEtGT1B6cGJ3Zm1GMDFFV3E0S2RLSDV1Q1F3czQvcU1PRzh2RGlMejRwR0gr?=
 =?utf-8?B?YUd3R0pNUGJpYXB6blFYK3ZnRjNpWG5GSWphOThrZ0ZDS3NJZ3FuVHhWaDE1?=
 =?utf-8?B?L2hzZEVvQnZxdFBTc3lSamk4ZzlQem9QZlMzWk1qdmt3TEtKYTB0blhnT0sz?=
 =?utf-8?B?L25QOExkUGcrbGZZQ2xlOEtTRGRUMUUvSXppSkpqcXdnQUhMWWdya3habEZM?=
 =?utf-8?B?WndOK3ZqdmxOcjgwYVN1SDRLcEJWVkxDbnN0NlhZelEzMWtBTWVINGJ1YW8v?=
 =?utf-8?B?RndrUWxSb1V4OU80d2VDdGhqbFRYSGEwSTc2cDBBd013WEdsRlcvZzgzZy8v?=
 =?utf-8?B?YzQ0YW1uQ2VTU1FXZEpvTEoxSmtRS29BWTY3dmRlbXAyZFJZUGdJZ2YzWldH?=
 =?utf-8?B?aEJ4R3BNU1l4SHZIRG0xNEVua0F2RmpiWUtNcnVQNXJIYndEYjhlQWt1b0sz?=
 =?utf-8?B?cVFHblY1K1RvY1c1NkpnalRIclFKTTZlYTVTOG15b2htQ2dLcmpNWkMrbHN1?=
 =?utf-8?B?UDlUMmRxMFlwTkJpeXZqdStrYmU3TXRWSXVXSUd3Zjh2VFBqVm9EMGZOZkFt?=
 =?utf-8?B?RDQ1WnhXMkVZOVAyTDNlazk4UHBsTFFKellmVm9mSzUzWTd4MjVDcWlGN041?=
 =?utf-8?B?M1JmOUNVVDZLeHFsT0F3U2NFaG1TTENpQUE5bThkQUF1akhwajJSNHFqMjh3?=
 =?utf-8?B?OXUyQnE0U2FnVGc4VkdYVFFNYVNoNUFtem1QKzhDTW5jYTVlSzZXV3A0MXU3?=
 =?utf-8?B?KzRNQzNHb2x1aXl1eWZCM1JQZVY0K1ErdHNtb1FKY3VsVTV4R2plQjhYNy9J?=
 =?utf-8?B?Tmc5V0NhMmk1UCtjWldmcFdxSGRtSFpCenNPWSt5Q1h4N2J0SnptaWErSENy?=
 =?utf-8?B?Qm9GcmNhSWlPdm1EODZ0ZTZFeWNRUkNnZzFmWElRVklWMnF3dW91UU00WHVV?=
 =?utf-8?B?aEVLSDYvMFYzREgzUnZPNzBXZ1lzSXlwc3VYOWt5bWFFNlpPM2RjMXNic3hU?=
 =?utf-8?B?OUZEcTZabmg5OTBpU2h4OXVldTNKMS85dmFNQXJYMU5hRUptQU1vclpxcGVC?=
 =?utf-8?B?N2RBRXY5QzZ2MTYxbUpWeXBSMzgrTEZBa0MxMml3ajAzWlczTGdvQ1NnRkpB?=
 =?utf-8?B?UUtENUxadVYxOGJ1a0w1OXNlVzQ4bDZhVUpkTUNFbE5zcWtKa04rUGZxb2FR?=
 =?utf-8?B?dzlJNEg5dXloR3JNVi9sTzJwaWJyYmpGZGV3TjBEc2dpaExjRWlGS1ZZWGNU?=
 =?utf-8?B?bURwanZmaCtLWllUbEU4UXQwQ2QzdTZSeTNxcTRXWU82Rkp3bk1QZlQ5YzYx?=
 =?utf-8?B?UWQ2TVpaY3B3VElCZm8rOE5PVFZ6NTY0T2FyUi84MUo5S3p3d2ZRZlFvK2U4?=
 =?utf-8?B?WUZpajJEQnVlelUwekxJUTl5elZSMDV5eUJUdWx2cHZVUkc1UWVRNnBNck5W?=
 =?utf-8?B?NTdTcVFvSWdTcmE3RkR3R1RnQ2hwYUVaZ1JKbzVBVC80a1ZSSGZtSVBHb1l2?=
 =?utf-8?B?QkR5aVdoblRYRXIzM2NsTllSU0VwV0prTmc5OHlRY3NqbTZMWlFuYXcxb2F0?=
 =?utf-8?B?bVBhamZma3RuYi9RZDk5NS8zMytxYzluMFI1TElva0xxbmtCMzFuVHExUjlZ?=
 =?utf-8?B?V0NaR2dyN1dWdUlVYVB6dk44REZLbWdZdFFTbEJaNjk4VlNNcUNpaGp6RWtu?=
 =?utf-8?B?cjVac1BrNEdHd1d3aDZUbWhoQ3REUmE3cG1NZ2Z0a0hYaVp0WDZ4QVNOL3lO?=
 =?utf-8?B?RWlwMUIzSEd6QmlIVDYxU1d3STZWZHZ2SklwSFFZYThYTlVLU25iSWw0alhB?=
 =?utf-8?B?U1ByRmFWNWhKMFo4WU40bUdrRTZrWk9TOTZjT1VEL2RyNXFaMGI0UzRFZWJX?=
 =?utf-8?B?dXhLdXlBUHh0SHFtbFRZem52Yk90eEFmb2o1Y2trTDB5NXI4WXlYTW12cVpI?=
 =?utf-8?B?dkd5SEc2ZWphQXBOeEtBMVd5eGYxYUs0T2Rxcms0clRCU1RPdmdLNzhCYmxL?=
 =?utf-8?Q?NALW8hB/oBLftGrV5XK44DYBW?=
MIME-Version: 1.0
X-OriginatorOrg: est.tech
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ef6db898-00f8-4760-a04b-08db838b7643
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2023 10:25:21.0596 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d2585e63-66b9-44b6-a76e-4f4b217d97fd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e1BilU6uIieJj9aSfZiMsQxjtGXjhvKlY0m4IL5JVPuF2f6f+l5aHSEIDEeIC12X2Oo1DtIKVkNiD63hYxVImtw0U4vjNqBtiFs2LSh1NAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P189MB1458
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estab.onmicrosoft.com; 
 s=selector2-estab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HzxRcSt+9oQMP42uKyi7VJ3Wf/cTEBEc3msW7xSLOns=;
 b=I5HxWsPchjvITS2aHDlBmapZzp1W46HigPGBcmPm04nxaF79mZjasrYNSGnb71dOPZQ0Ma38k/Z5Af0ISL0/J2DUhU7lBnMX/62fYxJGAimU5pVM9nW6rWjrmhn7GXj3x5tRv6j9ejmVgIYp1BEyfdELapnZf40eJPiwzkwqbqw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=estab.onmicrosoft.com
 header.i=@estab.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-estab-onmicrosoft-com header.b=I5HxWsPc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=est.tech;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/4] igb: add AF_XDP
 zero-copy Rx support
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgU2ltb24sDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2ltb24g
SG9ybWFuIDxzaW1vbi5ob3JtYW5AY29yaWdpbmUuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgMTMg
SnVseSAyMDIzIDExOjI5DQo+IFRvOiBTcmlyYW0gWWFnbmFyYW1hbiA8c3JpcmFtLnlhZ25hcmFt
YW5AZXN0LnRlY2g+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgYnBm
QHZnZXIua2VybmVsLm9yZzsNCj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgSmVzc2UgQnJhbmRl
YnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+Ow0KPiBUb255IE5ndXllbiA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBEYXZpZCBTIC4gTWlsbGVyDQo+IDxkYXZlbUBkYXZlbWxv
ZnQubmV0PjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsgSmFrdWINCj4gS2lj
aW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT47
IEFsZXhlaQ0KPiBTdGFyb3ZvaXRvdiA8YXN0QGtlcm5lbC5vcmc+OyBEYW5pZWwgQm9ya21hbm4g
PGRhbmllbEBpb2dlYXJib3gubmV0PjsNCj4gSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8aGF3a0Br
ZXJuZWwub3JnPjsgSm9obiBGYXN0YWJlbmQNCj4gPGpvaG4uZmFzdGFiZW5kQGdtYWlsLmNvbT47
IEJqw7ZybiBUw7ZwZWwgPGJqb3JuQGtlcm5lbC5vcmc+OyBNYWdudXMNCj4gS2FybHNzb24gPG1h
Z251cy5rYXJsc3NvbkBpbnRlbC5jb20+OyBNYWNpZWogRmlqYWxrb3dza2kNCj4gPG1hY2llai5m
aWphbGtvd3NraUBpbnRlbC5jb20+OyBKb25hdGhhbiBMZW1vbg0KPiA8am9uYXRoYW4ubGVtb25A
Z21haWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIGl3bC1uZXh0IHYyIDMvNF0gaWdiOiBh
ZGQgQUZfWERQIHplcm8tY29weSBSeCBzdXBwb3J0DQo+IA0KPiBPbiBUdWUsIEp1bCAxMSwgMjAy
MyBhdCAwMTo0NzowNFBNICswMjAwLCBTcmlyYW0gWWFnbmFyYW1hbiB3cm90ZToNCj4gPiBBZGQg
c3VwcG9ydCBmb3IgQUZfWERQIHplcm8tY29weSByZWNlaXZlIHBhdGguDQo+ID4NCj4gPiBXaGVu
IEFGX1hEUCB6ZXJvLWNvcHkgaXMgZW5hYmxlZCwgdGhlIHJ4IGJ1ZmZlcnMgYXJlIGFsbG9jYXRl
ZCBmcm9tDQo+ID4gdGhlIHhzayBidWZmIHBvb2wgdXNpbmcgaWdiX2FsbG9jX3J4X2J1ZmZlcnNf
emMuDQo+ID4NCj4gPiBVc2UgeHNrX3Bvb2xfZ2V0X3J4X2ZyYW1lX3NpemUgdG8gc2V0IFNSUkNU
TCByeCBidWYgc2l6ZSB3aGVuDQo+ID4gemVyby1jb3B5IGlzIGVuYWJsZWQuDQo+ID4NCj4gPiBT
aWduZWQtb2ZmLWJ5OiBTcmlyYW0gWWFnbmFyYW1hbiA8c3JpcmFtLnlhZ25hcmFtYW5AZXN0LnRl
Y2g+DQo+IA0KPiBIaSBTcmlyYW0sDQo+IA0KPiA+ICtib29sIGlnYl9hbGxvY19yeF9idWZmZXJz
X3pjKHN0cnVjdCBpZ2JfcmluZyAqcnhfcmluZywgdTE2IGNvdW50KSB7DQo+ID4gKwl1bmlvbiBl
MTAwMF9hZHZfcnhfZGVzYyAqcnhfZGVzYzsNCj4gPiArCXUzMiBuYl9idWZmc19leHRyYSA9IDAs
IG5iX2J1ZmZzOw0KPiA+ICsJdTE2IG50dSA9IHJ4X3JpbmctPm5leHRfdG9fdXNlOw0KPiA+ICsJ
dTE2IHRvdGFsX2NvdW50ID0gY291bnQ7DQo+ID4gKwlzdHJ1Y3QgeGRwX2J1ZmYgKip4ZHA7DQo+
ID4gKw0KPiA+ICsJcnhfZGVzYyA9IElHQl9SWF9ERVNDKHJ4X3JpbmcsIG50dSk7DQo+ID4gKwl4
ZHAgPSAmcnhfcmluZy0+cnhfYnVmZmVyX2luZm9femNbbnR1XTsNCj4gPiArDQo+ID4gKwlpZiAo
bnR1ICsgY291bnQgPj0gcnhfcmluZy0+Y291bnQpIHsNCj4gPiArCQluYl9idWZmc19leHRyYSA9
IGlnYl9maWxsX3J4X2Rlc2NzKHJ4X3JpbmctPnhza19wb29sLCB4ZHAsDQo+ID4gKwkJCQkJCSAg
IHJ4X2Rlc2MsDQo+ID4gKwkJCQkJCSAgIHJ4X3JpbmctPmNvdW50IC0gbnR1KTsNCj4gPiArCQlp
ZiAobmJfYnVmZnNfZXh0cmEgIT0gcnhfcmluZy0+Y291bnQgLSBudHUpIHsNCj4gPiArCQkJbnR1
ICs9IG5iX2J1ZmZzX2V4dHJhOw0KPiA+ICsJCQlnb3RvIGV4aXQ7DQo+IA0KPiBuYl9idWZmcyBp
cyB1bmluaXRpYWxpc2VkIGhlcmUuLi4NCg0KVGhhbmsgeW91LCB3aWxsIGZpeCBpdCBpbiB2Mw0K
DQo+IA0KPiA+ICsJCX0NCj4gPiArCQlyeF9kZXNjID0gSUdCX1JYX0RFU0MocnhfcmluZywgMCk7
DQo+ID4gKwkJeGRwID0gcnhfcmluZy0+cnhfYnVmZmVyX2luZm9femM7DQo+ID4gKwkJbnR1ID0g
MDsNCj4gPiArCQljb3VudCAtPSBuYl9idWZmc19leHRyYTsNCj4gPiArCX0NCj4gPiArDQo+ID4g
KwluYl9idWZmcyA9IGlnYl9maWxsX3J4X2Rlc2NzKHJ4X3JpbmctPnhza19wb29sLCB4ZHAsIHJ4
X2Rlc2MsIGNvdW50KTsNCj4gPiArCW50dSArPSBuYl9idWZmczsNCj4gPiArCWlmIChudHUgPT0g
cnhfcmluZy0+Y291bnQpDQo+ID4gKwkJbnR1ID0gMDsNCj4gPiArDQo+ID4gKwkvKiBjbGVhciB0
aGUgbGVuZ3RoIGZvciB0aGUgbmV4dF90b191c2UgZGVzY3JpcHRvciAqLw0KPiA+ICsJcnhfZGVz
YyA9IElHQl9SWF9ERVNDKHJ4X3JpbmcsIG50dSk7DQo+ID4gKwlyeF9kZXNjLT53Yi51cHBlci5s
ZW5ndGggPSAwOw0KPiA+ICsNCj4gPiArZXhpdDoNCj4gPiArCWlmIChyeF9yaW5nLT5uZXh0X3Rv
X3VzZSAhPSBudHUpIHsNCj4gPiArCQlyeF9yaW5nLT5uZXh0X3RvX3VzZSA9IG50dTsNCj4gPiAr
DQo+ID4gKwkJLyogRm9yY2UgbWVtb3J5IHdyaXRlcyB0byBjb21wbGV0ZSBiZWZvcmUgbGV0dGlu
ZyBoL3cNCj4gPiArCQkgKiBrbm93IHRoZXJlIGFyZSBuZXcgZGVzY3JpcHRvcnMgdG8gZmV0Y2gu
ICAoT25seQ0KPiA+ICsJCSAqIGFwcGxpY2FibGUgZm9yIHdlYWstb3JkZXJlZCBtZW1vcnkgbW9k
ZWwgYXJjaHMsDQo+ID4gKwkJICogc3VjaCBhcyBJQS02NCkuDQo+ID4gKwkJICovDQo+ID4gKwkJ
d21iKCk7DQo+ID4gKwkJd3JpdGVsKG50dSwgcnhfcmluZy0+dGFpbCk7DQo+ID4gKwl9DQo+ID4g
Kw0KPiA+ICsJcmV0dXJuIHRvdGFsX2NvdW50ID09IChuYl9idWZmcyArIG5iX2J1ZmZzX2V4dHJh
KTsNCj4gDQo+IEJ1dCBpdCBpcyB1c2VkIGhlcmUuDQo+IA0KPiAuLi4NCj4gDQo+IFRoZSBmb2xs
b3dpbmcgd2lsbCB0ZWxsIHlvdSBhYm91dCB0aGlzIHByb2JsZW06DQo+IC0gU21hdGNoDQo+IC0g
Y2xhbmctMTYgVz0xIGJ1aWxkIFstV3NvbWV0aW1lcy11bmluaXRpYWxpemVkXQ0KPiAtIGdjYy0x
MiBidWlsZCB3aXRoIC1XbWF5YmUtdW5pbml0aWFsaXplZA0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
