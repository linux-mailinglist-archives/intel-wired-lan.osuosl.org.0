Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9724750CAD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 17:37:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48BDB60EEF;
	Wed, 12 Jul 2023 15:37:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 48BDB60EEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689176263;
	bh=nkwP2BxIBAdWFYsiFt2XUu/Hcm2bkSqaChj8YIBkl84=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GzfOZuObd9N6sNNwITK4TEO3yl5kUiq77jF8NDDdPRxcAkNEh4k4mzCMiw54eS7yH
	 HNtmSvhiShi8FIaojqSrLivkaZJXNE9WECVzT+lg52BFY1GcmmzOgu5OhIYfKQcd38
	 Z7YGH1OC/80l2ed5RhUTeOvfFItgvsuIaBGWw7+d0qgj++Yict5mRnKos1NJb0OynJ
	 ZmEBRpOGm4vj4IoVg0pokfDQ8nTmcHhf0dq2HrtcZ49Ooib2Jen9Mk/tvLII4Nwpo9
	 5lDlJNMIO5nJNMzPO0C6IITyu1aozV1XkABkWDS/q2gOw5ZZCOaaVfiW6jqCS8DQMV
	 RMGLbk0ntiqfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X66Kx_DJxhMN; Wed, 12 Jul 2023 15:37:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0AEB860BF3;
	Wed, 12 Jul 2023 15:37:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0AEB860BF3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B6BD1BF310
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 15:37:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D42A1409CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 15:37:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D42A1409CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O0ASeY3TliaW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 15:37:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A5A9408FB
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04on2133.outbound.protection.outlook.com [40.107.7.133])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A5A9408FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 15:37:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=epSCpxsU0SuTAz+8JWOyzuql8NwGpz3Sx8+aloKk+3dVjQEBg8fZwAK/RrkKMiIa9LWAU5ZhlxEnepQ5rZRF+vkmFrlLcONelklwyFK1VE9mgpddsKXTr1iRAa1VjIB9j1xVds5uoq3lvmiVFSMVL0v9UtApuiNfPkeuEjn23+jVGXuweblhlV/dNthaMQRwJJnowYPNo6ZVEJD2x6ClerXaSW3sWqkxuod1V5LRJNCOmgXpGn82g6Sb4Os2aI7Mr5A8yNw2B8CJjOadQCtdL45bijN1Cj5GcfaoA3B7dJjJLe1dLbYn2t80VO+R1pbrgdjSWsjRzE2id3Ni2BuTVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=niORWA6qZ2yGTq6zfNE5PhDXQxgTB5xT562rzWvhPoI=;
 b=DMLXQlasiQrhhgqVUheOmjdca6DLHT9nnPdLBUnBqGG9m8vR7fpFO2GYRdzeBAUONXyNacNgAWr0UmwPdkZFSHOx/E/pjuIDjrsatb/eqc7mjX5I3Yct9r2dhAOL+iVQkkt8GHwfHPkuzrNwlG7gg2Z1DIon3lvYpyz8uJBfBHcb+XkgtGZQGxJQjUsRcM8YfVSn7nrWYI6BBcJ/ugB05aYHRn3Xs1hLeDnmxkbLYYXxG5SqeB8GLyoF1nInbXEQq22Mo65e2SCz+XbHFSdtdEtxgcQ8XoLPA2Or4p7oqCRZZY30BupTTqtmAQ5cXxI/AfPRgJhGqXTFIwOm55yMrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=est.tech; dmarc=pass action=none header.from=est.tech;
 dkim=pass header.d=est.tech; arc=none
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:1e7::15)
 by AM9P189MB1587.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:30a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20; Wed, 12 Jul
 2023 15:37:28 +0000
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6]) by DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6%4]) with mapi id 15.20.6588.017; Wed, 12 Jul 2023
 15:37:28 +0000
From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
To: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
Thread-Topic: [PATCH iwl-next v2 4/4] igb: add AF_XDP zero-copy Tx support
Thread-Index: AQHZs+24AnHas0+OAkyME5c/iee4Y6+2Q3q0
Date: Wed, 12 Jul 2023 15:37:28 +0000
Message-ID: <DBBP189MB1433B9674A25BA563A4FFB5F9536A@DBBP189MB1433.EURP189.PROD.OUTLOOK.COM>
References: <20230711114705.22428-1-sriram.yagnaraman@est.tech>
 <20230711114705.22428-5-sriram.yagnaraman@est.tech>
