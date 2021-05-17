Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68025382E2C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 16:03:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E55F1405DF;
	Mon, 17 May 2021 14:03:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nTkHIqMli8YQ; Mon, 17 May 2021 14:03:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AB57405D8;
	Mon, 17 May 2021 14:03:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 795981BF20F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 11:24:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 72DD6838ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 11:24:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R7anSGMEy2dB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 11:24:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E307A838DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 11:24:57 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E8DE86100C;
 Mon, 17 May 2021 11:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621250697;
 bh=IqUZ0sNLzRXtoD/YFOpvkpCv7NFriIwqrV0nk+tQFjA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SjZiucxTGgskw3bZqxU8hkRIDqvLkRPDUPXGysGlCLAY4qMHHwLFDNWf7GzwMPeSy
 k6gBtne3rZl4OWw9EJiAKpC90ICt4wmL+dOW1/wtHGSzFBwlIEB7lPhufz0SGrH9U0
 8BeoyWN0zwaq92smlvSCsJzkysY0ZKum/rQEXJAZuksdPKz9UCm2b6rTTMrYAXAHuw
 m5K5R4IDiLhuXBms1/YwUa6BMqBAHs9uv2Ndu7DwgV1+6w7DgEDLXe2pUPRnLtE+Wd
 GExQHVUHQydYOYDz+zZFmQU4ywGdNTNfxU1WppJsq+V8siRV5m9U5SOv7k7mbiC129
 mEKSngo0SzESg==
Date: Mon, 17 May 2021 13:24:46 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20210517132446.7edba98f@coco.lan>
In-Reply-To: <30cd6dd9d1049d56b629c92a5f385b84c026b445.camel@infradead.org>
References: <cover.1621159997.git.mchehab+huawei@kernel.org>
 <30cd6dd9d1049d56b629c92a5f385b84c026b445.camel@infradead.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 17 May 2021 14:02:54 +0000
Subject: Re: [Intel-wired-lan] [PATCH v3 00/16] Replace some bad characters
 on documents
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
Cc: alsa-devel@alsa-project.org, kvm@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-pci@vger.kernel.org,
 Lai Jiangshan <jiangshanlai@gmail.com>,
 Thorsten Leemhuis <linux@leemhuis.info>, Jaroslav Kysela <perex@perex.cz>,
 netdev@vger.kernel.org, Andreas Dilger <adilger.kernel@dilger.ca>,
 Joel Fernandes <joel@joelfernandes.org>, Jonathan Corbet <corbet@lwn.net>,
 linux-acpi@vger.kernel.org, Alan Stern <stern@rowland.harvard.edu>,
 Corentin Labbe <clabbe@baylibre.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-ext4@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 Mike Leach <mike.leach@linaro.org>, Jean Delvare <jdelvare@suse.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, coresight@lists.linaro.org,
 Steven Rostedt <rostedt@goodmis.org>, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 intel-wired-lan@lists.osuosl.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Yan <leo.yan@linaro.org>,
 linux-media@vger.kernel.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RW0gTW9uLCAxNyBNYXkgMjAyMSAxMTo0ODowNCArMDEwMApEYXZpZCBXb29kaG91c2UgPGR3bXcy
QGluZnJhZGVhZC5vcmc+IGVzY3JldmV1OgoKPiBPbiBTdW4sIDIwMjEtMDUtMTYgYXQgMTI6MTgg
KzAyMDAsIE1hdXJvIENhcnZhbGhvIENoZWhhYiB3cm90ZToKPiA+IFRoZSBjb252ZXJzaW9uIHRv
b2xzIHVzZWQgZHVyaW5nIERvY0Jvb2svTGFUZVgvaHRtbC9NYXJrZG93bi0+UmVTVCAKPiA+IGNv
bnZlcnNpb24gYW5kIHNvbWUgY3V0LWFuZC1wYXN0ZWQgdGV4dCBjb250YWluIHNvbWUgY2hhcmFj
dGVycyB0aGF0Cj4gPiBhcmVuJ3QgZWFzaWx5IHJlYWNoYWJsZSBvbiBzdGFuZGFyZCBrZXlib2Fy
ZHMgYW5kL29yIGNvdWxkIGNhdXNlIAo+ID4gdHJvdWJsZXMgd2hlbiBwYXJzZWQgYnkgdGhlIGRv
Y3VtZW50YXRpb24gYnVpbGQgc3lzdGVtLiAgCj4gCj4gQmV0dGVyLgo+IAo+IEJ1dCB5b3Ugc3Rp
bGwgZG9uJ3Qgc2F5ICp3aHkqIGl0IG1hdHRlcnMgd2hldGhlciBnaXZlbiBjaGFyYWN0ZXJzIGFy
ZQo+IHRyaXZpYWwgdG8gcmVhY2ggd2l0aCBzdGFuZGFyZCBrZXlib2FyZCBsYXlvdXRzLCBvciBz
cGVjaWZ5ICp3aGF0Kgo+ICd0cm91YmxlcycgdGhlIG9mZmVuZGluZyBjaGFyYWN0ZXJzIGNhdXNl
LgoKU2VlIHRoZSBwYXRjaGVzIGluIHRoZSBzZXJpZXMuIFRoZSByZWFzb24gZm9yIGVhY2ggcGFy
dGljdWxhciBjYXNlCmlzIHRoZXJlIG9uIGVhY2ggcGF0Y2gsIGxpa2Ugb24gdGhpcyBvbmU6CgoJ
W1BBVENIIHYzIDEzLzE2XSBkb2NzOiBzb3VuZDoga2VybmVsLWFwaTogd3JpdGluZy1hbi1hbHNh
LWRyaXZlci5yc3Q6IHJlcGxhY2Ugc29tZSBjaGFyYWN0ZXJzCgoJVGhlIGNvbnZlcnNpb24gdG9v
bHMgdXNlZCBkdXJpbmcgRG9jQm9vay9MYVRlWC9odG1sL01hcmtkb3duLT5SZVNUCgljb252ZXJz
aW9uIGFuZCBzb21lIGN1dC1hbmQtcGFzdGVkIHRleHQgY29udGFpbiBzb21lIGNoYXJhY3RlcnMg
dGhhdAoJYXJlbid0IGVhc2lseSByZWFjaGFibGUgb24gc3RhbmRhcmQga2V5Ym9hcmRzIGFuZC9v
ciBjb3VsZCBjYXVzZQoJdHJvdWJsZXMgd2hlbiBwYXJzZWQgYnkgdGhlIGRvY3VtZW50YXRpb24g
YnVpbGQgc3lzdGVtLgoJIAoJUmVwbGFjZSB0aGUgb2NjdXJlbmNlcyBvZiB0aGUgZm9sbG93aW5n
IGNoYXJhY3RlcnM6CgkKCQktIFUrMDBhMCAoJ8KgJyk6IE5PLUJSRUFLIFNQQUNFCgkJICBhcyBp
dCBjYW4gY2F1c2UgbGluZXMgYmVpbmcgdHJ1bmNhdGVkIG9uIFBERiBvdXRwdXQKCglTaWduZWQt
b2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+
CgoKVGhhbmtzLApNYXVybwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
