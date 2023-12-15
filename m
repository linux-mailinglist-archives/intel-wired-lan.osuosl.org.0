Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AF9814817
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 13:30:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFE9881970;
	Fri, 15 Dec 2023 12:30:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AFE9881970
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702643443;
	bh=OmhxCHCOjZpewjboOI3Jy98iQdI9gp1AzO0zc9odrQ8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4crTc3SMPbLvzYRH9gQCigy4ybXUoxXXp8wXT9UaFj6PAWTBrx+HHEXsUrSFj+hle
	 WZlXlfDDg+RoZZ+3WWCO1axzK6b9wEMpZTHDS+K4dVs9PdbDMvsv3mbdtbkB2rEhvw
	 QkcYEaVR+fRpwVpOtxc/h3s6ZhVz4as9ESQ3xU7KvLKDI52prWpKuWmDU0sQtj7sXV
	 3nTxBmTNATVym5kjdZKVytD+g2NW2W2xcmuNitl+giyrI00li8NUrApBmLXdDq6USV
	 ZwsIXu7Gws7c3rvSrqmVULtqMpI1kWW5ZFeitvDXH22SFcVm+zXsiaJe35nbl9bKyy
	 UHMa7GSRZr5jA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X_u1A_qgFT6x; Fri, 15 Dec 2023 12:30:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73F81818D0;
	Fri, 15 Dec 2023 12:30:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73F81818D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 179411BF338
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 12:30:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F0D5A81846
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 12:30:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0D5A81846
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fLRkg_4aNB0L for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 12:30:37 +0000 (UTC)
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C95948177A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 12:30:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C95948177A
Received: by mail-wr1-x432.google.com with SMTP id
 ffacd0b85a97d-336445a2749so419131f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 04:30:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702643435; x=1703248235;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qS1FGYqQUVgg6kmNF1jX+vnsM7iLoRSHDDPBhaHTk2c=;
 b=RgF+Y1Thfe1xiVPwrjK3r1HRE+viwsuMeO+EftePnNmwMwfM9l2HVPMtfyEw6xm0F2
 QFr/5824a6LqgZaUv8oTRgfPILPv68UsKT5q/3VHo1tlKSHSdfl/+eVHQ8XYmEzQVzEg
 Z2+xSZVEUaibhlKnt6qjFo7E9PqQ76xEZyDaF/iZVbMwMosrWZiEr4/4GGX1qr65XcmN
 ii726RfLQiEalEn4OR/1kyzK4P46z0GW4pTTTVZCr2GtpwwfvZefj22VBX/J5X9rQrKP
 Z5ZQqfEz7YfG4tNmO78SNqCTXSbc5ZnBFW7ZQ6Gk/bUSgCC+r0UTKTjFU7tR/MFwND6d
 HYFQ==
X-Gm-Message-State: AOJu0Yy4Bglp7HVocpKViDdKqysNk6v1H0zlqAJhZufLXrRKSjCYEf/P
 a+YdCaSP8bg7ZBxChzhkK9qhEw==
X-Google-Smtp-Source: AGHT+IFlj4q60v6pJqLAyyHxPTjQFrEhx3e7Vy7nAJ7PJz1rp7p1y8vJEgxT2DqM6935BHDDhsMGTA==
X-Received: by 2002:a5d:5309:0:b0:336:3ac4:b8ba with SMTP id
 e9-20020a5d5309000000b003363ac4b8bamr2290149wrv.60.1702643434740; 
 Fri, 15 Dec 2023 04:30:34 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 s15-20020a5d69cf000000b0033641783aeesm6487430wrw.7.2023.12.15.04.30.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Dec 2023 04:30:34 -0800 (PST)