In-Reply-To: <20230711114705.22428-5-sriram.yagnaraman@est.tech>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DBBP189MB1433:EE_|AM9P189MB1587:EE_
x-ms-office365-filtering-correlation-id: cefc0b1e-19d8-4b8d-442a-08db82ede645
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Iv9XscAoGUchoDdKJrzsv4m7fA+flai04Y/WnvNBv2TQ6iC0+a72fd5MO7iYixv6R+n8UF5lJH1HdzVbYkfoUVFASfxTwW12QDNcb1wRDBwVsDyuyvZnk2fdsliuqkQ+PkUCWDBKK1TNiIVPz+SJx9QDjl357n7nZmv7hZur4O7IWN5UeP2QfmrOkPXGy95KG2WHQunmWbOJMYSSOw/hb+zfeu/6NTcVKyAaswNnrZmO4m/xPBQfB8KOqHp08h6+IEzZXiYL602uDcye6dhTawhd7fQekr3tWmLsy+Xptca/YMqMsiz120UOdt9zxRhr3+a8TYLTI3QfoglrOKbeQnsv2vrpU6rkt0apgFzoos+m4yIwRXNdXhuhgvlaKPH5agZzEZZrNy24I5l//vzCq1SWWJv+tK2W+qnFVCQ7pptKvdBUZdPkKYCnLmbBF2mSGQz5vJyuCE4otl8Fu5oms/stYKTjU+9lQZEGsuW+pDwMrnnatjfyOqJzoagvz0UJBfpIIJrkHqEWUSgRYCi2kE98KCxffqE9eEzJlrPwEe5T1AkmDxyov7r6rZhsveVrg4jQKC39+PhhK5dSNcJ5ydY5bM6IGzpc/VepfRemhTiftVcr6NhJniOirMhKqgtAsmoifKGbOimYhRCKQlCRjQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBP189MB1433.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39840400004)(376002)(346002)(396003)(366004)(451199021)(316002)(54906003)(71200400001)(186003)(66946007)(478600001)(41300700001)(76116006)(66476007)(64756008)(66556008)(66446008)(91956017)(7696005)(4326008)(8936002)(8676002)(6862004)(5660300002)(7416002)(86362001)(9686003)(55016003)(52536014)(44832011)(26005)(6506007)(83380400001)(33656002)(6200100001)(122000001)(38070700005)(2906002)(66574015)(38100700002)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?qUkQGnNVx//UXZzGeIuS0gBLH84zgm+0e17RXr58MRbj1U4nyfaECuNn1M?=
 =?iso-8859-1?Q?vgSc7xxtseNE7enLv5y+6fVoiWrYD55+Bs+0iUXSzOzHDqXHB4Te9SzGYq?=
 =?iso-8859-1?Q?RRRwNVBzSTLMjDlvyCINhEkEgmFIGN0UEVy+nSjBIPTgHz0AEQbrgi28Am?=
 =?iso-8859-1?Q?7HCtfjGFjN10TZ3XbXOawpoulddxlkqmZh0Iy9r+XqMuMu5XibfbZ0qYjA?=
 =?iso-8859-1?Q?kyQ2yHiyATQbYgnO8kLMsAhX7ebwUrljpivSwe0Z+VPW2lntb7bFiDy839?=
 =?iso-8859-1?Q?vCvaG2jbBN1ffZElw9lrRdDy6P3L/vA+vFT1cA9S1KlZL9WR1sQXixWNn8?=
 =?iso-8859-1?Q?6Xs80mb69VjFICMftU+82qIudjdQrkH87tXsN0IanEg7mTS7Jxzsjvh0dT?=
 =?iso-8859-1?Q?X6qVvi6/rxSfuZqUMAd7tOFeNMb4LBlj+Y6fXljBuqNoKf1D4D5cYi20gl?=
 =?iso-8859-1?Q?ry3efYKTNCzCqfF++36suCX1T63vkepzKYejjQXqxd6bzfgD//sm7v2ap/?=
 =?iso-8859-1?Q?gXZR9c82GIIr8rlh+Dz/a8XK2PCfDtBzqdcdQKo3NtWOWHpCaZlCwpHw+U?=
 =?iso-8859-1?Q?p0sgAZvBq4kjQLOH3gzWUP/iNU7kXOHkZFyzD+0jn/GrNSXH40X88UxNT6?=
 =?iso-8859-1?Q?sTjyQuWWiww9Taaj0Z13x/08mXsoF9OzG80W7QNxHIhVpP3HZmt/C11txz?=
 =?iso-8859-1?Q?tZtQGaTMIb72MQrFR1VqVToAFYmnjsUTHLzqqe450pvOlg9vuWT+Q8NQmS?=
 =?iso-8859-1?Q?/wF2aLEos3ruBL5kSywJomtHcaWC4NNnRwk3TkL2f/mUMXeFDFHoTuUxCi?=
 =?iso-8859-1?Q?K8GJXb02GxuOxycozTFJWUd83TEM2OfLkK6Slt0N9ph/Y8NXcqaTnt5Dej?=
 =?iso-8859-1?Q?JAYTgmcOlhAEeVIa6RxRvx/ukJm0XnHfw0AAkfZf4k75QTUdia+B+KKHf5?=
 =?iso-8859-1?Q?TkW+MO3dMYBuTRPr7MqB6JjiGAmlFvVI1z8NQFLoI5Jn39caE4GQcwh17/?=
 =?iso-8859-1?Q?rX+9h0YnC+iA2omhSIcekQTRXgOh7LrHjK8SKwcWJSe1gZUzlDa/9QXQi9?=
 =?iso-8859-1?Q?diZNvSg+9fNCzvjb/FKsEkK1hbPPORHGLyAUx4FFH8LeeGAc6GptKtXsJX?=
 =?iso-8859-1?Q?fKoy22UpgBiNKTEkcwHG/uMvk2+f/16ZH12oAnbixH/TCft6PTRxK8rf92?=
 =?iso-8859-1?Q?hAVIdEW1OAOL2QKTlgVEtBgEhSF9HJBlIQGOtgTT8tcOUBAh2kisvdO/Qt?=
 =?iso-8859-1?Q?rO7SMKYAd9l+QblrLy7IbVBsCqOkHKtbQKAJcP9MNS4JzYKyM9sXjpv5fU?=
 =?iso-8859-1?Q?HUAtyrW3zJZNpmsHcujdCzUMwOLqOqQXGwh2caA/Od3Gbi/gtajlM5Pgbl?=
 =?iso-8859-1?Q?kE5T+DrHVzIeewIQL4zWob0Wo/J+0we44k0CedGyQ5ihsEDXsvjOD03ixc?=
 =?iso-8859-1?Q?rvUrmppnCT3dkNPISu3sMHt9f6U1lLNUIBcGm94iZiJFZh/ij3QGdmEbGX?=
 =?iso-8859-1?Q?Tde0MnbVPeaT4TXETiQPZ+QRBuozR0cCwXaLvNmCeyYPCdDHIXdnQ5CjC+?=
 =?iso-8859-1?Q?y0OD7lL6u0IUtnmqJNTyVafNYMoOti7hxG/OruP0OJAKMj7tcRTkWHQEId?=
 =?iso-8859-1?Q?yuXxkWAlKUnCXUcnzXScFyfNFhzdwUEQCZ79iGb5ueXjeDv3tjNty5gQ?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: est.tech
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: cefc0b1e-19d8-4b8d-442a-08db82ede645
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2023 15:37:28.5015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d2585e63-66b9-44b6-a76e-4f4b217d97fd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vudZt1GLQfdcm9OlRjX57VuTUjc5eZeN/961J/xFQB4UjeQF8cxDm7B4vnreAbKUT5O08mslE+iMdTryu4IpqPyhpljTjC8X441o/9wgoIg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P189MB1587
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estab.onmicrosoft.com; 
 s=selector2-estab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=niORWA6qZ2yGTq6zfNE5PhDXQxgTB5xT562rzWvhPoI=;
 b=Ljnpd4VeM3W+PkCStMiRdm7jbLiF+DxvvCpDpQ2nnoXFR3HQ7mAgbmhWorefSf/IZ3TzeA2Pb9A5CATZnycpsI7BftlVS9VTPhkBUbE/nGvY8tVLb9BnNe7N+4yO05D9qQsaFDwn/s5sgkxcTQ1agKZo5+tAc3eoGp+KgVA/8sk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=estab.onmicrosoft.com
 header.i=@estab.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-estab-onmicrosoft-com header.b=Ljnpd4Ve
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=est.tech;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/4] igb: add AF_XDP
 zero-copy Tx support
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
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: multipart/mixed; boundary="===============4140624985650669570=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4140624985650669570==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DBBP189MB1433B9674A25BA563A4FFB5F9536ADBBP189MB1433EURP_"

