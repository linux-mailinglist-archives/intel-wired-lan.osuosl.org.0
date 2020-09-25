Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4438B279418
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Sep 2020 00:25:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC16587690;
	Fri, 25 Sep 2020 22:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2DkB2U18-FqU; Fri, 25 Sep 2020 22:25:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A95CF87698;
	Fri, 25 Sep 2020 22:25:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E9061BF349
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 22:25:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 09C3786D1D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 22:25:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IIepGL1OrWWl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Sep 2020 22:25:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 516C686D10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 22:25:03 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id md22so127033pjb.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 15:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jmTFoZ5nOIect56+iNWMt+NdDBec3iDrAHMLNIdLP7U=;
 b=LnyaJYB4PM74e71DGuPy+9I3RH6KMsZW2pdlfN9D6esb+S7mgAi2fgOcaZxPP/JA0P
 OBzyYQwJao3B05JwZAeDFVO9ruIY/o7SBvdeQZpGdDPtal55otdYPzzm56svp5lVTZCs
 fem1OEr+AVQ7z8KPsBKGzfIe4hLIXlUfJJbPToNzfMPcpT3AC35kFfvYKHQ+1yBhm18j
 UjRBSATASzURXGJW9zhY1Od0XsgAH3d78v/eFkDhK22u+VXqcdUhv38kUFJoz5TUC92/
 0EazYU9tQR8B8RnH6oWrsAF4w6gaAhaRS9hxzD44MVErn2pwNLQlWpFQauy+qAC1VFAu
 a6Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jmTFoZ5nOIect56+iNWMt+NdDBec3iDrAHMLNIdLP7U=;
 b=tU7hwRz2v1g05lYR9uu0S90cmR1+OyMjji/XGqEewh9x8PGd7B5n6029aB93e8n+UW
 qHdOGBR7M3YT8WZiW91f/JByEcf8L9SLYXyQdpENH5ya1nQlTRHwxEigoTz9RypP2aT6
 gETrwcJw8GWk25DpAeQA9IbNZZynT1pPT1wooN+5KQ412F8rKNygf1KIrb2giAwmM+9z
 iG0SA4GJhGlMkM6zSNSuPVDO4scyOa3ZtMAe5Q7p0D84DjgK4t49D73LHOYD1ET9cgJE
 MtZf+UIAx0FSlV+ib15QAJFKdgo2YL4P2Z/ArXTWfpGe00t/C7dEgYe9CYxbpKrOVxZ4
 q68Q==
X-Gm-Message-State: AOAM531L9lJn3zrJ3T5KzHoU/YVWMuM+pyWaIFt5fXd3rU8uu1L850pJ
 gTGH0/2Sh8zvxOq5aS2M2Bw=
X-Google-Smtp-Source: ABdhPJx3tp2IZEa0Sl+fF7JkL3zQp5nvzOMmU2LTVIO/uOQqnW4EKxQ+cmb4olmdbwsjUEy0yRRnbw==
X-Received: by 2002:a17:90a:14a4:: with SMTP id
 k33mr608162pja.236.1601072702847; 
 Fri, 25 Sep 2020 15:25:02 -0700 (PDT)
Received: from jesse-ThinkPad-T570.lan (50-39-107-76.bvtn.or.frontiernet.net.
 [50.39.107.76])
 by smtp.gmail.com with ESMTPSA id q15sm169343pje.29.2020.09.25.15.25.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 15:25:01 -0700 (PDT)