Date: Fri, 15 Dec 2023 13:30:32 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <ZXxG6MFb3KO-RVw9@nanopsycho>
References: <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
 <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
 <20231118084843.70c344d9@kernel.org>
 <3d60fabf-7edf-47a2-9b95-29b0d9b9e236@intel.com>
 <20231122192201.245a0797@kernel.org>
 <e662dca5-84e4-4f7b-bfa3-50bce30c697c@intel.com>
 <20231127174329.6dffea07@kernel.org>
 <55e51b97c29894ebe61184ab94f7e3d8486e083a.camel@redhat.com>
 <20231214174604.1ca4c30d@kernel.org>
 <7b0c2e0132b71b131fc9a5407abd27bc0be700ee.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7b0c2e0132b71b131fc9a5407abd27bc0be700ee.camel@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1702643435; x=1703248235;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=qS1FGYqQUVgg6kmNF1jX+vnsM7iLoRSHDDPBhaHTk2c=;
 b=XG+IjmzG+sRUQctHym0rqoxhOTjeb7Rxmte2sHdLhgSIiRKgqyKsPsx7rQOtG6vMpD
 C0G7eDM4um74oE07hPIWjCYkzQTOEhVIlUz65O2Q/PkUg/6NXMDRWyuV+FnVuFrC4tD8
 IdJKj9sYuIXqlnnj6NlJoRwagjo2aJJVq1uKzeRYeTNSyt51doNAa169iSxBBh1dPQph
 52ZAXQnwnHFs95WtQzsDAmkYGoAdkK7Zu0tlnBbSaRYt3Z0SwD7q99PpdkwRsg9JFYu8
 0/hS3ioG4FHHaUSy3RjSGS/yg9XYQ9KlDG2iGuj94htSkFawiIcKw6jdkRwBAcLuwKjj
 dXog==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=XG+IjmzG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 maxtram95@gmail.com, Simon Horman <simon.horman@redhat.com>,
 anthony.l.nguyen@intel.com, "Chittim, Madhu" <madhu.chittim@intel.com>,
 intel-wired-lan@lists.osuosl.org, qi.z.zhang@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJpLCBEZWMgMTUsIDIwMjMgYXQgMTI6MDY6NTJQTSBDRVQsIHBhYmVuaUByZWRoYXQuY29tIHdy