--_000_DBBP189MB1433B9674A25BA563A4FFB5F9536ADBBP189MB1433EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
Sent: Tuesday, July 11, 2023 1:49:18 pm
Cc: intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists.osuosl.org>; bp=
f@vger.kernel.org <bpf@vger.kernel.org>; netdev@vger.kernel.org <netdev@vge=
r.kernel.org>; Jesse Brandeburg <jesse.brandeburg@intel.com>; Tony Nguyen <=
anthony.l.nguyen@intel.com>; David S . Miller <davem@davemloft.net>; Eric D=
umazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni=
 <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>; Daniel Borkmann =
<daniel@iogearbox.net>; Jesper Dangaard Brouer <hawk@kernel.org>; John Fast=
abend <john.fastabend@gmail.com>; Bj=F6rn T=F6pel <bjorn@kernel.org>; Magnu=
s Karlsson <magnus.karlsson@intel.com>; Maciej Fijalkowski <maciej.fijalkow=
ski@intel.com>; Jonathan Lemon <jonathan.lemon@gmail.com>; Sriram Yagnarama=
n <sriram.yagnaraman@est.tech>
Subject: [PATCH iwl-next v2 4/4] igb: add AF_XDP zero-copy Tx support

Add support for AF_XDP zero-copy transmit path.

A new TX buffer type IGB_TYPE_XSK is introduced to indicate that the Tx
frame was allocated from the xsk buff pool, so igb_clean_tx_ring and
igb_clean_tx_irq can clean the buffers correctly based on type.

igb_xmit_zc performs the actual packet transmit when AF_XDP zero-copy is
enabled. We share the TX ring between slow path, XDP and AF_XDP
zero-copy, so we use the netdev queue lock to ensure mutual exclusion.

Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
---
 drivers/net/ethernet/intel/igb/igb.h      |  2 +
 drivers/net/ethernet/intel/igb/igb_main.c | 56 +++++++++++++++++++----
 drivers/net/ethernet/intel/igb/igb_xsk.c  | 51 +++++++++++++++++++++
 3 files changed, 100 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/in=