From: Jesse Brandeburg <jesse.brandeburg@gmail.com>
To: netdev@vger.kernel.org
Date: Fri, 25 Sep 2020 15:24:40 -0700
Message-Id: <20200925222445.74531-5-jesse.brandeburg@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200925222445.74531-1-jesse.brandeburg@gmail.com>
References: <20200925222445.74531-1-jesse.brandeburg@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 4/9] drivers/net/ethernet: rid
 ethernet of no-prototype warnings
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+CgpUaGUg
Vz0xIGJ1aWxkcyBzaG93ZWQgYSBmZXcgZmlsZXMgZXhwb3J0aW5nIGZ1bmN0aW9ucwoobm9uLXN0
YXRpYykgdGhhdCB3ZXJlIG5vdCBwcm90b3R5cGVkLiBXaGF0IGFjdHVhbGx5IGhhcHBlbmVkIGlz
CnRoYXQgdGhlcmUgd2VyZSBwcm90b3R5cGVzLCBidXQgdGhlIGluY2x1ZGUgZmlsZSB3YXMgZm9y
Z290dGVuIGluCnRoZSBpbXBsZW1lbnRhdGlvbiBmaWxlLgoKQWRkIHRoZSBpbmNsdWRlIGZpbGUg
YW5kIHJlbW92ZSB0aGUgd2FybmluZ3MuCgpGaXhlZCBXYXJuaW5nczoKZHJpdmVycy9uZXQvZXRo
ZXJuZXQvY2F2aXVtL2xpcXVpZGlvL2NuNjh4eF9kZXZpY2UuYzoxMjQ6NTogd2FybmluZzogbm8g
cHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhsaW9fc2V0dXBfY242OHh4X29jdGVvbl9kZXZpY2Xi
gJkgWy1XbWlzc2luZy1wcm90b3R5cGVzXQpkcml2ZXJzL25ldC9ldGhlcm5ldC9jYXZpdW0vbGlx
dWlkaW8vb2N0ZW9uX21lbV9vcHMuYzoxNTk6MTogd2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90
eXBlIGZvciDigJhvY3Rlb25fcGNpX3JlYWRfY29yZV9tZW3igJkgWy1XbWlzc2luZy1wcm90b3R5
cGVzXQpkcml2ZXJzL25ldC9ldGhlcm5ldC9jYXZpdW0vbGlxdWlkaW8vb2N0ZW9uX21lbV9vcHMu
YzoxNjg6MTogd2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhvY3Rlb25fcGNp
X3dyaXRlX2NvcmVfbWVt4oCZIFstV21pc3NpbmctcHJvdG90eXBlc10KZHJpdmVycy9uZXQvZXRo
ZXJuZXQvY2F2aXVtL2xpcXVpZGlvL29jdGVvbl9tZW1fb3BzLmM6MTc2OjU6IHdhcm5pbmc6IG5v
IHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYb2N0ZW9uX3JlYWRfZGV2aWNlX21lbTY04oCZIFst
V21pc3NpbmctcHJvdG90eXBlc10KZHJpdmVycy9uZXQvZXRoZXJuZXQvY2F2aXVtL2xpcXVpZGlv
L29jdGVvbl9tZW1fb3BzLmM6MTg1OjU6IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBm
b3Ig4oCYb2N0ZW9uX3JlYWRfZGV2aWNlX21lbTMy4oCZIFstV21pc3NpbmctcHJvdG90eXBlc10K
ZHJpdmVycy9uZXQvZXRoZXJuZXQvY2F2aXVtL2xpcXVpZGlvL29jdGVvbl9tZW1fb3BzLmM6MTk0
OjY6IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYb2N0ZW9uX3dyaXRlX2Rl
dmljZV9tZW0zMuKAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCmRyaXZlcnMvbmV0L2V0aGVybmV0
L2hpc2lsaWNvbi9obnMzL2huczNwZi9oY2xnZV9kY2IuYzo0NTM6Njogd2FybmluZzogbm8gcHJl
dmlvdXMgcHJvdG90eXBlIGZvciDigJhoY2xnZV9kY2Jfb3BzX3NldOKAmSBbLVdtaXNzaW5nLXBy
b3RvdHlwZXNdCgpTaWduZWQtb2ZmLWJ5OiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVi
dXJnQGludGVsLmNvbT4KLS0tCnYzOiBhZGQgd2FybmluZ3MgZGV0YWlsCnYyOiBmaXJzdCBub24t
cmZjIHZlcnNpb24KCkZ1bGwgbGlzdCBvZiB3YXJuaW5nczoKZHJpdmVycy9uZXQvZXRoZXJuZXQv
Y2F2aXVtL2xpcXVpZGlvL2NuNjh4eF9kZXZpY2UuYzoxMjQ6NTogd2FybmluZzogbm8gcHJldmlv
dXMgcHJvdG90eXBlIGZvciDigJhsaW9fc2V0dXBfY242OHh4X29jdGVvbl9kZXZpY2XigJkgWy1X
bWlzc2luZy1wcm90b3R5cGVzXQogIDEyNCB8IGludCBsaW9fc2V0dXBfY242OHh4X29jdGVvbl9k
ZXZpY2Uoc3RydWN0IG9jdGVvbl9kZXZpY2UgKm9jdCkKICAgICAgfCAgICAgXn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+CmRyaXZlcnMvbmV0L2V0aGVybmV0L2Nhdml1bS9saXF1aWRpby9v
Y3Rlb25fbWVtX29wcy5jOjE1OToxOiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9y
IOKAmG9jdGVvbl9wY2lfcmVhZF9jb3JlX21lbeKAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCiAg
MTU5IHwgb2N0ZW9uX3BjaV9yZWFkX2NvcmVfbWVtKHN0cnVjdCBvY3Rlb25fZGV2aWNlICpvY3Qs
CiAgICAgIHwgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CmRyaXZlcnMvbmV0L2V0aGVybmV0L2Nh
dml1bS9saXF1aWRpby9vY3Rlb25fbWVtX29wcy5jOjE2ODoxOiB3YXJuaW5nOiBubyBwcmV2aW91
cyBwcm90b3R5cGUgZm9yIOKAmG9jdGVvbl9wY2lfd3JpdGVfY29yZV9tZW3igJkgWy1XbWlzc2lu
Zy1wcm90b3R5cGVzXQogIDE2OCB8IG9jdGVvbl9wY2lfd3JpdGVfY29yZV9tZW0oc3RydWN0IG9j
dGVvbl9kZXZpY2UgKm9jdCwKICAgICAgfCBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CmRyaXZl
cnMvbmV0L2V0aGVybmV0L2Nhdml1bS9saXF1aWRpby9vY3Rlb25fbWVtX29wcy5jOjE3Njo1OiB3
YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmG9jdGVvbl9yZWFkX2RldmljZV9t
ZW02NOKAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCiAgMTc2IHwgdTY0IG9jdGVvbl9yZWFkX2Rl
dmljZV9tZW02NChzdHJ1Y3Qgb2N0ZW9uX2RldmljZSAqb2N0LCB1NjQgY29yZWFkZHIpCiAgICAg
IHwgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgpkcml2ZXJzL25ldC9ldGhlcm5ldC9jYXZp
dW0vbGlxdWlkaW8vb2N0ZW9uX21lbV9vcHMuYzoxODU6NTogd2FybmluZzogbm8gcHJldmlvdXMg
cHJvdG90eXBlIGZvciDigJhvY3Rlb25fcmVhZF9kZXZpY2VfbWVtMzLigJkgWy1XbWlzc2luZy1w
cm90b3R5cGVzXQogIDE4NSB8IHUzMiBvY3Rlb25fcmVhZF9kZXZpY2VfbWVtMzIoc3RydWN0IG9j
dGVvbl9kZXZpY2UgKm9jdCwgdTY0IGNvcmVhZGRyKQogICAgICB8ICAgICBefn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn4KZHJpdmVycy9uZXQvZXRoZXJuZXQvY2F2aXVtL2xpcXVpZGlvL29jdGVvbl9t
ZW1fb3BzLmM6MTk0OjY6IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYb2N0
ZW9uX3dyaXRlX2RldmljZV9tZW0zMuKAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCiAgMTk0IHwg
dm9pZCBvY3Rlb25fd3JpdGVfZGV2aWNlX21lbTMyKHN0cnVjdCBvY3Rlb25fZGV2aWNlICpvY3Qs
IHU2NCBjb3JlYWRkciwKICAgICAgfCAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KZHJp
dmVycy9uZXQvZXRoZXJuZXQvaGlzaWxpY29uL2huczMvaG5zM3BmL2hjbGdlX2RjYi5jOjQ1Mzo2
OiB3YXJuaW5nOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKAmGhjbGdlX2RjYl9vcHNfc2V0
4oCZIFstV21pc3NpbmctcHJvdG90eXBlc10KICA0NTMgfCB2b2lkIGhjbGdlX2RjYl9vcHNfc2V0
KHN0cnVjdCBoY2xnZV9kZXYgKmhkZXYpCiAgICAgIHwgICAgICBefn5+fn5+fn5+fn5+fn5+fgot
LS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2Nhdml1bS9saXF1aWRpby9jbjY4eHhfZGV2aWNlLmMg
ICB8IDEgKwogZHJpdmVycy9uZXQvZXRoZXJuZXQvaGlzaWxpY29uL2huczMvaG5zM3BmL2hjbGdl
X2RjYi5jIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2Nhdml1bS9saXF1aWRpby9jbjY4eHhfZGV2aWNlLmMg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9jYXZpdW0vbGlxdWlkaW8vY242OHh4X2RldmljZS5jCmlu
ZGV4IGNkNWQ1ZDZlN2U1ZS4uMmE2ZDFjYWRhYzllIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9jYXZpdW0vbGlxdWlkaW8vY242OHh4X2RldmljZS5jCisrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2Nhdml1bS9saXF1aWRpby9jbjY4eHhfZGV2aWNlLmMKQEAgLTI1LDYgKzI1LDcg
QEAKICNpbmNsdWRlICJvY3Rlb25fbWFpbi5oIgogI2luY2x1ZGUgImNuNjZ4eF9yZWdzLmgiCiAj
aW5jbHVkZSAiY242Nnh4X2RldmljZS5oIgorI2luY2x1ZGUgImNuNjh4eF9kZXZpY2UuaCIKICNp
bmNsdWRlICJjbjY4eHhfcmVncy5oIgogI2luY2x1ZGUgImNuNjh4eF9kZXZpY2UuaCIKIApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaGlzaWxpY29uL2huczMvaG5zM3BmL2hjbGdl
X2RjYi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaGlzaWxpY29uL2huczMvaG5zM3BmL2hjbGdl
X2RjYi5jCmluZGV4IGY5OTBmNjkxNTIyNi4uMzYwNjI0MDAyNWE4IDEwMDY0NAotLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9oaXNpbGljb24vaG5zMy9obnMzcGYvaGNsZ2VfZGNiLmMKKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaGlzaWxpY29uL2huczMvaG5zM3BmL2hjbGdlX2RjYi5jCkBA
IC00LDYgKzQsNyBAQAogI2luY2x1ZGUgImhjbGdlX21haW4uaCIKICNpbmNsdWRlICJoY2xnZV9k
Y2IuaCIKICNpbmNsdWRlICJoY2xnZV90bS5oIgorI2luY2x1ZGUgImhjbGdlX2RjYi5oIgogI2lu
Y2x1ZGUgImhuYWUzLmgiCiAKICNkZWZpbmUgQldfUEVSQ0VOVAkxMDAKLS0gCjIuMjUuNAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