b3RlOgo+T24gVGh1LCAyMDIzLTEyLTE0IGF0IDE3OjQ2IC0wODAwLCBKYWt1YiBLaWNpbnNraSB3
cm90ZToKPj4gT24gVGh1LCAxNCBEZWMgMjAyMyAyMToyOTo1MSArMDEwMCBQYW9sbyBBYmVuaSB3
cm90ZToKPj4gPiBUb2dldGhlciB3aXRoIFNpbW9uLCBJIHNwZW50IHNvbWUgdGltZSBvbiB0aGUg
YWJvdmUuIFdlIHRoaW5rIHRoZQo+PiA+IG5kb19zZXR1cF90YyhUQ19TRVRVUF9RRElTQ19UQkYp
IGhvb2sgY291bGQgYmUgdXNlZCBhcyBjb21tb24gYmFzaXMgZm9yCj4+ID4gdGhpcyBvZmZsb2Fk
cywgd2l0aCBzb21lIHNtYWxsIGV4dGVuc2lvbnMgKGFkZGluZyBhICdtYXhfcmF0ZScgcGFyYW0s
Cj4+ID4gdG9vKS4KPj4gCj4+IHVBUEkgYXNpZGUsIHdoeSB3b3VsZCB3ZSB1c2UgbmRvX3NldHVw
X3RjKFRDX1NFVFVQX1FESVNDX1RCRikKPj4gdG8gaW1wbGVtZW50IGNvbW1vbiBiYXNpcz8KPj4g
Cj4+IElzIGl0IG5vdCBjbGVhbmVyIHRvIGhhdmUgYSBzZXBhcmF0ZSBkcml2ZXIgQVBJLCB3aXRo
IGl0cyBvcHMKPj4gYW5kIGNhcGFiaWxpdGllcz8KPgo+V2UgdW5kZXJzdGFuZCBvbmUgb2YgdGhl
IGVuZCBnb2FsIGlzIGNvbnNvbGlkYXRpbmcgdGhlIGV4aXN0aW5nIHJhdGUtCj5yZWxhdGVkIGlu
IGtlcm5lbCBpbnRlcmZhY2VzLiAgQWRkaW5nIGEgbmV3IG9uZSBkb2VzIG5vdCBmZWVsIGEgZ29v
ZAo+c3RhcnRpbmcgdG8gcmVhY2ggdGhhdCBnb2FsLCBzZWUgWzFdICYgWzJdIDspLiBuZG9fc2V0
dXBfdGMoKSBmZWVscwo+bGlrZSB0aGUgbmF0dXJhbCBjaG9pY2UgZm9yIEgvVyBvZmZsb2FkIGFu
ZCBUQkYgaXMgdGhlIGV4aXN0aW5nCj5pbnRlcmZhY2UgSU1ITyBuZWFyZXN0IHRvIHRoZSByZXF1
aXJlbWVudHMgaGVyZS4KPgo+VGhlIGRldmxpbmsgcmF0ZSBBUEkgY291bGQgYmUgYSBwb3NzaWJs
ZSBhbHRlcm5hdGl2ZS4uLgoKQWdhaW4sIGRldmxpbmsgcmF0ZSB3YXMgaW50cm9kdWNlZCBmb3Ig
dGhlIHJhdGUgY29uZmlndXJhdGlvbiBvZiB0aGUKZW50aXR5IHRoYXQgaXMgbm90IHByZXNlbnQg
KGJ5IG5ldGRldiBmb3IgZXhhbXBsZSkgb24gYSBob3N0LgpJZiB3ZSBoYXZlIG5ldGRldiwgbGV0
J3MgdXNlIGl0LgoKCj4KPj4gPiBUaGUgaWRlYSB3b3VsZCBiZToKPj4gPiAtICdmaXhpbmcnIHNj
aF9idGYgc28gdGhhdCB0aGUgcy93IHBhdGggYmVjYW1lIGEgbm8tb3Agd2hlbiBoL3cgb2ZmbG9h
ZAo+PiA+IGlzIGVuYWJsZWQKPj4gPiAtIGV4dGVuZCBzY2hfYnRmIHRvIHN1cHBvcnQgbWF4IHJh
dGUKPj4gPiAtIGRvIHRoZSByZWxldmFudCBpY2UgaW1wbGVtZW50YXRpb24KPj4gPiAtIG5kb19z
ZXRfdHhfbWF4cmF0ZSBjb3VsZCBiZSByZXBsYWNlZCB3aXRoIHRoZSBtZW50aW9uZWQgbmRvIGNh
bGwgKHRoZQo+PiA+IGxhdHRlciBpbnRlcmZhY2UgaXMgYSBzdHJpY3Qgc3VwZXItc2V0IG9mIGZv
cm1lcikKPj4gPiAtIG5kb19zZXRfdmZfcmF0ZSBjb3VsZCBhbHNvIGJlIHJlcGxhY2VkIHdpdGgg
dGhlIG1lbnRpb25lZCBuZG8gY2FsbAo+PiA+ICh3aXRoIGFub3RoZXIgc21hbGwgZXh0ZW5zaW9u
IHRvIHRoZSBvZmZsb2FkIGRhdGEpCj4+ID4gCj4+ID4gSSB0aGluayBtcXByaW8gZGVzZXJ2ZXMg
aXQncyBvd24gc2VwYXJhdGUgb2ZmbG9hZCBpbnRlcmZhY2UsIGFzIGl0Cj4+ID4gY292ZXJzIG11
bHRpcGxlIHRhc2tzIG90aGVyIHRoYW4gc2hhcGluZyAoZ3JvdXBpbmcgcXVldWVzIGFuZCBtYXBw
aW5nCj4+ID4gcHJpb3JpdHkgdG8gY2xhc3NlcykKPj4gPiAKPj4gPiBJbiB0aGUgbG9uZyBydW4g
d2UgY291bGQgaGF2ZSBhIGdlbmVyaWMgaW1wbGVtZW50YXRpb24gb2YgdGhlCj4+ID4gbmRvX3Nl
dHVwX3RjKFRDX1NFVFVQX1FESVNDX1RCRikgaW4gdGVybSBvZiBkZXZsaW5rIHJhdGUgYWRkaW5n
IGEKPj4gPiBnZW5lcmljIHdheSB0byBmZXRjaCB0aGUgZGV2bGlua19wb3J0IGluc3RhbmNlIGNv
cnJlc3BvbmRpbmcgdG8gdGhlCj4+ID4gZ2l2ZW4gbmV0ZGV2IGFuZCBtYXBwaW5nIHRoZSBUQkYg
ZmVhdHVyZXMgdG8gdGhlIGRldmxpbmtfcmF0ZSBBUEkuCj4+ID4gCj4+ID4gTm90IHN0YXJ0aW5n
IHRoaXMgZHVlIHRvIHdoYXQgSmlyaSBtZW50aW9uZWQgWzFdLgo+PiAKPj4gSmlyaSwgQUZBSVUs
IGlzIGFnYWluc3QgdXNpbmcgZGV2bGluayByYXRlICp1QVBJKiB0byBjb25maWd1cmUgbmV0d29y
awo+PiByYXRlIGxpbWl0aW5nLiBUaGF0J3Mgc2VwYXJhdGUgZnJvbSB0aGUgaW50ZXJuYWwgcmVw
cmVzZW50YXRpb24uCj4KPi4uLiB3aXRoIGEgY291cGxlcyBvZiBjYXZlYXRzOgo+Cj4xKSBBRkFJ
Q1MgZGV2bGluayAoYW5kL29yIGRldmxpbmtfcG9ydCkgZG9lcyBub3QgaGF2ZSBmaW5lIGdyYWlu
ZWQsIHBlcgo+cXVldWUgcmVwcmVzZW50YXRpb24gYW5kIGludGVsIHdhbnQgdG8gYmUgYWJsZSB0
byBjb25maWd1cmUgc2hhcGluZyBvbgo+cGVyIHF1ZXVlIGJhc2lzLiBJIHRoaW5rL2hvcGUgd2Ug
ZG9uJ3Qgd2FudCB0byBicmluZyB0aGUgZGlzY3Vzc2lvbiB0bwo+ZXh0ZW5kaW5nIHRoZSBkZXZs
aW5rIGludGVyZmFjZSB3aXRoIHF1ZXVlIHN1cHBvcnQsIEkgZmVhciB0aGF0IHdpbGwKPmJsb2Nr
IHVzIGZvciBhIGxvbmcgdGltZS4gUGVyaGFwcyBJ4oCZbSBtaXNzaW5nIG9yIG1pc3VuZGVyc3Rh
bmRpbmcKPnNvbWV0aGluZyBoZXJlLiBPdGhlcndpc2UgaW4gcmV0cm9zcGVjdCB0aGlzIGxvb2tz
IGxpa2UgYSByZWFzb25hYmxlCj5wb2ludCB0byBjb21wbGV0ZWx5IGF2b2lkIGRldmxpbmsgaGVy
ZS4KPgo+MikgTXkgdW5kZXJzdGFuZGluZyBvZiBKaXJpIHN0YXRlbWVudCB3YXMgbW9yZSByZXN0
cmljdGl2ZS4gQEppcmkgaXQKPndvdWxkIGdyZWF0IGlmIGNvdWxkIHNoYXJlIHlvdXIgZ2VudWlu
ZSBpbnRlcnByZXRhdGlvbjogYXJlIHlvdSBvayB3aXRoCj51c2luZyB0aGUgZGV2bGlua19wb3J0
IHJhdGUgQVBJIGFzIGEgYmFzaXMgdG8gcmVwbGFjZQo+bmRvX3NldF90eF9tYXhyYXRlKCkgKHZp
YSBkZXYtPmRldmxpbmtfcG9ydC0+ZGV2bGluay0+KSBhbmQgcG9zc2libHkKCkRvZXMgbm90IG1h
a2UgYW55IHNlbnNlIHRvIG1lLgoKCj5uZG9fc2V0X3ZmX3JhdGUoKS4gTm90ZSB0aGUgZ2l2ZW4g
dGhlIHByZXZpb3VzIHBvaW50LCB0aGlzIG9wdGlvbiB3b3VsZAoKbmRvX3NldF92Zl9yYXRlKCkg
KGFuZCB0aGUgcmVzdCBvZiBuZG9fW2dzXWV0X3ZmXyooKSBuZG8pIGlzIHRoZQpsZWdhY3kgd2F5
LiBEZXZsaW5rIHJhdGUgcmVwbGFjZWQgdGhhdCB3aGVuIHN3aXRjaGRldiBlc3dpY2ggbW9kZSBp
cwpjb25maWd1cmVkIGJ5OgokIHN1ZG8gZGV2bGluayBkZXYgZXN3aXRjaCBzZXQgcGNpLzAwMDA6
MDg6MDAuMSBtb2RlIHN3aXRjaGRldgoKSW4gZHJpdmVycywgbmRvX3NldF92Zl9yYXRlKCkgYW5k
IGRldmxpbmsgcmF0ZSBhcmUgaW1wbGVtZW50ZWQgaW4gdGhlCnNhbWUgd2F5LiBTZWUgbWx4NSBm
b3IgZXhhbXBsZToKbWx4NV9lc3dfcW9zX3NldF92cG9ydF9yYXRlKCkKbWx4NV9lc3dfZGV2bGlu
a19yYXRlX2xlYWZfdHhfc2hhcmVfc2V0KCkKCgoKPnN0aWxsIGZlZWwgcHJvYmxlbWF0aWMuCj4K
PkNoZWVycywKPgo+UGFvbG8KPgo+WzFdIGh0dHBzOi8veGtjZC5jb20vOTI3Lwo+WzJdIGh0dHBz
Oi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9ZjhrT19MLXBEd28KPgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