tel/igb/igb.h
index 39202c40116a..f52a988fe2f0 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -257,6 +257,7 @@ enum igb_tx_flags {
 enum igb_tx_buf_type {
         IGB_TYPE_SKB =3D 0,
         IGB_TYPE_XDP,
+       IGB_TYPE_XSK
 };

 /* wrapper around a pointer to a socket buffer,
@@ -836,6 +837,7 @@ int igb_xsk_pool_setup(struct igb_adapter *adapter,
 bool igb_alloc_rx_buffers_zc(struct igb_ring *rx_ring, u16 count);
 void igb_clean_rx_ring_zc(struct igb_ring *rx_ring);
 int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector, const int budget);
+bool igb_xmit_zc(struct igb_ring *tx_ring);
 int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags);

 #endif /* _IGB_H_ */
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethern=
et/intel/igb/igb_main.c
index 8eed3d0ab4fc..db99256ff1af 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3018,6 +3018,9 @@ static int igb_xdp_xmit(struct net_device *dev, int n=
,
         if (unlikely(!tx_ring))
                 return -ENXIO;

+       if (unlikely(test_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags)))
+               return -ENXIO;
+
         nq =3D txring_txq(tx_ring);
         __netif_tx_lock(nq, cpu);

@@ -4931,15 +4934,20 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
 {
         u16 i =3D tx_ring->next_to_clean;
         struct igb_tx_buffer *tx_buffer =3D &tx_ring->tx_buffer_info[i];
+       u32 xsk_frames =3D 0;

         while (i !=3D tx_ring->next_to_use) {
                 union e1000_adv_tx_desc *eop_desc, *tx_desc;

                 /* Free all the Tx ring sk_buffs or xdp frames */
-               if (tx_buffer->type =3D=3D IGB_TYPE_SKB)
+               if (tx_buffer->type =3D=3D IGB_TYPE_SKB) {
                         dev_kfree_skb_any(tx_buffer->skb);
-               else
+               } else if (tx_buffer->type =3D=3D IGB_TYPE_XDP) {
                         xdp_return_frame(tx_buffer->xdpf);
+               } else if (tx_buffer->type =3D=3D IGB_TYPE_XSK) {
+                       xsk_frames++;
+                       goto skip_for_xsk;
+               }

                 /* unmap skb header data */
                 dma_unmap_single(tx_ring->dev,
@@ -4970,6 +4978,7 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
                                                DMA_TO_DEVICE);
                 }

+skip_for_xsk:
                 tx_buffer->next_to_watch =3D NULL;

                 /* move us one more past the eop_desc for start of next pk=
t */
@@ -4984,6 +4993,9 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
         /* reset BQL for queue */
         netdev_tx_reset_queue(txring_txq(tx_ring));

+       if (tx_ring->xsk_pool && xsk_frames)
+               xsk_tx_completed(tx_ring->xsk_pool, xsk_frames);
+
         /* reset next_to_use and next_to_clean */
         tx_ring->next_to_use =3D 0;
         tx_ring->next_to_clean =3D 0;
@@ -6517,6 +6529,9 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
                 return NETDEV_TX_BUSY;
         }

+       if (unlikely(test_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags)))
+               return NETDEV_TX_BUSY;
+
         /* record the location of the first descriptor for this packet */
         first =3D &tx_ring->tx_buffer_info[tx_ring->next_to_use];
         first->type =3D IGB_TYPE_SKB;
@@ -8290,13 +8305,17 @@ static int igb_poll(struct napi_struct *napi, int b=
udget)
  **/
 static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budge=
t)
 {
-       struct igb_adapter *adapter =3D q_vector->adapter;
-       struct igb_ring *tx_ring =3D q_vector->tx.ring;
-       struct igb_tx_buffer *tx_buffer;
-       union e1000_adv_tx_desc *tx_desc;
         unsigned int total_bytes =3D 0, total_packets =3D 0;
+       struct igb_adapter *adapter =3D q_vector->adapter;
         unsigned int budget =3D q_vector->tx.work_limit;
+       struct igb_ring *tx_ring =3D q_vector->tx.ring;
         unsigned int i =3D tx_ring->next_to_clean;
+       union e1000_adv_tx_desc *tx_desc;
+       struct igb_tx_buffer *tx_buffer;
+       int cpu =3D smp_processor_id();
+       bool xsk_xmit_done =3D true;
+       struct netdev_queue *nq;
+       u32 xsk_frames =3D 0;

         if (test_bit(__IGB_DOWN, &adapter->state))
                 return true;
@@ -8327,10 +8346,14 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q=
_vector, int napi_budget)
                 total_packets +=3D tx_buffer->gso_segs;

                 /* free the skb */
-               if (tx_buffer->type =3D=3D IGB_TYPE_SKB)
+               if (tx_buffer->type =3D=3D IGB_TYPE_SKB) {
                         napi_consume_skb(tx_buffer->skb, napi_budget);
-               else
+               } else if (tx_buffer->type =3D=3D IGB_TYPE_XDP) {
                         xdp_return_frame(tx_buffer->xdpf);
+               } else if (tx_buffer->type =3D=3D IGB_TYPE_XSK) {
+                       xsk_frames++;
+                       goto skip_for_xsk;
+               }

                 /* unmap skb header data */
                 dma_unmap_single(tx_ring->dev,
@@ -8362,6 +8385,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_v=
ector, int napi_budget)
                         }
                 }

