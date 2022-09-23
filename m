Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EDB5E83AB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Sep 2022 22:30:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 372EB84077;
	Fri, 23 Sep 2022 20:30:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 372EB84077
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663965010;
	bh=hy+vBr/+1Re2C4OKlXpRDaBFVJrB1bZMOYTf7QbnSaw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vSpyndX0vZiOh/ixnbDtW+DiPdPJiqX1h+e6ioZ6TxoRBXbaI2EKUsedINneZTRCs
	 LopGjzRCkVqWpRQ0CbN2fPV4rsqVuQpHY0Ffy9rYHLvXCBFkuG5B/vvTdXgxvK4UPI
	 etuY0gJiQbGfq3SaF7Hv3qg7+UCzcHeiXNgXo+cCflCXTj6obh5jBI/4R0PSyIGi1Y
	 sbWfMN8EGpeKAkkPqY1sx2RFsBjiajCkkzpJjLox7C2i8Nps7z5q2OsofgfnwvRlOB
	 wkhzHd4TqO3XshZU7WHgj0D0fBgHTX0a2YK7Zsy258uFenTfvf0GV6X0ofSCVLHdW0
	 WfqTa+980GFFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wj3HfzNZGfXr; Fri, 23 Sep 2022 20:30:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 176CE842BC;
	Fri, 23 Sep 2022 20:30:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 176CE842BC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 10A891BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4613060F2D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4613060F2D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OtuPaUWOULTt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Sep 2022 20:28:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA44860F7B
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA44860F7B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 20:28:35 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id w10so1147955pll.11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Sep 2022 13:28:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date;
 bh=1MqQrxnQnbWg62GSxHH0OEF1q347X/m+4lnjB2flQT0=;
 b=NaAsZDuFnzTuJilJUiHR02Y9+4v06E3EjMPTo2suEIxqemdlHGACCR2Dwy946sIQ5O
 EOemX3BZ2soWbg+S94ubrYVUooWDM0fm02U9ysS3ZSPuzKQsAhddkB3QKYv+LmBOjpIp
 AxOCCfKffjTrfUYwcrnurutt/KfGD1xJ2ajOAhGQkITQ7All9r7/0ckvOQdM6HSnnIqM
 iMgPFstvFgnu4WqmJGPeLNnaDxHO3t5fntm4KY3MIpXC34qYESZdD5vziQA1bHv5QITP
 ixIZq47pFVUOBehL9DiJ0QarHGr6pU4FL1VPK/vDzHZbyOUNs1m8Pw4Q/21qyoaboEb9
 wzEw==
X-Gm-Message-State: ACrzQf0vICyh1anL8sItAWjudYAelRE3JBS6M8nG7drBK55IG4V0Q/jy
 lcx8nyPxjuPqV8zy2PH0AeFgug==
X-Google-Smtp-Source: AMsMyM6DPO4r131p/AkrnBJsIg/pPdpNgGZzqHysb3GkGzz8lYKLY18dMnHntypNM/af/tAornEd+g==
X-Received: by 2002:a17:90b:3e8d:b0:203:1b6d:2112 with SMTP id
 rj13-20020a17090b3e8d00b002031b6d2112mr23327438pjb.6.1663964915447; 
 Fri, 23 Sep 2022 13:28:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 g13-20020aa796ad000000b0053ae018a91esm7005618pfk.173.2022.09.23.13.28.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Sep 2022 13:28:32 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Vlastimil Babka <vbabka@suse.cz>
Date: Fri, 23 Sep 2022 13:28:18 -0700
Message-Id: <20220923202822.2667581-13-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923202822.2667581-1-keescook@chromium.org>
References: <20220923202822.2667581-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=845; h=from:subject;
 bh=p9b8wNdLQUTcKVpskeYovP9HfQefiLH6cTy/WYiH/34=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBjLhblaNBFxJTohammexHC6CbeJ0+h67dRN4PBtvwk
 5JonPTWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYy4W5QAKCRCJcvTf3G3AJv3zD/
 9LAMXluSBHTtqxb1umMTVE5i5sD3JCHrbpRq7+nm/ihvkEJ1pnKlLOmxomGKq8yeaSA69bZA8KfZSc
 CR5xfaDsFWx4j9MHisTXdoYIizPEmbqQRRqOxkcdkdBTXGB4/9y7dICzF8nG/wZnRE5cg43nOsJxA/
 hh08sM/Jc50zsKD8NK3U423EdCAh5Mur1N+IQdBrcIDvnYzrV9ox60ZBhTx1GxtTQH29f1M7tkTsxb
 CVJH0I7rS5lLvIDvLckMlcpX75U4M6OfFXPwwIxp8zwb/SpdErJg9OQ0Bc5aPbHKg5h0mzeyjxITo4
 Z8ePU5LP/HNZ40tbLl/4YQUWf9RwhgxmPxlaMerypnyhhY7RPOqjaEt4QjEp435c3lkzt/jPKVyQ00
 /BWZWjk3oYQBVD1YkNvQadr0W7iugWkFBmy0TMQKbpGlH/9UDUI6ZWX0cskd2A9Vm/9DXzxZlWfb5T
 46CEGwe6OTc72/fqVunf113g0JP/k16VF9IW4+cBz7fPkxp8MWBVHYsuByyGXMUPaQPem/RWWPBSdo
 m2SZX1ZgW/fXrsnRcDrhQ1bd8TrDPmojcGJefLK+ix//dr8fGR/Mmu8QlKJ5P4e96wfEoqQZTf9cys
 itlMdKLXQRmGqut8owpdZR9a0jlrGiYaoK47SOl258qhzKf6gWj/fY7i/IJw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
 bh=1MqQrxnQnbWg62GSxHH0OEF1q347X/m+4lnjB2flQT0=;
 b=Sm/M1aPSgGxkRY3LHKu9WT6VO0RigAcBGr0kTvvwRsO2yiPnlyPOycSqBm+Mx8oFi3
 bspsiUMbtKdtztOA4+TN8PPA5DxAgy5IBcQaq/1bn/CTLSI6xp/mM0sWTL+QnjiHRtQm
 hkYMCwfmO+zSjZYsUL+mFvQC8TlG50HBWaABQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=Sm/M1aPS
Subject: [Intel-wired-lan] [PATCH v2 12/16] devres: Use
 kmalloc_size_roundup() to match ksize() usage
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, llvm@lists.linux.dev,
 dri-devel@lists.freedesktop.org, "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, linaro-mm-sig@lists.linaro.org,
 Yonghong Song <yhs@fb.com>, David Sterba <dsterba@suse.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Alex Elder <elder@kernel.org>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Round up allocations with kmalloc_size_roundup() so that devres's use
of ksize() is always accurate and no special handling of the memory is
needed by KASAN, UBSAN_BOUNDS, nor FORTIFY_SOURCE.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/base/devres.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/base/devres.c b/drivers/base/devres.c
index 864d0b3f566e..7db20ce7ea8a 100644
--- a/drivers/base/devres.c
+++ b/drivers/base/devres.c
@@ -101,6 +101,9 @@ static bool check_dr_size(size_t size, size_t *tot_size)
 					size, tot_size)))
 		return false;
 
+	/* Actually allocate the full kmalloc bucket size. */
+	*tot_size = kmalloc_size_roundup(*tot_size);
+
 	return true;
 }
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