+skip_for_xsk:
                 /* move us one more past the eop_desc for start of next pk=
t */
                 tx_buffer++;
                 tx_desc++;
@@ -8390,6 +8414,20 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_=
vector, int napi_budget)
         q_vector->tx.total_bytes +=3D total_bytes;
         q_vector->tx.total_packets +=3D total_packets;

+       if (tx_ring->xsk_pool) {
+               if (xsk_frames)
+                       xsk_tx_completed(tx_ring->xsk_pool, xsk_frames);
+               if (xsk_uses_need_wakeup(tx_ring->xsk_pool))
+                       xsk_set_tx_need_wakeup(tx_ring->xsk_pool);
+
+               nq =3D txring_txq(tx_ring);
+               __netif_tx_lock(nq, cpu);
+               /* Avoid transmit queue timeout since we share it with the =
slow path */
+               txq_trans_cond_update(nq);
+               xsk_xmit_done =3D igb_xmit_zc(tx_ring);
+               __netif_tx_unlock(nq);
+       }
+
         if (test_bit(IGB_RING_FLAG_TX_DETECT_HANG, &tx_ring->flags)) {
                 struct e1000_hw *hw =3D &adapter->hw;

@@ -8452,7 +8490,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_v=
ector, int napi_budget)
                 }
         }

-       return !!budget;
+       return !!budget && xsk_xmit_done;
 }

 /**
diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/etherne=
t/intel/igb/igb_xsk.c
index f5133e6d5b9c..221507d5fb01 100644
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
@@ -432,6 +432,57 @@ int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector,=
 const int budget)
         return failure ? budget : (int)total_packets;
 }

+bool igb_xmit_zc(struct igb_ring *tx_ring)
+{
+       unsigned int budget =3D igb_desc_unused(tx_ring);
+       struct xsk_buff_pool *pool =3D tx_ring->xsk_pool;
+       struct xdp_desc *descs =3D pool->tx_descs;
+       union e1000_adv_tx_desc *tx_desc =3D NULL;
+       struct igb_tx_buffer *tx_buffer_info;
+       u32 cmd_type, nb_pkts, i =3D 0;
+       unsigned int total_bytes =3D 0;
+       dma_addr_t dma;
+
+       nb_pkts =3D xsk_tx_peek_release_desc_batch(pool, budget);
+       if (!nb_pkts)
+               return true;
+
+       while (nb_pkts-- > 0) {
+               dma =3D xsk_buff_raw_get_dma(pool, descs[i].addr);
+               xsk_buff_raw_dma_sync_for_device(pool, dma, descs[i].len);
+
+               tx_buffer_info =3D &tx_ring->tx_buffer_info[tx_ring->next_t=
o_use];
+               tx_buffer_info->bytecount =3D descs[i].len;
+               tx_buffer_info->type =3D IGB_TYPE_XSK;
+               tx_buffer_info->xdpf =3D NULL;
+               tx_buffer_info->gso_segs =3D 1;

I missed to set time_stamp here. Will fix it in the next version if this go=
es further.

+
+               tx_desc =3D IGB_TX_DESC(tx_ring, tx_ring->next_to_use);
+               tx_desc->read.buffer_addr =3D cpu_to_le64(dma);
+
+               /* put descriptor type bits */
+               cmd_type =3D E1000_ADVTXD_DTYP_DATA | E1000_ADVTXD_DCMD_DEX=
T |
+                          E1000_ADVTXD_DCMD_IFCS;
+
+               cmd_type |=3D descs[i].len | IGB_TXD_DCMD;
+               tx_desc->read.cmd_type_len =3D cpu_to_le32(cmd_type);
+               tx_desc->read.olinfo_status =3D 0;
+
+               total_bytes +=3D descs[i].len;
+
+               i++;
+               tx_ring->next_to_use++;
+               tx_buffer_info->next_to_watch =3D tx_desc;
+               if (tx_ring->next_to_use =3D=3D tx_ring->count)
+                       tx_ring->next_to_use =3D 0;
+       }
+
+       netdev_tx_sent_queue(txring_txq(tx_ring), total_bytes);
+       igb_xdp_ring_update_tail(tx_ring);
+
+       return nb_pkts < budget;
+}
+
 int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
 {
         struct igb_adapter *adapter =3D netdev_priv(dev);
--
2.34.1



--_000_DBBP189MB1433B9674A25BA563A4FFB5F9536ADBBP189MB1433EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div style=3D"" dir=3D"auto"><strong style=3D"font-size: 11pt;">From:</stro=
ng><span style=3D"font-size: 11pt;"> Sriram Yagnaraman &lt;sriram.yagnarama=
n@est.tech&gt;</span><br>
</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"auto">
<div id=3D"mail-editor-reference-message-container" dir=3D"auto">
<div id=3D"divRplyFwdMsg" style=3D"font-size: 11pt;" dir=3D"auto"><strong>S=
ent:</strong> Tuesday, July 11, 2023 1:49:18 pm<br>
<strong>Cc:</strong> intel-wired-lan@lists.osuosl.org &lt;intel-wired-lan@l=
ists.osuosl.org&gt;; bpf@vger.kernel.org &lt;bpf@vger.kernel.org&gt;; netde=
v@vger.kernel.org &lt;netdev@vger.kernel.org&gt;; Jesse Brandeburg &lt;jess=
e.brandeburg@intel.com&gt;; Tony Nguyen &lt;anthony.l.nguyen@intel.com&gt;;
 David S . Miller &lt;davem@davemloft.net&gt;; Eric Dumazet &lt;edumazet@go=
ogle.com&gt;; Jakub Kicinski &lt;kuba@kernel.org&gt;; Paolo Abeni &lt;paben=
i@redhat.com&gt;; Alexei Starovoitov &lt;ast@kernel.org&gt;; Daniel Borkman=
n &lt;daniel@iogearbox.net&gt;; Jesper Dangaard Brouer &lt;hawk@kernel.org&=
gt;;
 John Fastabend &lt;john.fastabend@gmail.com&gt;; Bj=F6rn T=F6pel &lt;bjorn=
@kernel.org&gt;; Magnus Karlsson &lt;magnus.karlsson@intel.com&gt;; Maciej =
Fijalkowski &lt;maciej.fijalkowski@intel.com&gt;; Jonathan Lemon &lt;jonath=
an.lemon@gmail.com&gt;; Sriram Yagnaraman &lt;sriram.yagnaraman@est.tech&gt=
;<br>
<strong>Subject:</strong> [PATCH iwl-next v2 4/4] igb: add AF_XDP zero-copy=
 Tx support<br>
</div>
<br>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText" dir=3D"auto">Add support for AF_XDP zero-copy tran=
smit path.<br>
<br>
A new TX buffer type IGB_TYPE_XSK is introduced to indicate that the Tx<br>
frame was allocated from the xsk buff pool, so igb_clean_tx_ring and<br>
igb_clean_tx_irq can clean the buffers correctly based on type.<br>
<br>
igb_xmit_zc performs the actual packet transmit when AF_XDP zero-copy is<br=
>
enabled. We share the TX ring between slow path, XDP and AF_XDP<br>
zero-copy, so we use the netdev queue lock to ensure mutual exclusion.<br>
<br>
Signed-off-by: Sriram Yagnaraman &lt;sriram.yagnaraman@est.tech&gt;<br>
---<br>
&nbsp;drivers/net/ethernet/intel/igb/igb.h&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&=
nbsp; 2 +<br>
&nbsp;drivers/net/ethernet/intel/igb/igb_main.c | 56 +++++++++++++++++++---=
-<br>
&nbsp;drivers/net/ethernet/intel/igb/igb_xsk.c&nbsp; | 51 +++++++++++++++++=
++++<br>
&nbsp;3 files changed, 100 insertions(+), 9 deletions(-)<br>
<br>
diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/in=
tel/igb/igb.h<br>
index 39202c40116a..f52a988fe2f0 100644<br>
--- a/drivers/net/ethernet/intel/igb/igb.h<br>
+++ b/drivers/net/ethernet/intel/igb/igb.h<br>
@@ -257,6 +257,7 @@ enum igb_tx_flags {<br>
&nbsp;enum igb_tx_buf_type {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IGB_TYPE_SKB =3D 0,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IGB_TYPE_XDP,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IGB_TYPE_XSK<br>
&nbsp;};<br>
&nbsp;<br>
&nbsp;/* wrapper around a pointer to a socket buffer,<br>
@@ -836,6 +837,7 @@ int igb_xsk_pool_setup(struct igb_adapter *adapter,<br>
&nbsp;bool igb_alloc_rx_buffers_zc(struct igb_ring *rx_ring, u16 count);<br=
>
&nbsp;void igb_clean_rx_ring_zc(struct igb_ring *rx_ring);<br>
&nbsp;int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector, const int budg=
et);<br>
+bool igb_xmit_zc(struct igb_ring *tx_ring);<br>
&nbsp;int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags);<br>
&nbsp;<br>
&nbsp;#endif /* _IGB_H_ */<br>
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethern=
et/intel/igb/igb_main.c<br>
index 8eed3d0ab4fc..db99256ff1af 100644<br>
--- a/drivers/net/ethernet/intel/igb/igb_main.c<br>
+++ b/drivers/net/ethernet/intel/igb/igb_main.c<br>
@@ -3018,6 +3018,9 @@ static int igb_xdp_xmit(struct net_device *dev, int n=
,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (unlikely(!tx_ring))<br=
>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return -ENXIO;<br>
&nbsp;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (unlikely(test_bit(IGB_RING_FLAG_T=
X_DISABLED, &amp;tx_ring-&gt;flags)))<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; return -ENXIO;<br>
+<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nq =3D txring_txq(tx_ring)=
;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __netif_tx_lock(nq, cpu);<=
br>
&nbsp;<br>
@@ -4931,15 +4934,20 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)<br=
>
&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u16 i =3D tx_ring-&gt;next=
_to_clean;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct igb_tx_buffer *tx_b=
uffer =3D &amp;tx_ring-&gt;tx_buffer_info[i];<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 xsk_frames =3D 0;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while (i !=3D tx_ring-&gt;=
next_to_use) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; union e1000_adv_tx_desc *eop_desc, *tx_desc;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; /* Free all the Tx ring sk_buffs or xdp frames */<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; if (tx_buffer-&gt;type =3D=3D IGB_TYPE_SKB)<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; if (tx_buffer-&gt;type =3D=3D IGB_TYPE_SKB) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev_k=
free_skb_any(tx_buffer-&gt;skb);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; else<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; } else if (tx_buffer-&gt;type =3D=3D IGB_TYPE_XDP) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xdp_r=
eturn_frame(tx_buffer-&gt;xdpf);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; } else if (tx_buffer-&gt;type =3D=3D IGB_TYPE_XSK) {<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xsk_frames++;<br=
>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto skip_for_xs=
k;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; }<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; /* unmap skb header data */<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; dma_unmap_single(tx_ring-&gt;dev,<br>
@@ -4970,6 +4978,7 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DMA_TO_DEVICE);<b=
r>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; }<br>
&nbsp;<br>
+skip_for_xsk:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; tx_buffer-&gt;next_to_watch =3D NULL;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; /* move us one more past the eop_desc for start of ne=
xt pkt */<br>
@@ -4984,6 +4993,9 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* reset BQL for queue */<=
br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; netdev_tx_reset_queue(txri=
ng_txq(tx_ring));<br>
&nbsp;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (tx_ring-&gt;xsk_pool &amp;&amp; x=
sk_frames)<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; xsk_tx_completed(tx_ring-&gt;xsk_pool, xsk_frames);<br>
+<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* reset next_to_use and n=
ext_to_clean */<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tx_ring-&gt;next_to_use =
=3D 0;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tx_ring-&gt;next_to_clean =
=3D 0;<br>
@@ -6517,6 +6529,9 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,<=
br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return NETDEV_TX_BUSY;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&nbsp;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (unlikely(test_bit(IGB_RING_FLAG_T=
X_DISABLED, &amp;tx_ring-&gt;flags)))<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; return NETDEV_TX_BUSY;<br>
+<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* record the location of =
the first descriptor for this packet */<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; first =3D &amp;tx_ring-&gt=
;tx_buffer_info[tx_ring-&gt;next_to_use];<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; first-&gt;type =3D IGB_TYP=
E_SKB;<br>
@@ -8290,13 +8305,17 @@ static int igb_poll(struct napi_struct *napi, int b=
udget)<br>
&nbsp; **/<br>
&nbsp;static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_=
budget)<br>
&nbsp;{<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct igb_adapter *adapter =3D q_vec=
tor-&gt;adapter;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct igb_ring *tx_ring =3D q_vector=
-&gt;tx.ring;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct igb_tx_buffer *tx_buffer;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; union e1000_adv_tx_desc *tx_desc;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int total_bytes =
=3D 0, total_packets =3D 0;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct igb_adapter *adapter =3D q_vec=
tor-&gt;adapter;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int budget =3D q_=
vector-&gt;tx.work_limit;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct igb_ring *tx_ring =3D q_vector=
-&gt;tx.ring;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int i =3D tx_ring=
-&gt;next_to_clean;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; union e1000_adv_tx_desc *tx_desc;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct igb_tx_buffer *tx_buffer;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int cpu =3D smp_processor_id();<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool xsk_xmit_done =3D true;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct netdev_queue *nq;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 xsk_frames =3D 0;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (test_bit(__IGB_DOWN, &=
amp;adapter-&gt;state))<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; return true;<br>
@@ -8327,10 +8346,14 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q=
_vector, int napi_budget)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; total_packets +=3D tx_buffer-&gt;gso_segs;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; /* free the skb */<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; if (tx_buffer-&gt;type =3D=3D IGB_TYPE_SKB)<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; if (tx_buffer-&gt;type =3D=3D IGB_TYPE_SKB) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; napi_=
consume_skb(tx_buffer-&gt;skb, napi_budget);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; else<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; } else if (tx_buffer-&gt;type =3D=3D IGB_TYPE_XDP) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xdp_r=
eturn_frame(tx_buffer-&gt;xdpf);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; } else if (tx_buffer-&gt;type =3D=3D IGB_TYPE_XSK) {<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xsk_frames++;<br=
>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto skip_for_xs=
k;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; }<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; /* unmap skb header data */<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; dma_unmap_single(tx_ring-&gt;dev,<br>
@@ -8362,6 +8385,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_v=
ector, int napi_budget)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; }<br>
&nbsp;<br>
+skip_for_xsk:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; /* move us one more past the eop_desc for start of ne=
xt pkt */<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; tx_buffer++;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; tx_desc++;<br>
@@ -8390,6 +8414,20 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_=
vector, int napi_budget)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; q_vector-&gt;tx.total_byte=
s +=3D total_bytes;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; q_vector-&gt;tx.total_pack=
ets +=3D total_packets;<br>
&nbsp;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (tx_ring-&gt;xsk_pool) {<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; if (xsk_frames)<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xsk_tx_completed=
(tx_ring-&gt;xsk_pool, xsk_frames);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; if (xsk_uses_need_wakeup(tx_ring-&gt;xsk_pool))<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; xsk_set_tx_need_=
wakeup(tx_ring-&gt;xsk_pool);<br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; nq =3D txring_txq(tx_ring);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; __netif_tx_lock(nq, cpu);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; /* Avoid transmit queue timeout since we share it with the slow =
path */<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; txq_trans_cond_update(nq);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; xsk_xmit_done =3D igb_xmit_zc(tx_ring);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; __netif_tx_unlock(nq);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
+<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (test_bit(IGB_RING_FLAG=
_TX_DETECT_HANG, &amp;tx_ring-&gt;flags)) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; struct e1000_hw *hw =3D &amp;adapter-&gt;hw;<br>
&nbsp;<br>
@@ -8452,7 +8490,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_v=
ector, int napi_budget)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; }<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return !!budget;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return !!budget &amp;&amp; xsk_xmit_d=
one;<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;/**<br>
diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/etherne=
t/intel/igb/igb_xsk.c<br>
index f5133e6d5b9c..221507d5fb01 100644<br>
--- a/drivers/net/ethernet/intel/igb/igb_xsk.c<br>
+++ b/drivers/net/ethernet/intel/igb/igb_xsk.c<br>
@@ -432,6 +432,57 @@ int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector,=
 const int budget)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return failure ? budget : =
(int)total_packets;<br>
&nbsp;}<br>
&nbsp;<br>
+bool igb_xmit_zc(struct igb_ring *tx_ring)<br>
+{<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int budget =3D igb_desc_unus=
ed(tx_ring);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct xsk_buff_pool *pool =3D tx_rin=
g-&gt;xsk_pool;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct xdp_desc *descs =3D pool-&gt;t=
x_descs;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; union e1000_adv_tx_desc *tx_desc =3D =
NULL;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct igb_tx_buffer *tx_buffer_info;=
<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 cmd_type, nb_pkts, i =3D 0;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int total_bytes =3D 0;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dma_addr_t dma;<br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nb_pkts =3D xsk_tx_peek_release_desc_=
batch(pool, budget);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!nb_pkts)<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; return true;<br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while (nb_pkts-- &gt; 0) {<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; dma =3D xsk_buff_raw_get_dma(pool, descs[i].addr);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; xsk_buff_raw_dma_sync_for_device(pool, dma, descs[i].len);<br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; tx_buffer_info =3D &amp;tx_ring-&gt;tx_buffer_info[tx_ring-&gt;n=
ext_to_use];<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; tx_buffer_info-&gt;bytecount =3D descs[i].len;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; tx_buffer_info-&gt;type =3D IGB_TYPE_XSK;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; tx_buffer_info-&gt;xdpf =3D NULL;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; tx_buffer_info-&gt;gso_segs =3D 1;</div>
<div class=3D"PlainText" dir=3D"auto"><br>
</div>
<div class=3D"PlainText" dir=3D"auto">I missed to set time_stamp here. Will=
 fix it in the next version if this goes further.&nbsp;</div>
<div class=3D"PlainText" dir=3D"auto"><br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; tx_desc =3D IGB_TX_DESC(tx_ring, tx_ring-&gt;next_to_use);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; tx_desc-&gt;read.buffer_addr =3D cpu_to_le64(dma);<br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; /* put descriptor type bits */<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; cmd_type =3D E1000_ADVTXD_DTYP_DATA | E1000_ADVTXD_DCMD_DEXT |<b=
r>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; E1000_ADVTXD_DCMD_IFCS;<br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; cmd_type |=3D descs[i].len | IGB_TXD_DCMD;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; tx_desc-&gt;read.cmd_type_len =3D cpu_to_le32(cmd_type);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; tx_desc-&gt;read.olinfo_status =3D 0;<br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; total_bytes +=3D descs[i].len;<br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; i++;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; tx_ring-&gt;next_to_use++;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; tx_buffer_info-&gt;next_to_watch =3D tx_desc;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; if (tx_ring-&gt;next_to_use =3D=3D tx_ring-&gt;count)<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tx_ring-&gt;next=
_to_use =3D 0;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; netdev_tx_sent_queue(txring_txq(tx_ri=
ng), total_bytes);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; igb_xdp_ring_update_tail(tx_ring);<br=
>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return nb_pkts &lt; budget;<br>
+}<br>
+<br>
&nbsp;int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)<br>
&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct igb_adapter *adapte=
r =3D netdev_priv(dev);<br>
-- <br>
2.34.1<br>
<br>
</div>
</span></font><br>
</div>
</div>
</body>
</html>

--_000_DBBP189MB1433B9674A25BA563A4FFB5F9536ADBBP189MB1433EURP_--

--===============4140624985650669570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4140624985650669570==--
